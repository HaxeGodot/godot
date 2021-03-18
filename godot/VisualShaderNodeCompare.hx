// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Compares `a` and `b` of `godot.VisualShaderNodeCompare.type` by `godot.VisualShaderNodeCompare.function`. Returns a boolean scalar. Translates to `if` instruction in shader code.
**/
@:libType
@:csNative
@:native("Godot.VisualShaderNodeCompare")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualShaderNodeCompare extends godot.VisualShaderNode {
	/**		
		Extra condition which is applied if `godot.VisualShaderNodeCompare.type` is set to .
	**/
	@:native("Condition")
	public var condition:godot.VisualShaderNodeCompare_ConditionEnum;

	/**		
		A comparison function. See `godot.VisualShaderNodeCompare_FunctionEnum` for options.
	**/
	@:native("Function")
	public var function_:godot.VisualShaderNodeCompare_FunctionEnum;

	/**		
		The type to be used in the comparison. See `godot.VisualShaderNodeCompare_ComparisonType` for options.
	**/
	@:native("Type")
	public var type:godot.VisualShaderNodeCompare_ComparisonType;

	@:native("new")
	public function new():Void;

	@:native("SetComparisonType")
	public function setComparisonType(type:godot.VisualShaderNodeCompare_ComparisonType):Void;

	@:native("GetComparisonType")
	public function getComparisonType():godot.VisualShaderNodeCompare_ComparisonType;

	@:native("SetFunction")
	public function setFunction(func:godot.VisualShaderNodeCompare_FunctionEnum):Void;

	@:native("GetFunction")
	public function getFunction():godot.VisualShaderNodeCompare_FunctionEnum;

	@:native("SetCondition")
	public function setCondition(condition:godot.VisualShaderNodeCompare_ConditionEnum):Void;

	@:native("GetCondition")
	public function getCondition():godot.VisualShaderNodeCompare_ConditionEnum;
}
