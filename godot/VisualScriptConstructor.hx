// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A Visual Script node which calls a base type constructor. It can be used for type conversion as well.
**/
@:libType
@:csNative
@:native("Godot.VisualScriptConstructor")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualScriptConstructor extends godot.VisualScriptNode {
	@:native("Constructor")
	public var constructor:godot.collections.Dictionary;

	@:native("Type")
	public var type:godot.Variant_Type;

	@:native("new")
	public function new():Void;

	@:native("SetConstructorType")
	public function setConstructorType(type:godot.Variant_Type):Void;

	@:native("GetConstructorType")
	public function getConstructorType():godot.Variant_Type;

	@:native("SetConstructor")
	public function setConstructor(constructor:godot.collections.Dictionary):Void;

	@:native("GetConstructor")
	public function getConstructor():godot.collections.Dictionary;
}
