// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Returns the boolean result of the comparison between `INF` or `NaN` and a scalar parameter.
**/
@:libType
@:csNative
@:native("Godot.VisualShaderNodeIs")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualShaderNodeIs extends godot.VisualShaderNode {
	/**		
		The comparison function. See `godot.VisualShaderNodeIs_FunctionEnum` for options.
	**/
	@:native("Function")
	public var function_:godot.VisualShaderNodeIs_FunctionEnum;

	@:native("new")
	public function new():Void;

	@:native("SetFunction")
	public function setFunction(func:godot.VisualShaderNodeIs_FunctionEnum):Void;

	@:native("GetFunction")
	public function getFunction():godot.VisualShaderNodeIs_FunctionEnum;
}
