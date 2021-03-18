// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.SpatialMaterial.DistanceFadeModeEnum")
@:csNative
extern enum SpatialMaterial_DistanceFadeModeEnum {
	/**		
		Do not use distance fade.
	**/
	Disabled;

	/**		
		Smoothly fades the object out based on each pixel's distance from the camera using the alpha channel.
	**/
	PixelAlpha;

	/**		
		Smoothly fades the object out based on each pixel's distance from the camera using a dither approach. Dithering discards pixels based on a set pattern to smoothly fade without enabling transparency. On certain hardware this can be faster than .
	**/
	PixelDither;

	/**		
		Smoothly fades the object out based on the object's distance from the camera using a dither approach. Dithering discards pixels based on a set pattern to smoothly fade without enabling transparency. On certain hardware this can be faster than .
	**/
	ObjectDither;
}
