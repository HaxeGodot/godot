// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.ImageTexture.StorageEnum")
@:csNative
extern enum ImageTexture_StorageEnum {
	/**		
		`godot.Image` data is stored raw and unaltered.
	**/
	Raw;

	/**		
		`godot.Image` data is compressed with a lossy algorithm. You can set the storage quality with `godot.ImageTexture.lossyQuality`.
	**/
	CompressLossy;

	/**		
		`godot.Image` data is compressed with a lossless algorithm.
	**/
	CompressLossless;
}
