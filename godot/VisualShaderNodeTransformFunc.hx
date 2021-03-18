// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Computes an inverse or transpose function on the provided `godot.Transform`.
**/
@:libType
@:csNative
@:native("Godot.VisualShaderNodeTransformFunc")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualShaderNodeTransformFunc extends godot.VisualShaderNode {
	/**		
		The function to be computed. See `godot.VisualShaderNodeTransformFunc_FunctionEnum` for options.
	**/
	@:native("Function")
	public var function_:godot.VisualShaderNodeTransformFunc_FunctionEnum;

	@:native("new")
	public function new():Void;

	@:native("SetFunction")
	public function setFunction(func:godot.VisualShaderNodeTransformFunc_FunctionEnum):Void;

	@:native("GetFunction")
	public function getFunction():godot.VisualShaderNodeTransformFunc_FunctionEnum;
}
