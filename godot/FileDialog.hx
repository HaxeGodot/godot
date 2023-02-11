// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
FileDialog is a preset dialog used to choose files and directories in the filesystem. It supports filter masks. The FileDialog automatically sets its window title according to the `godot.FileDialog.mode`. If you want to use a custom title, disable this by setting `godot.FileDialog.modeOverridesTitle` to `false`.
**/
@:libType
@:csNative
@:native("Godot.FileDialog")
@:autoBuild(godot.Godot.buildUserClass())
extern class FileDialog extends godot.ConfirmationDialog {
	/**
		`dir_selected` signal.
	**/
	public var onDirSelected(get, never):Signal<(dir:std.String)->Void>;
	@:dox(hide) @:noCompletion inline function get_onDirSelected():Signal<(dir:std.String)->Void> {
		return new Signal(this, "dir_selected", Signal.SignalHandlerStringVoid.connectSignal, Signal.SignalHandlerStringVoid.disconnectSignal, Signal.SignalHandlerStringVoid.isSignalConnected);
	}

	/**
		`file_selected` signal.
	**/
	public var onFileSelected(get, never):Signal<(path:std.String)->Void>;
	@:dox(hide) @:noCompletion inline function get_onFileSelected():Signal<(path:std.String)->Void> {
		return new Signal(this, "file_selected", Signal.SignalHandlerStringVoid.connectSignal, Signal.SignalHandlerStringVoid.disconnectSignal, Signal.SignalHandlerStringVoid.isSignalConnected);
	}

	/**
		`files_selected` signal.
	**/
	public var onFilesSelected(get, never):Signal<(paths:std.Array<std.String>)->Void>;
	@:dox(hide) @:noCompletion inline function get_onFilesSelected():Signal<(paths:std.Array<std.String>)->Void> {
		return new Signal(this, "files_selected", Signal.SignalHandlerPoolStringArrayVoid.connectSignal, Signal.SignalHandlerPoolStringArrayVoid.disconnectSignal, Signal.SignalHandlerPoolStringArrayVoid.isSignalConnected);
	}

	/**		
		The currently selected file path of the file dialog.
	**/
	@:native("CurrentPath")
	public var currentPath:std.String;

	/**		
		The currently selected file of the file dialog.
	**/
	@:native("CurrentFile")
	public var currentFile:std.String;

	/**		
		The current working directory of the file dialog.
	**/
	@:native("CurrentDir")
	public var currentDir:std.String;

	/**		
		If `true`, the dialog will show hidden files.
	**/
	@:native("ShowHiddenFiles")
	public var showHiddenFiles:Bool;

	/**		
		The available file type filters. For example, this shows only `.png` and `.gd` files: `set_filters(PoolStringArray(["*.png ; PNG Images","*.gd ; GDScript Files"]))`. Multiple file types can also be specified in a single filter. `"*.png, *.jpg, *.jpeg ; Supported Images"` will show both PNG and JPEG files when selected.
	**/
	@:native("Filters")
	public var filters:cs.NativeArray<std.String>;

	/**		
		The file system access scope. See enum `Access` constants.
		
		Warning: Currently, in sandboxed environments such as HTML5 builds or sandboxed macOS apps, FileDialog cannot access the host file system. See [https://github.com/godotengine/godot-proposals/issues/1123](godot-proposals#1123).
	**/
	@:native("Access")
	public var access:godot.FileDialog_AccessEnum;

	/**		
		The dialog's open or save mode, which affects the selection behavior. See enum `Mode` constants.
	**/
	@:native("Mode")
	public var mode:godot.FileDialog_ModeEnum;

	/**		
		If `true`, changing the `Mode` property will set the window title accordingly (e.g. setting mode to `godot.FileDialog_ModeEnum.openFile` will change the window title to "Open a File").
	**/
	@:native("ModeOverridesTitle")
	public var modeOverridesTitle:Bool;

	@:native("new")
	public function new():Void;

	/**		
		Clear all the added filters in the dialog.
	**/
	@:native("ClearFilters")
	public function clearFilters():Void;

	/**		
		Adds `filter` to the list of filters, which restricts what files can be picked.
		
		A `filter` should be of the form `"filename.extension ; Description"`, where filename and extension can be `*` to match any string. Filters starting with `.` (i.e. empty filenames) are not allowed.
		
		Example filters: `"*.png ; PNG Images"`, `"project.godot ; Godot Project"`.
	**/
	@:native("AddFilter")
	public function addFilter(filter:std.String):Void;

	@:native("SetFilters")
	public function setFilters(filters:HaxeArray<std.String>):Void;

	public extern inline function getFilters():std.Array<std.String> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetFilters()", this));
	}

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

	@:native("SetModeOverridesTitle")
	public function setModeOverridesTitle(override_:Bool):Void;

	@:native("IsModeOverridingTitle")
	public function isModeOverridingTitle():Bool;

	@:native("SetMode")
	public function setMode(mode:godot.FileDialog_ModeEnum):Void;

	@:native("GetMode")
	public function getMode():godot.FileDialog_ModeEnum;

	/**		
		Returns the vertical box container of the dialog, custom controls can be added to it.
		
		Warning: This is a required internal node, removing and freeing it may cause a crash. If you wish to hide it or any of its children, use their `godot.CanvasItem.visible` property.
	**/
	@:native("GetVbox")
	public function getVbox():godot.VBoxContainer;

	/**		
		Returns the LineEdit for the selected file.
		
		Warning: This is a required internal node, removing and freeing it may cause a crash. If you wish to hide it or any of its children, use their `godot.CanvasItem.visible` property.
	**/
	@:native("GetLineEdit")
	public function getLineEdit():godot.LineEdit;

	@:native("SetAccess")
	public function setAccess(access:godot.FileDialog_AccessEnum):Void;

	@:native("GetAccess")
	public function getAccess():godot.FileDialog_AccessEnum;

	@:native("SetShowHiddenFiles")
	public function setShowHiddenFiles(show:Bool):Void;

	@:native("IsShowingHiddenFiles")
	public function isShowingHiddenFiles():Bool;

	/**		
		Clear currently selected items in the dialog.
	**/
	@:native("DeselectItems")
	public function deselectItems():Void;

	/**		
		Invalidate and update the current dialog content list.
	**/
	@:native("Invalidate")
	public function invalidate():Void;
}
