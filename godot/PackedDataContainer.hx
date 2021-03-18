// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.PackedDataContainer")
@:autoBuild(godot.Godot.buildUserClass())
extern class PackedDataContainer extends godot.Resource {
	@:native("__Data___")
	public var __Data___:cs.NativeArray<cs.types.UInt8>;

	@:native("new")
	public function new():Void;

	@:native("Pack")
	public function pack(value:Dynamic):godot.Error;

	@:native("Size")
	public function size():Int;
}
