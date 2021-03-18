// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.TextureLayered.FlagsEnum")
@:csNative
extern enum TextureLayered_FlagsEnum {
	/**		
		Texture will generate mipmaps on creation.
	**/
	Mipmaps;

	/**		
		Texture will repeat when UV used is outside the 0-1 range.
	**/
	Repeat;

	/**		
		Use filtering when reading from texture. Filtering smooths out pixels. Turning filtering off is slightly faster and more appropriate when you need access to individual pixels.
	**/
	Filter;

	/**		
		Equivalent to .
	**/
	Default;
}
