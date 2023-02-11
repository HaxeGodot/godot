// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Group of `godot.Button`. All direct and indirect children buttons become radios. Only one allows being pressed.

`godot.BaseButton.toggleMode` should be `true`.
**/
@:libType
@:csNative
@:native("Godot.ButtonGroup")
@:autoBuild(godot.Godot.buildUserClass())
extern class ButtonGroup extends godot.Resource {
	/**
		`pressed` signal.
	**/
	public var onPressed(get, never):Signal<(button:godot.Object)->Void>;
	@:dox(hide) @:noCompletion inline function get_onPressed():Signal<(button:godot.Object)->Void> {
		return new Signal(this, "pressed", Signal.SignalHandlerObjectVoid.connectSignal, Signal.SignalHandlerObjectVoid.disconnectSignal, Signal.SignalHandlerObjectVoid.isSignalConnected);
	}

	@:native("new")
	public function new():Void;

	/**		
		Returns the current pressed button.
	**/
	@:native("GetPressedButton")
	public function getPressedButton():godot.BaseButton;

	/**		
		Returns an `godot.Collections_Array` of `godot.Button`s who have this as their `godot.ButtonGroup` (see `godot.BaseButton.group`).
	**/
	@:native("GetButtons")
	public function getButtons():godot.collections.Array;
}
