// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
`godot.TextureArray`s store an array of images in a single `godot.Texture` primitive. Each layer of the texture array has its own mipmap chain. This makes it is a good alternative to texture atlases.
**/
@:libType
@:csNative
@:native("Godot.TextureArray")
@:autoBuild(godot.Godot.buildUserClass())
extern class TextureArray extends godot.TextureLayered {
	@:native("new")
	public function new():Void;
}
