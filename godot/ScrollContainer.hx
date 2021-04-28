// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A ScrollContainer node meant to contain a `godot.Control` child. ScrollContainers will automatically create a scrollbar child (`godot.HScrollBar`, `godot.VScrollBar`, or both) when needed and will only draw the Control within the ScrollContainer area. Scrollbars will automatically be drawn at the right (for vertical) or bottom (for horizontal) and will enable dragging to move the viewable Control (and its children) within the ScrollContainer. Scrollbars will also automatically resize the grabber based on the `godot.Control.rectMinSize` of the Control relative to the ScrollContainer. Works great with a `godot.Panel` control. You can set `EXPAND` on the children's size flags, so they will upscale to the ScrollContainer's size if it's larger (scroll is invisible for the chosen dimension).
**/
@:libType
@:csNative
@:native("Godot.ScrollContainer")
@:autoBuild(godot.Godot.buildUserClass())
extern class ScrollContainer extends godot.Container {
	/**
		`scroll_ended` signal.
		
		Emitted when scrolling stops.
	**/
	public var onScrollEnded(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onScrollEnded():Signal<Void->Void> {
		return new Signal(this, "scroll_ended", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`scroll_started` signal.
		
		Emitted when scrolling is started.
	**/
	public var onScrollStarted(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onScrollStarted():Signal<Void->Void> {
		return new Signal(this, "scroll_started", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	@:native("ScrollDeadzone")
	public var scrollDeadzone:Int;

	/**		
		The current vertical scroll value.
	**/
	@:native("ScrollVertical")
	public var scrollVertical:Int;

	/**		
		If `true`, enables vertical scrolling.
	**/
	@:native("ScrollVerticalEnabled")
	public var scrollVerticalEnabled:Bool;

	/**		
		The current horizontal scroll value.
	**/
	@:native("ScrollHorizontal")
	public var scrollHorizontal:Int;

	/**		
		If `true`, enables horizontal scrolling.
	**/
	@:native("ScrollHorizontalEnabled")
	public var scrollHorizontalEnabled:Bool;

	/**		
		If `true`, the ScrollContainer will automatically scroll to focused children (including indirect children) to make sure they are fully visible.
	**/
	@:native("FollowFocus")
	public var followFocus:Bool;

	@:native("new")
	public function new():Void;

	@:native("SetEnableHScroll")
	public function setEnableHScroll(enable:Bool):Void;

	@:native("IsHScrollEnabled")
	public function isHScrollEnabled():Bool;

	@:native("SetEnableVScroll")
	public function setEnableVScroll(enable:Bool):Void;

	@:native("IsVScrollEnabled")
	public function isVScrollEnabled():Bool;

	@:native("SetHScroll")
	public function setHScroll(value:Int):Void;

	@:native("GetHScroll")
	public function getHScroll():Int;

	@:native("SetVScroll")
	public function setVScroll(value:Int):Void;

	@:native("GetVScroll")
	public function getVScroll():Int;

	@:native("SetDeadzone")
	public function setDeadzone(deadzone:Int):Void;

	@:native("GetDeadzone")
	public function getDeadzone():Int;

	@:native("SetFollowFocus")
	public function setFollowFocus(enabled:Bool):Void;

	@:native("IsFollowingFocus")
	public function isFollowingFocus():Bool;

	/**		
		Returns the horizontal scrollbar `godot.HScrollBar` of this `godot.ScrollContainer`.
	**/
	@:native("GetHScrollbar")
	public function getHScrollbar():godot.HScrollBar;

	/**		
		Returns the vertical scrollbar `godot.VScrollBar` of this `godot.ScrollContainer`.
	**/
	@:native("GetVScrollbar")
	public function getVScrollbar():godot.VScrollBar;
}
