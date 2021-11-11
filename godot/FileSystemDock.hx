// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.FileSystemDock")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class FileSystemDock extends godot.VBoxContainer {
	/**
		`display_mode_changed` signal.
	**/
	public var onDisplayModeChanged(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onDisplayModeChanged():Signal<Void->Void> {
		return new Signal(this, "display_mode_changed", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`file_removed` signal.
	**/
	public var onFileRemoved(get, never):Signal<(file:std.String)->Void>;
	@:dox(hide) @:noCompletion inline function get_onFileRemoved():Signal<(file:std.String)->Void> {
		return new Signal(this, "file_removed", Signal.SignalHandlerStringVoid.connectSignal, Signal.SignalHandlerStringVoid.disconnectSignal, Signal.SignalHandlerStringVoid.isSignalConnected);
	}

	/**
		`files_moved` signal.
	**/
	public var onFilesMoved(get, never):Signal<(oldFile:std.String, newFile:std.String)->Void>;
	@:dox(hide) @:noCompletion inline function get_onFilesMoved():Signal<(oldFile:std.String, newFile:std.String)->Void> {
		return new Signal(this, "files_moved", Signal.SignalHandlerStringStringVoid.connectSignal, Signal.SignalHandlerStringStringVoid.disconnectSignal, Signal.SignalHandlerStringStringVoid.isSignalConnected);
	}

	/**
		`folder_moved` signal.
	**/
	public var onFolderMoved(get, never):Signal<(oldFolder:std.String, newFile:std.String)->Void>;
	@:dox(hide) @:noCompletion inline function get_onFolderMoved():Signal<(oldFolder:std.String, newFile:std.String)->Void> {
		return new Signal(this, "folder_moved", Signal.SignalHandlerStringStringVoid.connectSignal, Signal.SignalHandlerStringStringVoid.disconnectSignal, Signal.SignalHandlerStringStringVoid.isSignalConnected);
	}

	/**
		`folder_removed` signal.
	**/
	public var onFolderRemoved(get, never):Signal<(folder:std.String)->Void>;
	@:dox(hide) @:noCompletion inline function get_onFolderRemoved():Signal<(folder:std.String)->Void> {
		return new Signal(this, "folder_removed", Signal.SignalHandlerStringVoid.connectSignal, Signal.SignalHandlerStringVoid.disconnectSignal, Signal.SignalHandlerStringVoid.isSignalConnected);
	}

	/**
		`inherit` signal.
	**/
	public var onInherit(get, never):Signal<(file:std.String)->Void>;
	@:dox(hide) @:noCompletion inline function get_onInherit():Signal<(file:std.String)->Void> {
		return new Signal(this, "inherit", Signal.SignalHandlerStringVoid.connectSignal, Signal.SignalHandlerStringVoid.disconnectSignal, Signal.SignalHandlerStringVoid.isSignalConnected);
	}

	/**
		`instance` signal.
	**/
	public var onInstance(get, never):Signal<(files:std.Array<std.String>)->Void>;
	@:dox(hide) @:noCompletion inline function get_onInstance():Signal<(files:std.Array<std.String>)->Void> {
		return new Signal(this, "instance", Signal.SignalHandlerPoolStringArrayVoid.connectSignal, Signal.SignalHandlerPoolStringArrayVoid.disconnectSignal, Signal.SignalHandlerPoolStringArrayVoid.isSignalConnected);
	}

	@:native("GetDragDataFw")
	public function getDragDataFw(point:godot.Vector2, from:godot.Control):Dynamic;

	@:native("CanDropDataFw")
	public function canDropDataFw(point:godot.Vector2, data:Dynamic, from:godot.Control):Bool;

	@:native("DropDataFw")
	public function dropDataFw(point:godot.Vector2, data:Dynamic, from:godot.Control):Void;

	@:native("NavigateToPath")
	public function navigateToPath(path:std.String):Void;
}
