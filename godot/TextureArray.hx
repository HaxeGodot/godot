// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
`godot.TextureArray`s store an array of `godot.Image`s in a single `godot.Texture` primitive. Each layer of the texture array has its own mipmap chain. This makes it is a good alternative to texture atlases. See also `godot.Texture3D`.

`godot.TextureArray`s must be displayed using shaders. After importing your file as a `godot.TextureArray` and setting the appropriate Horizontal and Vertical Slices, display it by setting it as a uniform to a shader, for example (2D):

```

shader_type canvas_item;

uniform sampler2DArray tex;
uniform int index;

void fragment() {
COLOR = texture(tex, vec3(UV.x, UV.y, float(index)));
}

```

Set the integer uniform "index" to show a particular part of the texture as defined by the Horizontal and Vertical Slices in the importer.

Note: When sampling an albedo texture from a texture array in 3D, the sRGB -&gt; linear conversion hint (`hint_albedo`) should be used to prevent colors from looking washed out:

```

shader_type spatial;

uniform sampler2DArray tex : hint_albedo;
uniform int index;

void fragment() {
ALBEDO = texture(tex, vec3(UV.x, UV.y, float(index)));
}

```

Note: `godot.TextureArray`s can only be sampled in shaders in the GLES3 backend. In GLES2, their data can be accessed via scripting, but there is no way to render them in a hardware-accelerated manner.
**/
@:libType
@:csNative
@:native("Godot.TextureArray")
@:autoBuild(godot.Godot.buildUserClass())
extern class TextureArray extends godot.TextureLayered {
	@:native("new")
	public function new():Void;

	#if doc_gen
	/**		
		Creates the TextureArray with specified `width`, `height`, and `depth`. See `godot.Image_Format` for `format` options. See `godot.TextureLayered_FlagsEnum` enumerator for `flags` options.
	**/
	@:native("Create")
	public function create(width:UInt, height:UInt, depth:UInt, format:godot.Image_Format, ?flags:UInt):Void;
	#else
	/**		
		Creates the TextureArray with specified `width`, `height`, and `depth`. See `godot.Image_Format` for `format` options. See `godot.TextureLayered_FlagsEnum` enumerator for `flags` options.
	**/
	@:native("Create")
	public overload function create(width:UInt, height:UInt, depth:UInt, format:godot.Image_Format):Void;

	/**		
		Creates the TextureArray with specified `width`, `height`, and `depth`. See `godot.Image_Format` for `format` options. See `godot.TextureLayered_FlagsEnum` enumerator for `flags` options.
	**/
	@:native("Create")
	public overload function create(width:UInt, height:UInt, depth:UInt, format:godot.Image_Format, flags:UInt):Void;
	#end
}
