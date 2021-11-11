// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This node returns a constant from a given class, such as `TYPE_INT`. See the given class' documentation for available constants.

Input Ports:

none

Output Ports:

- Data (variant): `value`
**/
@:libType
@:csNative
@:native("Godot.VisualScriptClassConstant")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualScriptClassConstant extends godot.VisualScriptNode {
	/**		
		The constant to return. See the given class for its available constants.
	**/
	@:native("Constant")
	public var constant:std.String;

	/**		
		The constant's parent class.
	**/
	@:native("BaseType")
	public var baseType:std.String;

	@:native("new")
	public function new():Void;

	@:native("SetClassConstant")
	public function setClassConstant(name:std.String):Void;

	@:native("GetClassConstant")
	public function getClassConstant():std.String;

	@:native("SetBaseType")
	public function setBaseType(name:std.String):Void;

	@:native("GetBaseType")
	public function getBaseType():std.String;
}
