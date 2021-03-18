// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.VisualScriptGlobalConstant")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualScriptGlobalConstant extends godot.VisualScriptNode {
	@:native("Constant")
	public var constant:Int;

	@:native("new")
	public function new():Void;

	@:native("SetGlobalConstant")
	public function setGlobalConstant(index:Int):Void;

	@:native("GetGlobalConstant")
	public function getGlobalConstant():Int;
}
