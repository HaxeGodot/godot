// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.VisualScriptPropertyGet")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualScriptPropertyGet extends godot.VisualScriptNode {
	@:native("Index")
	public var index:std.String;

	@:native("Property")
	public var property:std.String;

	@:native("NodePath")
	public var nodePath:godot.NodePath;

	@:native("BasicType")
	public var basicType:godot.Variant_Type;

	@:native("TypeCache")
	public var typeCache:godot.Variant_Type;

	@:native("BaseScript")
	public var baseScript:std.String;

	@:native("BaseType")
	public var baseType:std.String;

	@:native("SetMode")
	public var setMode:godot.VisualScriptPropertyGet_CallMode;

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
	public function setCallMode(mode:godot.VisualScriptPropertyGet_CallMode):Void;

	@:native("GetCallMode")
	public function getCallMode():godot.VisualScriptPropertyGet_CallMode;

	@:native("SetBasePath")
	public function setBasePath(basePath:godot.NodePath):Void;

	@:native("GetBasePath")
	public function getBasePath():godot.NodePath;

	@:native("SetIndex")
	public function setIndex(index:std.String):Void;

	@:native("GetIndex")
	public function getIndex():std.String;
}
