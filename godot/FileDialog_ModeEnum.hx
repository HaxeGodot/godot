// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.FileDialog.ModeEnum")
@:csNative
extern enum FileDialog_ModeEnum {
	/**		
		The dialog allows selecting one, and only one file.
	**/
	OpenFile;

	/**		
		The dialog allows selecting multiple files.
	**/
	OpenFiles;

	/**		
		The dialog only allows selecting a directory, disallowing the selection of any file.
	**/
	OpenDir;

	/**		
		The dialog allows selecting one file or directory.
	**/
	OpenAny;

	/**		
		The dialog will warn when a file exists.
	**/
	SaveFile;
}
