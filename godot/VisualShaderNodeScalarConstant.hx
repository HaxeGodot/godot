// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.VisualShaderNodeScalarConstant")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualShaderNodeScalarConstant extends godot.VisualShaderNode {
	@:native("Constant")
	public var constant:Single;

	@:native("new")
	public function new():Void;

	@:native("SetConstant")
	public function setConstant(value:Single):Void;

	@:native("GetConstant")
	public function getConstant():Single;
}
