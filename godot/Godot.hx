package godot;

#if macro
import haxe.macro.Context;
import haxe.macro.Compiler;
import sys.io.File;
import sys.FileSystem;

using StringTools;

class Godot {
	static function buildUserClass() {
		final cls = Context.getLocalClass().get();
		final classMetas = cls.meta;

		if (classMetas.has(":tool")) {
			classMetas.remove(":tool");
			classMetas.add(":meta", [macro "Godot.Tool"], cls.pos);
		}

		final fields = Context.getBuildFields();

		var onReady = null;
		final onReadyExprs = [];

		for (field in fields) {
			if (field.name == "_Ready") {
				onReady = field;
			}

			for (meta in field.meta) {
				switch (meta.name) {
					case ":export":
						meta.name = ":meta";
						meta.params = [macro "Godot.Export"].concat(meta.params);

					case ":onReady":
						if (meta.params.length == 1) {
							onReadyExprs.push(macro $i{field.name} = ${meta.params[0]});
						} else {
							Context.error("@:onReady metadata requires one expression as argument", meta.pos);
						}

					case ":onReadyNode":
						final type = switch (field.kind) {
							case FVar(type, _) if (type != null):
								type;

							default:
								Context.error("@:onReadyNode metadata only works on typed variables", meta.pos);
						};

						switch (meta.params) {
							case [{expr: EConst(CString(path))}]:
								onReadyExprs.push(macro $i{field.name} = cast(getNode($v{path}), $type));

							default:
								Context.error("@:onReadyNode metadata requires one argument of type String", meta.pos);
						}

					default:
				}
			}
		}

		if (onReadyExprs.length == 0) {
			return fields;
		}

		if (onReady != null) {
			switch (onReady.kind) {
				case FFun(f):
					f.expr = macro {
						$b{onReadyExprs}
						$e{f.expr}
					};

				default:
					Context.error("_Ready is not a function", onReady.pos);
			}
		} else {
			fields.push({
				name: "_Ready",
				pos: Context.currentPos(),
				access: [AOverride],
				kind: FFun({
					expr: macro $b{onReadyExprs},
					args: [],
				})
			});
		}

		return fields;
	}

	static function recFind(path:String, ext:String, handler:(path:String)->Void) {
		for (entry in FileSystem.readDirectory(path)) {
			final path = path + "/" + entry;

			if (FileSystem.isDirectory(path)) {
				recFind(path, ext, handler);
			} else if (entry.endsWith('.$ext')) {
				handler(path);
			}
		}
	}

	static function listScripts(filename:String):Array<String> {
		final scripts = [];
		final ext = '[ext_resource path="res://${Compiler.getOutput()}/src/';

		for (line in File.getContent(filename).split("\n")) {
			if (line.startsWith(ext)) {
				scripts.push(line.substring(ext.length, line.indexOf('.cs" type="Script" id=')));
			}
		}

		return scripts;
	}

	static function buildProject() {
		final scripts = new Map<String, Bool>();
		recFind(".", "tscn", path -> for (script in listScripts(path)) scripts.set(script, true));

		for (script => _ in scripts) {
			Context.getType(script);
		}

		Context.onAfterTyping(types -> {
			for (type in types) {
				switch (type) {
					case TClassDecl(_.get() => c):
						final name = c.pack.join(".") + (c.pack.length > 0 ? "." : "") + c.name;

						if (scripts.exists(name)) {
							c.meta.add(":keep", [], Context.currentPos());
							c.meta.add(":nativeGen", [], Context.currentPos());
						}

					default:
				}
			}
		});
	}
}
#end
