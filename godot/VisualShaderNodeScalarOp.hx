// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.VisualShaderNodeScalarOp")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualShaderNodeScalarOp extends godot.VisualShaderNode {
	@:native("Operator")
	public var operator_:godot.VisualShaderNodeScalarOp_OperatorEnum;

	@:native("new")
	public function new():Void;

	@:native("SetOperator")
	public function setOperator(op:godot.VisualShaderNodeScalarOp_OperatorEnum):Void;

	@:native("GetOperator")
	public function getOperator():godot.VisualShaderNodeScalarOp_OperatorEnum;
}
