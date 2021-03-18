// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Returns a local variable's value. "Var Name" must be supplied, with an optional type.

Input Ports:

none

Output Ports:

- Data (variant): `get`
**/
@:libType
@:csNative
@:native("Godot.VisualScriptLocalVar")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualScriptLocalVar extends godot.VisualScriptNode {
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
