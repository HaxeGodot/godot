// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
`godot.VisualScriptPropertyGet` can return a value of any property from the current object or other objects.
**/
@:libType
@:csNative
@:native("Godot.VisualScriptPropertyGet")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualScriptPropertyGet extends godot.VisualScriptNode {
	/**		
		The indexed name of the property to retrieve. See `godot.Object.getIndexed` for details.
	**/
	@:native("Index")
	public var index:std.String;

	/**		
		The name of the property to retrieve. Changing this will clear `godot.VisualScriptPropertyGet.index`.
	**/
	@:native("Property")
	public var property:std.String;

	/**		
		The node path to use when `godot.VisualScriptPropertyGet.setMode` is set to `godot.VisualScriptPropertyGet_CallMode.nodePath`.
	**/
	@:native("NodePath")
	public var nodePath:godot.NodePath;

	/**		
		The type to be used when `godot.VisualScriptPropertyGet.setMode` is set to `godot.VisualScriptPropertyGet_CallMode.basicType`.
	**/
	@:native("BasicType")
	public var basicType:godot.Variant_Type;

	@:native("TypeCache")
	public var typeCache:godot.Variant_Type;

	/**		
		The script to be used when `godot.VisualScriptPropertyGet.setMode` is set to `godot.VisualScriptPropertyGet_CallMode.instance`.
	**/
	@:native("BaseScript")
	public var baseScript:std.String;

	/**		
		The base type to be used when `godot.VisualScriptPropertyGet.setMode` is set to `godot.VisualScriptPropertyGet_CallMode.instance`.
	**/
	@:native("BaseType")
	public var baseType:std.String;

	/**		
		`set_mode` determines the target object from which the property will be retrieved. See `godot.VisualScriptPropertyGet_CallMode` for options.
	**/
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
