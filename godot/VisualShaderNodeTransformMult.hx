// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A multiplication operation on two transforms (4x4 matrices), with support for different multiplication operators.
**/
@:libType
@:csNative
@:native("Godot.VisualShaderNodeTransformMult")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualShaderNodeTransformMult extends godot.VisualShaderNode {
	/**		
		The multiplication type to be performed on the transforms. See `godot.VisualShaderNodeTransformMult_OperatorEnum` for options.
	**/
	@:native("Operator")
	public var operator_:godot.VisualShaderNodeTransformMult_OperatorEnum;

	@:native("new")
	public function new():Void;

	@:native("SetOperator")
	public function setOperator(op:godot.VisualShaderNodeTransformMult_OperatorEnum):Void;

	@:native("GetOperator")
	public function getOperator():godot.VisualShaderNodeTransformMult_OperatorEnum;
}
