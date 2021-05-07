// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A more generalized, low-level variation of the directory concept.
**/
@:libType
@:csNative
@:native("Godot.EditorFileSystemDirectory")
@:autoBuild(godot.Godot.buildUserClass())
extern class EditorFileSystemDirectory extends godot.Object {
	@:native("new")
	public function new():Void;

	/**		
		Returns the number of subdirectories in this directory.
	**/
	@:native("GetSubdirCount")
	public function getSubdirCount():Int;

	/**		
		Returns the subdirectory at index `idx`.
	**/
	@:native("GetSubdir")
	public function getSubdir(idx:Int):godot.EditorFileSystemDirectory;

	/**		
		Returns the number of files in this directory.
	**/
	@:native("GetFileCount")
	public function getFileCount():Int;

	/**		
		Returns the name of the file at index `idx`.
	**/
	@:native("GetFile")
	public function getFile(idx:Int):std.String;

	/**		
		Returns the path to the file at index `idx`.
	**/
	@:native("GetFilePath")
	public function getFilePath(idx:Int):std.String;

	/**		
		Returns the file extension of the file at index `idx`.
	**/
	@:native("GetFileType")
	public function getFileType(idx:Int):std.String;

	/**		
		Returns the name of the script class defined in the file at index `idx`. If the file doesn't define a script class using the `class_name` syntax, this will return an empty string.
	**/
	@:native("GetFileScriptClassName")
	public function getFileScriptClassName(idx:Int):std.String;

	/**		
		Returns the base class of the script class defined in the file at index `idx`. If the file doesn't define a script class using the `class_name` syntax, this will return an empty string.
	**/
	@:native("GetFileScriptClassExtends")
	public function getFileScriptClassExtends(idx:Int):std.String;

	/**		
		Returns `true` if the file at index `idx` imported properly.
	**/
	@:native("GetFileImportIsValid")
	public function getFileImportIsValid(idx:Int):Bool;

	/**		
		Returns the name of this directory.
	**/
	@:native("GetName")
	public function getName():std.String;

	/**		
		Returns the path to this directory.
	**/
	@:native("GetPath")
	public function getPath():std.String;

	/**		
		Returns the parent directory for this directory or `null` if called on a directory at `res://` or `user://`.
	**/
	@:native("GetParent")
	public function getParent():godot.EditorFileSystemDirectory;

	/**		
		Returns the index of the file with name `name` or `-1` if not found.
	**/
	@:native("FindFileIndex")
	public function findFileIndex(name:std.String):Int;

	/**		
		Returns the index of the directory with name `name` or `-1` if not found.
	**/
	@:native("FindDirIndex")
	public function findDirIndex(name:std.String):Int;
}
