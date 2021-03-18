// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A Visual Script node representing a constant from base types, such as .
**/
@:libType
@:csNative
@:native("Godot.VisualScriptBasicTypeConstant")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualScriptBasicTypeConstant extends godot.VisualScriptNode {
	/**		
		The name of the constant to return.
	**/
	@:native("Constant")
	public var constant:std.String;

	/**		
		The type to get the constant from.
	**/
	@:native("BasicType")
	public var basicType:godot.Variant_Type;

	@:native("new")
	public function new():Void;

	@:native("SetBasicType")
	public function setBasicType(name:godot.Variant_Type):Void;

	@:native("GetBasicType")
	public function getBasicType():godot.Variant_Type;

	@:native("SetBasicTypeConstant")
	public function setBasicTypeConstant(name:std.String):Void;

	@:native("GetBasicTypeConstant")
	public function getBasicTypeConstant():std.String;
}
