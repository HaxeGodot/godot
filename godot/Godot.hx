package godot;

#if macro
import haxe.macro.Context;
import haxe.macro.Compiler;
import sys.io.File;
import sys.FileSystem;

using StringTools;

class Godot {
	static function buildUserClass() {
		final fields = Context.getBuildFields();
		final onReadyNodes = [];
		var onReady = null;

		for (field in fields) {
			if (field.name == "_Ready") {
				onReady = field;
			}

			for (meta in field.meta) {
				switch (meta.name) {
					case ":export":
						meta.name = ":meta";
						meta.params = [macro "Godot.Export"].concat(meta.params);

					case ":onReadyNode":
						final type = switch (field.kind) {
							case FVar(type, _) if (type != null):
								type;

							default:
								Context.error("@:onReadyNode metadata only works on typed variables", meta.pos);
						};

						switch (meta.params) {
							case [{expr: EConst(CString(path))}]:
								onReadyNodes.push({
									name: field.name,
									path: path,
									type: type,
								});

							default:
								Context.error("@:onReadyNode metadata requires one argument of type String", meta.pos);
						}

					default:
				}
			}
		}

		if (onReadyNodes.length == 0) {
			return fields;
		}

		final onReadyNodesExpr = onReadyNodes.map(node -> {
			final type = node.type;
			return macro $i{node.name} = cast(getNode($v{node.path}), $type);
		});

		if (onReady != null) {
			switch (onReady.kind) {
				case FFun(f):
					f.expr = macro {
						$b{onReadyNodesExpr}
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
					expr: macro $b{onReadyNodesExpr},
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
