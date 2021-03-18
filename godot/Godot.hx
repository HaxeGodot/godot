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

		for (field in fields) {
			for (meta in field.meta) {
				if (meta.name == ":export") {
					meta.name = ":meta";
					meta.params = [macro "Godot.Export"];
				}
			}
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
