// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.ProxyTexture")
@:autoBuild(godot.Godot.buildUserClass())
extern class ProxyTexture extends godot.Texture {
	@:native("Base")
	public var base:godot.Texture;

	@:native("new")
	public function new():Void;

	@:native("SetBase")
	public function setBase(base:godot.Texture):Void;

	@:native("GetBase")
	public function getBase():godot.Texture;
}
