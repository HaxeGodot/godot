// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.Light2D.ModeEnum")
@:csNative
extern enum Light2D_ModeEnum {
	/**		
		Adds the value of pixels corresponding to the Light2D to the values of pixels under it. This is the common behavior of a light.
	**/
	Add;

	/**		
		Subtracts the value of pixels corresponding to the Light2D to the values of pixels under it, resulting in inversed light effect.
	**/
	Sub;

	/**		
		Mix the value of pixels corresponding to the Light2D to the values of pixels under it by linear interpolation.
	**/
	Mix;

	/**		
		The light texture of the Light2D is used as a mask, hiding or revealing parts of the screen underneath depending on the value of each pixel of the light (mask) texture.
	**/
	Mask;
}
