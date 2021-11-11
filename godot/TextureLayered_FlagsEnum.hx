// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.TextureLayered.FlagsEnum")
@:csNative
extern enum TextureLayered_FlagsEnum {
	/**		
		Texture will generate mipmaps on creation.
	**/
	FlagMipmaps;

	/**		
		Texture will repeat when UV used is outside the 0-1 range.
	**/
	FlagRepeat;

	/**		
		Default flags for `godot.Texture3D`. `godot.TextureLayered_FlagsEnum.flagFilter` is enabled.
	**/
	FlagsDefaultTexture3d;

	/**		
		Use filtering when reading from texture. Filtering smooths out pixels. Turning filtering off is slightly faster and more appropriate when you need access to individual pixels.
	**/
	FlagFilter;

	/**		
		Default flags for `godot.TextureArray`. `godot.TextureLayered_FlagsEnum.flagMipmaps`, `godot.TextureLayered_FlagsEnum.flagRepeat` and `godot.TextureLayered_FlagsEnum.flagFilter` are enabled.
	**/
	FlagsDefaultTextureArray;

	/**		
		Uses anisotropic mipmap filtering. Generates smaller versions of the same texture with different aspect ratios.
		
		This results in better-looking textures when viewed from oblique angles.
	**/
	FlagAnisotropicFilter;
}
