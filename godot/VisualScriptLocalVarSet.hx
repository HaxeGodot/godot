// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Changes a local variable's value to the given input. The new value is also provided on an output Data port.

Input Ports:

- Sequence

- Data (variant): `set`

Output Ports:

- Sequence

- Data (variant): `get`
**/
@:libType
@:csNative
@:native("Godot.VisualScriptLocalVarSet")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualScriptLocalVarSet extends godot.VisualScriptNode {
	/**		
		The local variable's type.
	**/
	@:native("Type")
	public var type:godot.Variant_Type;

	/**		
		The local variable's name.
	**/
	@:native("VarName")
	public var varName:std.String;

	@:native("new")
	public function new():Void;

	@:native("SetVarName")
	public function setVarName(name:std.String):Void;

	@:native("GetVarName")
	public function getVarName():std.String;

	@:native("SetVarType")
	public function setVarType(type:godot.Variant_Type):Void;

	@:native("GetVarType")
	public function getVarType():godot.Variant_Type;
}
