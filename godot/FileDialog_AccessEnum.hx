// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.FileDialog.AccessEnum")
@:csNative
extern enum FileDialog_AccessEnum {
	/**		
		The dialog only allows accessing files under the `godot.Resource` path (`res://`).
	**/
	Resources;

	/**		
		The dialog only allows accessing files under user data path (`user://`).
	**/
	Userdata;

	/**		
		The dialog allows accessing files on the whole file system.
	**/
	Filesystem;
}
