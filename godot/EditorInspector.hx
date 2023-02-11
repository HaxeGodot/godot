// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
The editor inspector is by default located on the right-hand side of the editor. It's used to edit the properties of the selected node. For example, you can select a node such as `godot.Sprite` then edit its transform through the inspector tool. The editor inspector is an essential tool in the game development workflow.

Note: This class shouldn't be instantiated directly. Instead, access the singleton using `godot.EditorInterface.getInspector`.
**/
@:libType
@:csNative
@:native("Godot.EditorInspector")
@:autoBuild(godot.Godot.buildUserClass())
extern class EditorInspector extends godot.ScrollContainer {
	/**
		`object_id_selected` signal.
	**/
	public var onObjectIdSelected(get, never):Signal<(id:Int)->Void>;
	@:dox(hide) @:noCompletion inline function get_onObjectIdSelected():Signal<(id:Int)->Void> {
		return new Signal(this, "object_id_selected", Signal.SignalHandlerIntVoid.connectSignal, Signal.SignalHandlerIntVoid.disconnectSignal, Signal.SignalHandlerIntVoid.isSignalConnected);
	}

	/**
		`property_edited` signal.
	**/
	public var onPropertyEdited(get, never):Signal<(property:std.String)->Void>;
	@:dox(hide) @:noCompletion inline function get_onPropertyEdited():Signal<(property:std.String)->Void> {
		return new Signal(this, "property_edited", Signal.SignalHandlerStringVoid.connectSignal, Signal.SignalHandlerStringVoid.disconnectSignal, Signal.SignalHandlerStringVoid.isSignalConnected);
	}

	/**
		`property_keyed` signal.
	**/
	public var onPropertyKeyed(get, never):Signal<(property:std.String)->Void>;
	@:dox(hide) @:noCompletion inline function get_onPropertyKeyed():Signal<(property:std.String)->Void> {
		return new Signal(this, "property_keyed", Signal.SignalHandlerStringVoid.connectSignal, Signal.SignalHandlerStringVoid.disconnectSignal, Signal.SignalHandlerStringVoid.isSignalConnected);
	}

	/**
		`property_selected` signal.
	**/
	public var onPropertySelected(get, never):Signal<(property:std.String)->Void>;
	@:dox(hide) @:noCompletion inline function get_onPropertySelected():Signal<(property:std.String)->Void> {
		return new Signal(this, "property_selected", Signal.SignalHandlerStringVoid.connectSignal, Signal.SignalHandlerStringVoid.disconnectSignal, Signal.SignalHandlerStringVoid.isSignalConnected);
	}

	/**
		`property_toggled` signal.
	**/
	public var onPropertyToggled(get, never):Signal<(property:std.String, checked:Bool)->Void>;
	@:dox(hide) @:noCompletion inline function get_onPropertyToggled():Signal<(property:std.String, checked:Bool)->Void> {
		return new Signal(this, "property_toggled", Signal.SignalHandlerStringBoolVoid.connectSignal, Signal.SignalHandlerStringBoolVoid.disconnectSignal, Signal.SignalHandlerStringBoolVoid.isSignalConnected);
	}

	/**
		`resource_selected` signal.
	**/
	public var onResourceSelected(get, never):Signal<(res:godot.Object, prop:std.String)->Void>;
	@:dox(hide) @:noCompletion inline function get_onResourceSelected():Signal<(res:godot.Object, prop:std.String)->Void> {
		return new Signal(this, "resource_selected", Signal.SignalHandlerObjectStringVoid.connectSignal, Signal.SignalHandlerObjectStringVoid.disconnectSignal, Signal.SignalHandlerObjectStringVoid.isSignalConnected);
	}

	/**
		`restart_requested` signal.
	**/
	public var onRestartRequested(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onRestartRequested():Signal<Void->Void> {
		return new Signal(this, "restart_requested", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	@:native("new")
	public function new():Void;

	/**		
		Refreshes the inspector.
		
		Note: To save on CPU resources, calling this method will do nothing if the time specified in `docks/property_editor/auto_refresh_interval` editor setting hasn't passed yet since this method was last called. (By default, this interval is set to 0.3 seconds.)
	**/
	@:native("Refresh")
	public function refresh():Void;
}
