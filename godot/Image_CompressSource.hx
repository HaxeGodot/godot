// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.Image.CompressSource")
@:csNative
extern enum Image_CompressSource {
	/**		
		Source texture (before compression) is a regular texture. Default for all textures.
	**/
	Generic;

	/**		
		Source texture (before compression) is in sRGB space.
	**/
	Srgb;

	/**		
		Source texture (before compression) is a normal texture (e.g. it can be compressed into two channels).
	**/
	Normal;
}
