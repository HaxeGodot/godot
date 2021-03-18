// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This node is only available in `Fragment` and `Light` visual shaders.
**/
@:libType
@:csNative
@:native("Godot.VisualShaderNodeScalarDerivativeFunc")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualShaderNodeScalarDerivativeFunc extends godot.VisualShaderNode {
	/**		
		The derivative type. See `godot.VisualShaderNodeScalarDerivativeFunc_FunctionEnum` for options.
	**/
	@:native("Function")
	public var function_:godot.VisualShaderNodeScalarDerivativeFunc_FunctionEnum;

	@:native("new")
	public function new():Void;

	@:native("SetFunction")
	public function setFunction(func:godot.VisualShaderNodeScalarDerivativeFunc_FunctionEnum):Void;

	@:native("GetFunction")
	public function getFunction():godot.VisualShaderNodeScalarDerivativeFunc_FunctionEnum;
}
