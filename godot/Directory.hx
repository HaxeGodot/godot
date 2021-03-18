// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Directory type. It is used to manage directories and their content (not restricted to the project folder).

When creating a new `godot.Directory`, its default opened directory will be `res://`. This may change in the future, so it is advised to always use `godot.Directory.open` to initialize your `godot.Directory` where you want to operate, with explicit error checking.

Here is an example on how to iterate through the files of a directory:

```

func dir_contents(path):
var dir = Directory.new()
if dir.open(path) == OK:
dir.list_dir_begin()
var file_name = dir.get_next()
while file_name != "":
if dir.current_is_dir():
print("Found directory: " + file_name)
else:
print("Found file: " + file_name)
file_name = dir.get_next()
else:
print("An error occurred when trying to access the path.")

```
**/
@:libType
@:csNative
@:native("Godot.Directory")
@:autoBuild(godot.Godot.buildUserClass())
extern class Directory extends godot.Reference {
	@:native("new")
	public function new():Void;

	/**		
		Opens an existing directory of the filesystem. The `path` argument can be within the project tree (`res://folder`), the user directory (`user://folder`) or an absolute path of the user filesystem (e.g. `/tmp/folder` or `C:\tmp\folder`).
		
		Returns one of the `godot.Error` code constants (`OK` on success).
	**/
	@:native("Open")
	public function open(path:std.String):godot.Error;

	#if doc_gen
	/**		
		Initializes the stream used to list all files and directories using the `godot.Directory.getNext` function, closing the current opened stream if needed. Once the stream has been processed, it should typically be closed with `godot.Directory.listDirEnd`.
		
		If `skip_navigational` is `true`, `.` and `..` are filtered out.
		
		If `skip_hidden` is `true`, hidden files are filtered out.
	**/
	@:native("ListDirBegin")
	public function listDirBegin(?skipNavigational:Bool, ?skipHidden:Bool):godot.Error;
	#else
	/**		
		Initializes the stream used to list all files and directories using the `godot.Directory.getNext` function, closing the current opened stream if needed. Once the stream has been processed, it should typically be closed with `godot.Directory.listDirEnd`.
		
		If `skip_navigational` is `true`, `.` and `..` are filtered out.
		
		If `skip_hidden` is `true`, hidden files are filtered out.
	**/
	@:native("ListDirBegin")
	public overload function listDirBegin():godot.Error;

	/**		
		Initializes the stream used to list all files and directories using the `godot.Directory.getNext` function, closing the current opened stream if needed. Once the stream has been processed, it should typically be closed with `godot.Directory.listDirEnd`.
		
		If `skip_navigational` is `true`, `.` and `..` are filtered out.
		
		If `skip_hidden` is `true`, hidden files are filtered out.
	**/
	@:native("ListDirBegin")
	public overload function listDirBegin(skipNavigational:Bool):godot.Error;

	/**		
		Initializes the stream used to list all files and directories using the `godot.Directory.getNext` function, closing the current opened stream if needed. Once the stream has been processed, it should typically be closed with `godot.Directory.listDirEnd`.
		
		If `skip_navigational` is `true`, `.` and `..` are filtered out.
		
		If `skip_hidden` is `true`, hidden files are filtered out.
	**/
	@:native("ListDirBegin")
	public overload function listDirBegin(skipNavigational:Bool, skipHidden:Bool):godot.Error;
	#end

	/**		
		Returns the next element (file or directory) in the current directory (including `.` and `..`, unless `skip_navigational` was given to `godot.Directory.listDirBegin`).
		
		The name of the file or directory is returned (and not its full path). Once the stream has been fully processed, the method returns an empty String and closes the stream automatically (i.e. `godot.Directory.listDirEnd` would not be mandatory in such a case).
	**/
	@:native("GetNext")
	public function getNext():std.String;

	/**		
		Returns whether the current item processed with the last `godot.Directory.getNext` call is a directory (`.` and `..` are considered directories).
	**/
	@:native("CurrentIsDir")
	public function currentIsDir():Bool;

	/**		
		Closes the current stream opened with `godot.Directory.listDirBegin` (whether it has been fully processed with `godot.Directory.getNext` or not does not matter).
	**/
	@:native("ListDirEnd")
	public function listDirEnd():Void;

	/**		
		On Windows, returns the number of drives (partitions) mounted on the current filesystem. On other platforms, the method returns 0.
	**/
	@:native("GetDriveCount")
	public function getDriveCount():Int;

	/**		
		On Windows, returns the name of the drive (partition) passed as an argument (e.g. `C:`). On other platforms, or if the requested drive does not existed, the method returns an empty String.
	**/
	@:native("GetDrive")
	public function getDrive(idx:Int):std.String;

	/**		
		Returns the currently opened directory's drive index. See `godot.Directory.getDrive` to convert returned index to the name of the drive.
	**/
	@:native("GetCurrentDrive")
	public function getCurrentDrive():Int;

	/**		
		Changes the currently opened directory to the one passed as an argument. The argument can be relative to the current directory (e.g. `newdir` or `../newdir`), or an absolute path (e.g. `/tmp/newdir` or `res://somedir/newdir`).
		
		Returns one of the `godot.Error` code constants (`OK` on success).
	**/
	@:native("ChangeDir")
	public function changeDir(todir:std.String):godot.Error;

	/**		
		Returns the absolute path to the currently opened directory (e.g. `res://folder` or `C:\tmp\folder`).
	**/
	@:native("GetCurrentDir")
	public function getCurrentDir():std.String;

	/**		
		Creates a directory. The argument can be relative to the current directory, or an absolute path. The target directory should be placed in an already existing directory (to create the full path recursively, see `godot.Directory.makeDirRecursive`).
		
		Returns one of the `godot.Error` code constants (`OK` on success).
	**/
	@:native("MakeDir")
	public function makeDir(path:std.String):godot.Error;

	/**		
		Creates a target directory and all necessary intermediate directories in its path, by calling `godot.Directory.makeDir` recursively. The argument can be relative to the current directory, or an absolute path.
		
		Returns one of the `godot.Error` code constants (`OK` on success).
	**/
	@:native("MakeDirRecursive")
	public function makeDirRecursive(path:std.String):godot.Error;

	/**		
		Returns whether the target file exists. The argument can be relative to the current directory, or an absolute path.
	**/
	@:native("FileExists")
	public function fileExists(path:std.String):Bool;

	/**		
		Returns whether the target directory exists. The argument can be relative to the current directory, or an absolute path.
	**/
	@:native("DirExists")
	public function dirExists(path:std.String):Bool;

	/**		
		On UNIX desktop systems, returns the available space on the current directory's disk. On other platforms, this information is not available and the method returns 0 or -1.
	**/
	@:native("GetSpaceLeft")
	public function getSpaceLeft():Int;

	/**		
		Copies the `from` file to the `to` destination. Both arguments should be paths to files, either relative or absolute. If the destination file exists and is not access-protected, it will be overwritten.
		
		Returns one of the `godot.Error` code constants (`OK` on success).
	**/
	@:native("Copy")
	public function copy(from:std.String, to:std.String):godot.Error;

	/**		
		Renames (move) the `from` file to the `to` destination. Both arguments should be paths to files, either relative or absolute. If the destination file exists and is not access-protected, it will be overwritten.
		
		Returns one of the `godot.Error` code constants (`OK` on success).
	**/
	@:native("Rename")
	public function rename(from:std.String, to:std.String):godot.Error;

	/**		
		Deletes the target file or an empty directory. The argument can be relative to the current directory, or an absolute path. If the target directory is not empty, the operation will fail.
		
		Returns one of the `godot.Error` code constants (`OK` on success).
	**/
	@:native("Remove")
	public function remove(path:std.String):godot.Error;
}
