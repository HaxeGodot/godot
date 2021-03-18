// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A Visual Script node returning a singleton from `@GlobalScope`.
**/
@:libType
@:csNative
@:native("Godot.VisualScriptEngineSingleton")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualScriptEngineSingleton extends godot.VisualScriptNode {
	/**		
		The singleton's name.
	**/
	@:native("Constant")
	public var constant:std.String;

	@:native("new")
	public function new():Void;

	@:native("SetSingleton")
	public function setSingleton(name:std.String):Void;

	@:native("GetSingleton")
	public function getSingleton():std.String;
}
