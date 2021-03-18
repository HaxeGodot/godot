// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Accept a `godot.Color` to the input port and transform it according to `godot.VisualShaderNodeColorFunc.function`.
**/
@:libType
@:csNative
@:native("Godot.VisualShaderNodeColorFunc")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualShaderNodeColorFunc extends godot.VisualShaderNode {
	/**		
		A function to be applied to the input color. See `godot.VisualShaderNodeColorFunc_FunctionEnum` for options.
	**/
	@:native("Function")
	public var function_:godot.VisualShaderNodeColorFunc_FunctionEnum;

	@:native("new")
	public function new():Void;

	@:native("SetFunction")
	public function setFunction(func:godot.VisualShaderNodeColorFunc_FunctionEnum):Void;

	@:native("GetFunction")
	public function getFunction():godot.VisualShaderNodeColorFunc_FunctionEnum;
}
