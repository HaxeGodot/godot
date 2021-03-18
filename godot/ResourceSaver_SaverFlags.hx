// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.ResourceSaver.SaverFlags")
@:csNative
extern enum ResourceSaver_SaverFlags {
	/**		
		Save the resource with a path relative to the scene which uses it.
	**/
	RelativePaths;

	/**		
		Bundles external resources.
	**/
	BundleResources;

	/**		
		Changes the `godot.Resource.resourcePath` of the saved resource to match its new location.
	**/
	ChangePath;

	/**		
		Do not save editor-specific metadata (identified by their `__editor` prefix).
	**/
	OmitEditorProperties;

	/**		
		Save as big endian (see `godot.File.endianSwap`).
	**/
	SaveBigEndian;

	/**		
		Compress the resource on save using . Only available for binary resource types.
	**/
	Compress;

	/**		
		Take over the paths of the saved subresources (see `godot.Resource.takeOverPath`).
	**/
	ReplaceSubresourcePaths;
}
