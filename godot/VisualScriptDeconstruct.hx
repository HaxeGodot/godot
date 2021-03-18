// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A Visual Script node which deconstructs a base type instance into its parts.
**/
@:libType
@:csNative
@:native("Godot.VisualScriptDeconstruct")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualScriptDeconstruct extends godot.VisualScriptNode {
	@:native("ElemCache")
	public var elemCache:godot.collections.Array;

	/**		
		The type to deconstruct.
	**/
	@:native("Type")
	public var type:godot.Variant_Type;

	@:native("new")
	public function new():Void;

	@:native("SetDeconstructType")
	public function setDeconstructType(type:godot.Variant_Type):Void;

	@:native("GetDeconstructType")
	public function getDeconstructType():godot.Variant_Type;
}
