// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Container for splitting two `godot.Control`s vertically or horizontally, with a grabber that allows adjusting the split offset or ratio.
**/
@:libType
@:csNative
@:native("Godot.SplitContainer")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class SplitContainer extends godot.Container {
	/**
		`dragged` signal.
	**/
	public var onDragged(get, never):Signal<(offset:Int)->Void>;
	@:dox(hide) @:noCompletion inline function get_onDragged():Signal<(offset:Int)->Void> {
		return new Signal(this, "dragged", Signal.SignalHandlerIntVoid.connectSignal, Signal.SignalHandlerIntVoid.disconnectSignal, Signal.SignalHandlerIntVoid.isSignalConnected);
	}

	/**		
		Determines the dragger's visibility. See `godot.SplitContainer_DraggerVisibilityEnum` for details.
	**/
	@:native("DraggerVisibility")
	public var draggerVisibility:godot.SplitContainer_DraggerVisibilityEnum;

	/**		
		If `true`, the area of the first `godot.Control` will be collapsed and the dragger will be disabled.
	**/
	@:native("Collapsed")
	public var collapsed:Bool;

	/**		
		The initial offset of the splitting between the two `godot.Control`s, with `0` being at the end of the first `godot.Control`.
	**/
	@:native("SplitOffset")
	public var splitOffset:Int;

	@:native("SetSplitOffset")
	public function setSplitOffset(offset:Int):Void;

	@:native("GetSplitOffset")
	public function getSplitOffset():Int;

	/**		
		Clamps the `godot.SplitContainer.splitOffset` value to not go outside the currently possible minimal and maximum values.
	**/
	@:native("ClampSplitOffset")
	public function clampSplitOffset():Void;

	@:native("SetCollapsed")
	public function setCollapsed(collapsed:Bool):Void;

	@:native("IsCollapsed")
	public function isCollapsed():Bool;

	@:native("SetDraggerVisibility")
	public function setDraggerVisibility(mode:godot.SplitContainer_DraggerVisibilityEnum):Void;

	@:native("GetDraggerVisibility")
	public function getDraggerVisibility():godot.SplitContainer_DraggerVisibilityEnum;
}
