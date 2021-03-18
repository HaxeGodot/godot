// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.File.ModeFlags")
@:csNative
extern enum File_ModeFlags {
	/**		
		Opens the file for read operations. The cursor is positioned at the beginning of the file.
	**/
	Read;

	/**		
		Opens the file for write operations. The file is created if it does not exist, and truncated if it does.
	**/
	Write;

	/**		
		Opens the file for read and write operations. Does not truncate the file. The cursor is positioned at the beginning of the file.
	**/
	ReadWrite;

	/**		
		Opens the file for read and write operations. The file is created if it does not exist, and truncated if it does. The cursor is positioned at the beginning of the file.
	**/
	WriteRead;
}
