// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This node is only available in `Fragment` and `Light` visual shaders.
**/
@:libType
@:csNative
@:native("Godot.VisualShaderNodeVectorDerivativeFunc")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualShaderNodeVectorDerivativeFunc extends godot.VisualShaderNode {
	/**		
		A derivative type. See `godot.VisualShaderNodeVectorDerivativeFunc_FunctionEnum` for options.
	**/
	@:native("Function")
	public var function_:godot.VisualShaderNodeVectorDerivativeFunc_FunctionEnum;

	@:native("new")
	public function new():Void;

	@:native("SetFunction")
	public function setFunction(func:godot.VisualShaderNodeVectorDerivativeFunc_FunctionEnum):Void;

	@:native("GetFunction")
	public function getFunction():godot.VisualShaderNodeVectorDerivativeFunc_FunctionEnum;
}
