// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Chooses between two input values based on a Boolean condition.

Input Ports:

- Data (boolean): `cond`

- Data (variant): `a`

- Data (variant): `b`

Output Ports:

- Data (variant): `out`
**/
@:libType
@:csNative
@:native("Godot.VisualScriptSelect")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualScriptSelect extends godot.VisualScriptNode {
	/**		
		The input variables' type.
	**/
	@:native("Type")
	public var type:godot.Variant_Type;

	@:native("new")
	public function new():Void;

	@:native("SetTyped")
	public function setTyped(type:godot.Variant_Type):Void;

	@:native("GetTyped")
	public function getTyped():godot.Variant_Type;
}
