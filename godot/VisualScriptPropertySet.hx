// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.VisualScriptPropertySet")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualScriptPropertySet extends godot.VisualScriptNode {
	@:native("AssignOp")
	public var assignOp:godot.VisualScriptPropertySet_AssignOpEnum;

	@:native("Index")
	public var index:std.String;

	@:native("Property")
	public var property:std.String;

	@:native("NodePath")
	public var nodePath:godot.NodePath;

	@:native("BasicType")
	public var basicType:godot.Variant_Type;

	@:native("TypeCache")
	public var typeCache:godot.collections.Dictionary;

	@:native("BaseScript")
	public var baseScript:std.String;

	@:native("BaseType")
	public var baseType:std.String;

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
