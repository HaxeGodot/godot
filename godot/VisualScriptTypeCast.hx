// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.VisualScriptTypeCast")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualScriptTypeCast extends godot.VisualScriptNode {
	@:native("BaseScript")
	public var baseScript:std.String;

	@:native("BaseType")
	public var baseType:std.String;

	@:native("new")
	public function new():Void;

	@:native("SetBaseType")
	public function setBaseType(type:std.String):Void;

	@:native("GetBaseType")
	public function getBaseType():std.String;

	@:native("SetBaseScript")
	public function setBaseScript(path:std.String):Void;

	@:native("GetBaseScript")
	public function getBaseScript():std.String;
}
