// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.EditorFileDialog")
@:autoBuild(godot.Godot.buildUserClass())
extern class EditorFileDialog extends godot.ConfirmationDialog {
	/**
		`dir_selected` signal.
		
		Emitted when a directory is selected.
	**/
	public var onDirSelected(get, never):Signal<(dir:std.String)->Void>;
	@:dox(hide) @:noCompletion inline function get_onDirSelected():Signal<(dir:std.String)->Void> {
		return new Signal(this, "dir_selected", Signal.SignalHandlerStringVoid.connectSignal, Signal.SignalHandlerStringVoid.disconnectSignal, Signal.SignalHandlerStringVoid.isSignalConnected);
	}

	/**
		`file_selected` signal.
		
		Emitted when a file is selected.
	**/
	public var onFileSelected(get, never):Signal<(path:std.String)->Void>;
	@:dox(hide) @:noCompletion inline function get_onFileSelected():Signal<(path:std.String)->Void> {
		return new Signal(this, "file_selected", Signal.SignalHandlerStringVoid.connectSignal, Signal.SignalHandlerStringVoid.disconnectSignal, Signal.SignalHandlerStringVoid.isSignalConnected);
	}

	/**
		`files_selected` signal.
		
		Emitted when multiple files are selected.
	**/
	public var onFilesSelected(get, never):Signal<(paths:std.Array<std.String>)->Void>;
	@:dox(hide) @:noCompletion inline function get_onFilesSelected():Signal<(paths:std.Array<std.String>)->Void> {
		return new Signal(this, "files_selected", Signal.SignalHandlerPoolStringArrayVoid.connectSignal, Signal.SignalHandlerPoolStringArrayVoid.disconnectSignal, Signal.SignalHandlerPoolStringArrayVoid.isSignalConnected);
	}

	/**		
		If `true`, the `godot.EditorFileDialog` will not warn the user before overwriting files.
	**/
	@:native("DisableOverwriteWarning")
	public var disableOverwriteWarning:Bool;

	/**		
		If `true`, hidden files and directories will be visible in the `godot.EditorFileDialog`.
	**/
	@:native("ShowHiddenFiles")
	public var showHiddenFiles:Bool;

	/**		
		The file system path in the address bar.
	**/
	@:native("CurrentPath")
	public var currentPath:std.String;

	/**		
		The currently selected file.
	**/
	@:native("CurrentFile")
	public var currentFile:std.String;

	/**		
		The currently occupied directory.
	**/
	@:native("CurrentDir")
	public var currentDir:std.String;

	/**		
		The purpose of the `godot.EditorFileDialog`, which defines the allowed behaviors.
	**/
	@:native("Mode")
	public var mode:godot.EditorFileDialog_ModeEnum;

	/**		
		The view format in which the `godot.EditorFileDialog` displays resources to the user.
	**/
	@:native("DisplayMode")
	public var displayMode:godot.EditorFileDialog_DisplayModeEnum;

	/**		
		The location from which the user may select a file, including `res://`, `user://`, and the local file system.
	**/
	@:native("Access")
	public var access:godot.EditorFileDialog_AccessEnum;

	@:native("new")
	public function new():Void;

	/**		
		Removes all filters except for "All Files (*)".
	**/
	@:native("ClearFilters")
	public function clearFilters():Void;

	/**		
		Adds a comma-delimited file extension filter option to the `godot.EditorFileDialog` with an optional semi-colon-delimited label.
		
		For example, `"*.tscn, *.scn; Scenes"` results in filter text "Scenes (*.tscn, *.scn)".
	**/
	@:native("AddFilter")
	public function addFilter(filter:std.String):Void;

	@:native("GetCurrentDir")
	public function getCurrentDir():std.String;

	@:native("GetCurrentFile")
	public function getCurrentFile():std.String;

	@:native("GetCurrentPath")
	public function getCurrentPath():std.String;

	@:native("SetCurrentDir")
	public function setCurrentDir(dir:std.String):Void;

	@:native("SetCurrentFile")
	public function setCurrentFile(file:std.String):Void;

	@:native("SetCurrentPath")
	public function setCurrentPath(path:std.String):Void;

	@:native("SetMode")
	public function setMode(mode:godot.EditorFileDialog_ModeEnum):Void;

	@:native("GetMode")
	public function getMode():godot.EditorFileDialog_ModeEnum;

	/**		
		Returns the `VBoxContainer` used to display the file system.
	**/
	@:native("GetVbox")
	public function getVbox():godot.VBoxContainer;

	@:native("SetAccess")
	public function setAccess(access:godot.EditorFileDialog_AccessEnum):Void;

	@:native("GetAccess")
	public function getAccess():godot.EditorFileDialog_AccessEnum;

	@:native("SetShowHiddenFiles")
	public function setShowHiddenFiles(show:Bool):Void;

	@:native("IsShowingHiddenFiles")
	public function isShowingHiddenFiles():Bool;

	@:native("SetDisplayMode")
	public function setDisplayMode(mode:godot.EditorFileDialog_DisplayModeEnum):Void;

	@:native("GetDisplayMode")
	public function getDisplayMode():godot.EditorFileDialog_DisplayModeEnum;

	@:native("SetDisableOverwriteWarning")
	public function setDisableOverwriteWarning(disable:Bool):Void;

	@:native("IsOverwriteWarningDisabled")
	public function isOverwriteWarningDisabled():Bool;

	/**		
		Notify the `godot.EditorFileDialog` that its view of the data is no longer accurate. Updates the view contents on next view update.
	**/
	@:native("Invalidate")
	public function invalidate():Void;
}
