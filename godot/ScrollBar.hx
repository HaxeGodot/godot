// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Scrollbars are a `godot.Range`-based `godot.Control`, that display a draggable area (the size of the page). Horizontal (`godot.HScrollBar`) and Vertical (`godot.VScrollBar`) versions are available.
**/
@:libType
@:csNative
@:native("Godot.ScrollBar")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class ScrollBar extends godot.Range {
	/**
		`scrolling` signal.
	**/
	public var onScrolling(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onScrolling():Signal<Void->Void> {
		return new Signal(this, "scrolling", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**		
		Overrides the step used when clicking increment and decrement buttons or when using arrow keys when the `godot.ScrollBar` is focused.
	**/
	@:native("CustomStep")
	public var customStep:Single;

	@:native("SetCustomStep")
	public function setCustomStep(step:Single):Void;

	@:native("GetCustomStep")
	public function getCustomStep():Single;
}
