// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.Image.Interpolation")
@:csNative
extern enum Image_Interpolation {
	/**		
		Performs nearest-neighbor interpolation. If the image is resized, it will be pixelated.
	**/
	Nearest;

	/**		
		Performs bilinear interpolation. If the image is resized, it will be blurry. This mode is faster than `godot.Image_Interpolation.cubic`, but it results in lower quality.
	**/
	Bilinear;

	/**		
		Performs cubic interpolation. If the image is resized, it will be blurry. This mode often gives better results compared to `godot.Image_Interpolation.bilinear`, at the cost of being slower.
	**/
	Cubic;

	/**		
		Performs bilinear separately on the two most-suited mipmap levels, then linearly interpolates between them.
		
		It's slower than `godot.Image_Interpolation.bilinear`, but produces higher-quality results with far fewer aliasing artifacts.
		
		If the image does not have mipmaps, they will be generated and used internally, but no mipmaps will be generated on the resulting image.
		
		Note: If you intend to scale multiple copies of the original image, it's better to call `godot.Image.generateMipmaps`] on it in advance, to avoid wasting processing power in generating them again and again.
		
		On the other hand, if the image already has mipmaps, they will be used, and a new set will be generated for the resulting image.
	**/
	Trilinear;

	/**		
		Performs Lanczos interpolation. This is the slowest image resizing mode, but it typically gives the best results, especially when downscalng images.
	**/
	Lanczos;
}
