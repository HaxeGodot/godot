// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.BakedLightmap.BakeError")
@:csNative
extern enum BakedLightmap_BakeError {
	/**		
		Baking was successful.
	**/
	Ok;

	/**		
		Returns if no viable save path is found. This can happen where an `godot.BakedLightmap.imagePath` is not specified or when the save location is invalid.
	**/
	NoSavePath;

	/**		
		Currently unused.
	**/
	NoMeshes;

	/**		
		Returns when the baker cannot save per-mesh textures to file.
	**/
	CantCreateImage;

	/**		
		Returns if user cancels baking.
	**/
	UserAborted;
}
