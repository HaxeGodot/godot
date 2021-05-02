package godot;

#if macro
import haxe.macro.Context;
import haxe.macro.Expr;
import sys.io.File;

using StringTools;
#end

/**
	The list of actions defined in the project settings.

	To be used with:

	* `Input.isActionPressed`
	* `Input.isActionJustPressed`
	* `Input.isActionJustReleased`
	* `Input.getActionStrength`
	* `Input.actionPress`
	* `Input.actionRelease`

	Note: these functions can still take a string argument.
**/
#if (!macro && !doc_gen)
@:build(godot.Action.ActionBuilder.build())
#end
enum abstract Action(String) from String to String {}

#if macro
class ActionBuilder {
	static function build():Array<Field> {
		final file = "project.godot";
		Context.registerModuleDependency("godot.Action", file);

		return readInputs(file).map(input -> {
			name: input.replace(" ", "_"),
			doc: null,
			access: [],
			kind: FVar(null, macro $v{input}),
			pos: Context.currentPos(),
			meta: null,
		});
	}

	static function readInputs(file:String):Array<String> {
		var category = null;
		var inInput = false;
		var inputs = [];

		for (line in File.getContent(file).split("\n")) {
			if (line.startsWith("[")) {
				category = line.substring(1, line.length - 1);
				continue;
			}

			if (category == "input" && line.length != 0) {
				if (!inInput) {
					inputs.push(line.substring(0, line.length - 2));
					inInput = true;
				} else if (line == "}") {
					inInput = false;
				}
			}
		}

		return inputs;
	}
}
#end
