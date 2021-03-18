// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A multiplication operation on a transform (4x4 matrix) and a vector, with support for different multiplication operators.
**/
@:libType
@:csNative
@:native("Godot.VisualShaderNodeTransformVecMult")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualShaderNodeTransformVecMult extends godot.VisualShaderNode {
	/**		
		The multiplication type to be performed. See `godot.VisualShaderNodeTransformVecMult_OperatorEnum` for options.
	**/
	@:native("Operator")
	public var operator_:godot.VisualShaderNodeTransformVecMult_OperatorEnum;

	@:native("new")
	public function new():Void;

	@:native("SetOperator")
	public function setOperator(op:godot.VisualShaderNodeTransformVecMult_OperatorEnum):Void;

	@:native("GetOperator")
	public function getOperator():godot.VisualShaderNodeTransformVecMult_OperatorEnum;
}
