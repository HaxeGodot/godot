// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Input Ports:

- Data (variant): `A`

- Data (variant): `B`

Output Ports:

- Data (variant): `result`
**/
@:libType
@:csNative
@:native("Godot.VisualScriptOperator")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualScriptOperator extends godot.VisualScriptNode {
	/**		
		The type of the values for this operation. See `godot.Variant_Type` for available options.
	**/
	@:native("Type")
	public var type:godot.Variant_Type;

	/**		
		The operation to be performed. See `godot.Variant_Operator` for available options.
	**/
	@:native("Operator")
	public var operator_:godot.Variant_Operator;

	@:native("new")
	public function new():Void;

	@:native("SetOperator")
	public function setOperator(op:godot.Variant_Operator):Void;

	@:native("GetOperator")
	public function getOperator():godot.Variant_Operator;

	@:native("SetTyped")
	public function setTyped(type:godot.Variant_Type):Void;

	@:native("GetTyped")
	public function getTyped():godot.Variant_Type;
}
