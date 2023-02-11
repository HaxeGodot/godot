// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This object holds information of all resources in the filesystem, their types, etc.

Note: This class shouldn't be instantiated directly. Instead, access the singleton using `godot.EditorInterface.getResourceFilesystem`.
**/
@:libType
@:csNative
@:native("Godot.EditorFileSystem")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class EditorFileSystem extends godot.Node {
	/**
		`filesystem_changed` signal.
	**/
	public var onFilesystemChanged(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onFilesystemChanged():Signal<Void->Void> {
		return new Signal(this, "filesystem_changed", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`resources_reimported` signal.
	**/
	public var onResourcesReimported(get, never):Signal<(resources:std.Array<std.String>)->Void>;
	@:dox(hide) @:noCompletion inline function get_onResourcesReimported():Signal<(resources:std.Array<std.String>)->Void> {
		return new Signal(this, "resources_reimported", Signal.SignalHandlerPoolStringArrayVoid.connectSignal, Signal.SignalHandlerPoolStringArrayVoid.disconnectSignal, Signal.SignalHandlerPoolStringArrayVoid.isSignalConnected);
	}

	/**
		`resources_reload` signal.
	**/
	public var onResourcesReload(get, never):Signal<(resources:std.Array<std.String>)->Void>;
	@:dox(hide) @:noCompletion inline function get_onResourcesReload():Signal<(resources:std.Array<std.String>)->Void> {
		return new Signal(this, "resources_reload", Signal.SignalHandlerPoolStringArrayVoid.connectSignal, Signal.SignalHandlerPoolStringArrayVoid.disconnectSignal, Signal.SignalHandlerPoolStringArrayVoid.isSignalConnected);
	}

	/**
		`sources_changed` signal.
	**/
	public var onSourcesChanged(get, never):Signal<(exist:Bool)->Void>;
	@:dox(hide) @:noCompletion inline function get_onSourcesChanged():Signal<(exist:Bool)->Void> {
		return new Signal(this, "sources_changed", Signal.SignalHandlerBoolVoid.connectSignal, Signal.SignalHandlerBoolVoid.disconnectSignal, Signal.SignalHandlerBoolVoid.isSignalConnected);
	}

	/**		
		Gets the root directory object.
	**/
	@:native("GetFilesystem")
	public function getFilesystem():godot.EditorFileSystemDirectory;

	/**		
		Returns `true` of the filesystem is being scanned.
	**/
	@:native("IsScanning")
	public function isScanning():Bool;

	/**		
		Returns the scan progress for 0 to 1 if the FS is being scanned.
	**/
	@:native("GetScanningProgress")
	public function getScanningProgress():Single;

	/**		
		Scan the filesystem for changes.
	**/
	@:native("Scan")
	public function scan():Void;

	/**		
		Check if the source of any imported resource changed.
	**/
	@:native("ScanSources")
	public function scanSources():Void;

	/**		
		Update a file information. Call this if an external program (not Godot) modified the file.
	**/
	@:native("UpdateFile")
	public function updateFile(path:std.String):Void;

	/**		
		Returns a view into the filesystem at `path`.
	**/
	@:native("GetFilesystemPath")
	public function getFilesystemPath(path:std.String):godot.EditorFileSystemDirectory;

	/**		
		Returns the resource type of the file, given the full path. This returns a string such as `"Resource"` or `"GDScript"`, not a file extension such as `".gd"`.
	**/
	@:native("GetFileType")
	public function getFileType(path:std.String):std.String;

	/**		
		Scans the script files and updates the list of custom class names.
	**/
	@:native("UpdateScriptClasses")
	public function updateScriptClasses():Void;
}
