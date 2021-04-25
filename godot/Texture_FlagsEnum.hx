// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.Texture.FlagsEnum")
@:csNative
extern enum Texture_FlagsEnum {
	/**		
		Generates mipmaps, which are smaller versions of the same texture to use when zoomed out, keeping the aspect ratio.
	**/
	Mipmaps;

	/**		
		Repeats the texture (instead of clamp to edge).
		
		Note: Ignored when using an `godot.AtlasTexture` as these don't support repetition.
	**/
	Repeat;

	/**		
		Uses a magnifying filter, to enable smooth zooming in of the texture.
	**/
	Filter;

	/**		
		Default flags. ,  and  are enabled.
	**/
	Default;

	/**		
		Uses anisotropic mipmap filtering. Generates smaller versions of the same texture with different aspect ratios.
		
		This results in better-looking textures when viewed from oblique angles.
	**/
	AnisotropicFilter;

	/**		
		Converts the texture to the sRGB color space.
	**/
	ConvertToLinear;

	/**		
		Repeats the texture with alternate sections mirrored.
		
		Note: Ignored when using an `godot.AtlasTexture` as these don't support repetition.
	**/
	MirroredRepeat;

	/**		
		Texture is a video surface.
	**/
	VideoSurface;
}
