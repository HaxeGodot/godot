// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.EditorFileDialog.ModeEnum")
@:csNative
extern enum EditorFileDialog_ModeEnum {
	/**		
		The `godot.EditorFileDialog` can select only one file. Accepting the window will open the file.
	**/
	OpenFile;

	/**		
		The `godot.EditorFileDialog` can select multiple files. Accepting the window will open all files.
	**/
	OpenFiles;

	/**		
		The `godot.EditorFileDialog` can select only one directory. Accepting the window will open the directory.
	**/
	OpenDir;

	/**		
		The `godot.EditorFileDialog` can select a file or directory. Accepting the window will open it.
	**/
	OpenAny;

	/**		
		The `godot.EditorFileDialog` can select only one file. Accepting the window will save the file.
	**/
	SaveFile;
}
