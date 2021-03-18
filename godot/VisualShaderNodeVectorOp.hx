// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A visual shader node for use of vector operators. Operates on vector `a` and vector `b`.
**/
@:libType
@:csNative
@:native("Godot.VisualShaderNodeVectorOp")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualShaderNodeVectorOp extends godot.VisualShaderNode {
	/**		
		The operator to be used. See `godot.VisualShaderNodeVectorOp_OperatorEnum` for options.
	**/
	@:native("Operator")
	public var operator_:godot.VisualShaderNodeVectorOp_OperatorEnum;

	@:native("new")
	public function new():Void;

	@:native("SetOperator")
	public function setOperator(op:godot.VisualShaderNodeVectorOp_OperatorEnum):Void;

	@:native("GetOperator")
	public function getOperator():godot.VisualShaderNodeVectorOp_OperatorEnum;
}
