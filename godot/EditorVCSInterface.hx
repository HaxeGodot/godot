// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Used by the editor to display VCS extracted information in the editor. The implementation of this API is included in VCS addons, which are essentially GDNative plugins that need to be put into the project folder. These VCS addons are scripts which are attached (on demand) to the object instance of `EditorVCSInterface`. All the functions listed below, instead of performing the task themselves, they call the internally defined functions in the VCS addons to provide a plug-n-play experience.
**/
@:libType
@:csNative
@:native("Godot.EditorVCSInterface")
@:autoBuild(godot.Godot.buildUserClass())
extern class EditorVCSInterface extends godot.Object {
	@:native("new")
	public function new():Void;

	/**		
		Returns `true` if the addon is ready to respond to function calls, else returns `false`.
	**/
	@:native("IsAddonReady")
	public function isAddonReady():Bool;

	/**		
		Initializes the VCS addon if not already. Uses the argument value as the path to the working directory of the project. Creates the initial commit if required. Returns `true` if no failure occurs, else returns `false`.
	**/
	@:native("Initialize")
	public function initialize(projectRootPath:std.String):Bool;

	/**		
		Returns `true` if the VCS addon has been initialized, else returns `false`.
	**/
	@:native("IsVcsInitialized")
	public function isVcsInitialized():Bool;

	/**		
		Returns a `godot.Collections_Dictionary` containing the path of the detected file change mapped to an integer signifying what kind of change the corresponding file has experienced.
		
		The following integer values are being used to signify that the detected file is:
		
		- `0`: New to the VCS working directory
		
		- `1`: Modified
		
		- `2`: Renamed
		
		- `3`: Deleted
		
		- `4`: Typechanged
	**/
	@:native("GetModifiedFilesData")
	public function getModifiedFilesData():godot.collections.Dictionary;

	/**		
		Stages the file which should be committed when `godot.EditorVCSInterface.commit` is called. Argument should contain the absolute path.
	**/
	@:native("StageFile")
	public function stageFile(filePath:std.String):Void;

	/**		
		Unstages the file which was staged previously to be committed, so that it is no longer committed when `godot.EditorVCSInterface.commit` is called. Argument should contain the absolute path.
	**/
	@:native("UnstageFile")
	public function unstageFile(filePath:std.String):Void;

	/**		
		Creates a version commit if the addon is initialized, else returns without doing anything. Uses the files which have been staged previously, with the commit message set to a value as provided as in the argument.
	**/
	@:native("Commit")
	public function commit(msg:std.String):Void;

	/**		
		Returns an `godot.Collections_Array` of `godot.Collections_Dictionary` objects containing the diff output from the VCS in use, if a VCS addon is initialized, else returns an empty `godot.Collections_Array` object. The diff contents also consist of some contextual lines which provide context to the observed line change in the file.
		
		Each `godot.Collections_Dictionary` object has the line diff contents under the keys:
		
		- `"content"` to store a `String` containing the line contents
		
		- `"status"` to store a `String` which contains `"+"` in case the content is a line addition but it stores a `"-"` in case of deletion and an empty string in the case the line content is neither an addition nor a deletion.
		
		- `"new_line_number"` to store an integer containing the new line number of the line content.
		
		- `"line_count"` to store an integer containing the number of lines in the line content.
		
		- `"old_line_number"` to store an integer containing the old line number of the line content.
		
		- `"offset"` to store the offset of the line change since the first contextual line content.
	**/
	@:native("GetFileDiff")
	public function getFileDiff(filePath:std.String):godot.collections.Array;

	/**		
		Shuts down the VCS addon to allow cleanup code to run on call. Returns `true` is no failure occurs, else returns `false`.
	**/
	@:native("ShutDown")
	public function shutDown():Bool;

	/**		
		Returns the project name of the VCS working directory.
	**/
	@:native("GetProjectName")
	public function getProjectName():std.String;

	/**		
		Returns the name of the VCS if the VCS has been initialized, else return an empty string.
	**/
	@:native("GetVcsName")
	public function getVcsName():std.String;
}
