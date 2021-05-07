// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.EditorFeatureProfile.Feature")
@:csNative
extern enum EditorFeatureProfile_Feature {
	/**		
		The 3D editor. If this feature is disabled, the 3D editor won't display but 3D nodes will still display in the Create New Node dialog.
	**/
	Feature3d;

	/**		
		The Script tab, which contains the script editor and class reference browser. If this feature is disabled, the Script tab won't display.
	**/
	Script;

	/**		
		The AssetLib tab. If this feature is disabled, the AssetLib tab won't display.
	**/
	AssetLib;

	/**		
		Scene tree editing. If this feature is disabled, the Scene tree dock will still be visible but will be read-only.
	**/
	SceneTree;

	/**		
		The Node dock. If this feature is disabled, signals and groups won't be visible and modifiable from the editor.
	**/
	NodeDock;

	/**		
		The FileSystem dock. If this feature is disabled, the FileSystem dock won't be visible.
	**/
	FilesystemDock;

	/**		
		The Import dock. If this feature is disabled, the Import dock won't be visible.
	**/
	ImportDock;

	/**		
		Represents the size of the `godot.EditorFeatureProfile_Feature` enum.
	**/
	Max;
}
