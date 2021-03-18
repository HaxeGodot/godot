// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.VisualShaderNodeScalarFunc")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualShaderNodeScalarFunc extends godot.VisualShaderNode {
	@:native("Function")
	public var function_:godot.VisualShaderNodeScalarFunc_FunctionEnum;

	@:native("new")
	public function new():Void;

	@:native("SetFunction")
	public function setFunction(func:godot.VisualShaderNodeScalarFunc_FunctionEnum):Void;

	@:native("GetFunction")
	public function getFunction():godot.VisualShaderNodeScalarFunc_FunctionEnum;
}
