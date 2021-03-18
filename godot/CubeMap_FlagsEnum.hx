// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.CubeMap.FlagsEnum")
@:csNative
extern enum CubeMap_FlagsEnum {
	/**		
		Generate mipmaps, to enable smooth zooming out of the texture.
	**/
	Mipmaps;

	/**		
		Repeat (instead of clamp to edge).
	**/
	Repeat;

	/**		
		Turn on magnifying filter, to enable smooth zooming in of the texture.
	**/
	Filter;

	/**		
		Default flags. Generate mipmaps, repeat, and filter are enabled.
	**/
	Default;
}
