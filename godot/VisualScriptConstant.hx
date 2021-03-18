// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This node returns a constant's value.

Input Ports:

none

Output Ports:

- Data (variant): `get`
**/
@:libType
@:csNative
@:native("Godot.VisualScriptConstant")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualScriptConstant extends godot.VisualScriptNode {
	/**		
		The constant's value.
	**/
	@:native("Value")
	public var value:Dynamic;

	/**		
		The constant's type.
	**/
	@:native("Type")
	public var type:godot.Variant_Type;

	@:native("new")
	public function new():Void;

	@:native("SetConstantType")
	public function setConstantType(type:godot.Variant_Type):Void;

	@:native("GetConstantType")
	public function getConstantType():godot.Variant_Type;

	@:native("SetConstantValue")
	public function setConstantValue(value:Dynamic):Void;

	@:native("GetConstantValue")
	public function getConstantValue():Dynamic;
}
