// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Applies `godot.VisualShaderNodeColorOp.operator` to two color inputs.
**/
@:libType
@:csNative
@:native("Godot.VisualShaderNodeColorOp")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualShaderNodeColorOp extends godot.VisualShaderNode {
	/**		
		An operator to be applied to the inputs. See `godot.VisualShaderNodeColorOp_OperatorEnum` for options.
	**/
	@:native("Operator")
	public var operator_:godot.VisualShaderNodeColorOp_OperatorEnum;

	@:native("new")
	public function new():Void;

	@:native("SetOperator")
	public function setOperator(op:godot.VisualShaderNodeColorOp_OperatorEnum):Void;

	@:native("GetOperator")
	public function getOperator():godot.VisualShaderNodeColorOp_OperatorEnum;
}
