// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.EditorFileDialog.AccessEnum")
@:csNative
extern enum EditorFileDialog_AccessEnum {
	/**		
		The `godot.EditorFileDialog` can only view `res://` directory contents.
	**/
	Resources;

	/**		
		The `godot.EditorFileDialog` can only view `user://` directory contents.
	**/
	Userdata;

	/**		
		The `godot.EditorFileDialog` can view the entire local file system.
	**/
	Filesystem;
}
