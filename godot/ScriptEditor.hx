// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Note: This class shouldn't be instantiated directly. Instead, access the singleton using `godot.EditorInterface.getScriptEditor`.
**/
@:libType
@:csNative
@:native("Godot.ScriptEditor")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class ScriptEditor extends godot.PanelContainer {
	/**
		`editor_script_changed` signal.
		
		Emitted when user changed active script. Argument is a freshly activated `Script`.
	**/
	public var onEditorScriptChanged(get, never):Signal<(script:Script)->Void>;
	@:dox(hide) @:noCompletion inline function get_onEditorScriptChanged():Signal<(script:Script)->Void> {
		return new Signal(this, "editor_script_changed", Signal.SignalHandlerScriptVoid.connectSignal, Signal.SignalHandlerScriptVoid.disconnectSignal, Signal.SignalHandlerScriptVoid.isSignalConnected);
	}

	/**
		`script_close` signal.
		
		Emitted when editor is about to close the active script. Argument is a `Script` that is going to be closed.
	**/
	public var onScriptClose(get, never):Signal<(script:Script)->Void>;
	@:dox(hide) @:noCompletion inline function get_onScriptClose():Signal<(script:Script)->Void> {
		return new Signal(this, "script_close", Signal.SignalHandlerScriptVoid.connectSignal, Signal.SignalHandlerScriptVoid.disconnectSignal, Signal.SignalHandlerScriptVoid.isSignalConnected);
	}

	@:native("GetDragDataFw")
	public function getDragDataFw(point:godot.Vector2, from:godot.Control):Dynamic;

	@:native("CanDropDataFw")
	public function canDropDataFw(point:godot.Vector2, data:Dynamic, from:godot.Control):Bool;

	@:native("DropDataFw")
	public function dropDataFw(point:godot.Vector2, data:Dynamic, from:godot.Control):Void;

	/**		
		Goes to the specified line in the current script.
	**/
	@:native("GotoLine")
	public function gotoLine(lineNumber:Int):Void;

	/**		
		Returns a `godot.Script` that is currently active in editor.
	**/
	@:native("GetCurrentScript")
	public function getCurrentScript():godot.Script;

	/**		
		Returns an array with all `godot.Script` objects which are currently open in editor.
	**/
	@:native("GetOpenScripts")
	public function getOpenScripts():godot.collections.Array;

	/**		
		Opens the script create dialog. The script will extend `base_name`. The file extension can be omitted from `base_path`. It will be added based on the selected scripting language.
	**/
	@:native("OpenScriptCreateDialog")
	public function openScriptCreateDialog(baseName:std.String, basePath:std.String):Void;
}
