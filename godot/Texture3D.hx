// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Texture3D is a 3-dimensional texture that has a width, height, and depth.
**/
@:libType
@:csNative
@:native("Godot.Texture3D")
@:autoBuild(godot.Godot.buildUserClass())
extern class Texture3D extends godot.TextureLayered {
	@:native("new")
	public function new():Void;

	#if doc_gen
	/**		
		Creates the Texture3D with specified `width`, `height`, and `depth`. See `godot.Image_Format` for `format` options. See `godot.TextureLayered_FlagsEnum` enumerator for `flags` options.
	**/
	@:native("Create")
	public function create(width:UInt, height:UInt, depth:UInt, format:godot.Image_Format, ?flags:UInt):Void;
	#else
	/**		
		Creates the Texture3D with specified `width`, `height`, and `depth`. See `godot.Image_Format` for `format` options. See `godot.TextureLayered_FlagsEnum` enumerator for `flags` options.
	**/
	@:native("Create")
	public overload function create(width:UInt, height:UInt, depth:UInt, format:godot.Image_Format):Void;

	/**		
		Creates the Texture3D with specified `width`, `height`, and `depth`. See `godot.Image_Format` for `format` options. See `godot.TextureLayered_FlagsEnum` enumerator for `flags` options.
	**/
	@:native("Create")
	public overload function create(width:UInt, height:UInt, depth:UInt, format:godot.Image_Format, flags:UInt):Void;
	#end
}
