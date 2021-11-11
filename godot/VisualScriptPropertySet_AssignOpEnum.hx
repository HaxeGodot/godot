// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.VisualScriptPropertySet.AssignOpEnum")
@:csNative
extern enum VisualScriptPropertySet_AssignOpEnum {
	/**		
		The property will be assigned regularly.
	**/
	None;

	/**		
		The value will be added to the property. Equivalent of doing `+=`.
	**/
	Add;

	/**		
		The value will be subtracted from the property. Equivalent of doing `-=`.
	**/
	Sub;

	/**		
		The property will be multiplied by the value. Equivalent of doing `*=`.
	**/
	Mul;

	/**		
		The property will be divided by the value. Equivalent of doing `/=`.
	**/
	Div;

	/**		
		A modulo operation will be performed on the property and the value. Equivalent of doing `%=`.
	**/
	Mod;

	/**		
		The property will be binarly shifted to the left by the given value. Equivalent of doing `&lt;&lt;`.
	**/
	ShiftLeft;

	/**		
		The property will be binarly shifted to the right by the given value. Equivalent of doing `&gt;&gt;`.
	**/
	ShiftRight;

	/**		
		A binary `AND` operation will be performed on the property. Equivalent of doing `&amp;=`.
	**/
	BitAnd;

	/**		
		A binary `OR` operation will be performed on the property. Equivalent of doing `|=`.
	**/
	BitOr;

	/**		
		A binary `XOR` operation will be performed on the property. Equivalent of doing `^=`.
	**/
	BitXor;
}
