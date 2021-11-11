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
		The size of the generated lightmaps is too large.
	**/
	LightmapSize;

	/**		
		Some mesh contains UV2 values outside the `[0,1]` range.
	**/
	InvalidMesh;

	/**		
		Returns if user cancels baking.
	**/
	UserAborted;

	/**		
		Returns if lightmapper can't be created. Unless you are using a custom lightmapper, please report this as bug.
	**/
	NoLightmapper;

	/**		
		There is no root node to start baking from. Either provide `from_node` argument or attach this node to a parent that should be used as root.
	**/
	NoRoot;
}
