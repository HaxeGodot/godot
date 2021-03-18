// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A visual shader node able to perform different functions using vectors.
**/
@:libType
@:csNative
@:native("Godot.VisualShaderNodeVectorFunc")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualShaderNodeVectorFunc extends godot.VisualShaderNode {
	/**		
		The function to be performed. See `godot.VisualShaderNodeVectorFunc_FunctionEnum` for options.
	**/
	@:native("Function")
	public var function_:godot.VisualShaderNodeVectorFunc_FunctionEnum;

	@:native("new")
	public function new():Void;

	@:native("SetFunction")
	public function setFunction(func:godot.VisualShaderNodeVectorFunc_FunctionEnum):Void;

	@:native("GetFunction")
	public function getFunction():godot.VisualShaderNodeVectorFunc_FunctionEnum;
}
