// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
`godot.VisualScriptPropertySet` can set the value of any property from the current object or other objects.
**/
@:libType
@:csNative
@:native("Godot.VisualScriptPropertySet")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualScriptPropertySet extends godot.VisualScriptNode {
	/**		
		The additional operation to perform when assigning. See `godot.VisualScriptPropertySet_AssignOpEnum` for options.
	**/
	@:native("AssignOp")
	public var assignOp:godot.VisualScriptPropertySet_AssignOpEnum;

	/**		
		The indexed name of the property to set. See `godot.Object.setIndexed` for details.
	**/
	@:native("Index")
	public var index:std.String;

	/**		
		The name of the property to set. Changing this will clear `godot.VisualScriptPropertySet.index`.
	**/
	@:native("Property")
	public var property:std.String;

	/**		
		The node path to use when `godot.VisualScriptPropertySet.setMode` is set to `godot.VisualScriptPropertySet_CallMode.nodePath`.
	**/
	@:native("NodePath")
	public var nodePath:godot.NodePath;

	/**		
		The type to be used when `godot.VisualScriptPropertySet.setMode` is set to `godot.VisualScriptPropertySet_CallMode.basicType`.
	**/
	@:native("BasicType")
	public var basicType:godot.Variant_Type;

	@:native("TypeCache")
	public var typeCache:godot.collections.Dictionary;

	/**		
		The script to be used when `godot.VisualScriptPropertySet.setMode` is set to `godot.VisualScriptPropertySet_CallMode.instance`.
	**/
	@:native("BaseScript")
	public var baseScript:std.String;

	/**		
		The base type to be used when `godot.VisualScriptPropertySet.setMode` is set to `godot.VisualScriptPropertySet_CallMode.instance`.
	**/
	@:native("BaseType")
	public var baseType:std.String;

	/**		
		`set_mode` determines the target object on which the property will be set. See `godot.VisualScriptPropertySet_CallMode` for options.
	**/
	@:native("SetMode")
	public var setMode:godot.VisualScriptPropertySet_CallMode;

	@:native("new")
	public function new():Void;

	@:native("SetBaseType")
	public function setBaseType(baseType:std.String):Void;

	@:native("GetBaseType")
	public function getBaseType():std.String;

	@:native("SetBaseScript")
	public function setBaseScript(baseScript:std.String):Void;

	@:native("GetBaseScript")
	public function getBaseScript():std.String;

	@:native("SetBasicType")
	public function setBasicType(basicType:godot.Variant_Type):Void;

	@:native("GetBasicType")
	public function getBasicType():godot.Variant_Type;

	@:native("SetProperty")
	public function setProperty(property:std.String):Void;

	@:native("GetProperty")
	public function getProperty():std.String;

	@:native("SetCallMode")
	public function setCallMode(mode:godot.VisualScriptPropertySet_CallMode):Void;

	@:native("GetCallMode")
	public function getCallMode():godot.VisualScriptPropertySet_CallMode;

	@:native("SetBasePath")
	public function setBasePath(basePath:godot.NodePath):Void;

	@:native("GetBasePath")
	public function getBasePath():godot.NodePath;

	@:native("SetIndex")
	public function setIndex(index:std.String):Void;

	@:native("GetIndex")
	public function getIndex():std.String;

	@:native("SetAssignOp")
	public function setAssignOp(assignOp:godot.VisualScriptPropertySet_AssignOpEnum):Void;

	@:native("GetAssignOp")
	public function getAssignOp():godot.VisualScriptPropertySet_AssignOpEnum;
}
