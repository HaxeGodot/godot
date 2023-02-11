// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Texture3D is a 3-dimensional `godot.Texture` that has a width, height, and depth. See also `godot.TextureArray`.

Note: `godot.Texture3D`s can only be sampled in shaders in the GLES3 backend. In GLES2, their data can be accessed via scripting, but there is no way to render them in a hardware-accelerated manner.
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
