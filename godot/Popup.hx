// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Popup is a base `godot.Control` used to show dialogs and popups. It's a subwindow and modal by default (see `godot.Control`) and has helpers for custom popup behavior. All popup methods ensure correct placement within the viewport.
**/
@:libType
@:csNative
@:native("Godot.Popup")
@:autoBuild(godot.Godot.buildUserClass())
extern class Popup extends godot.Control {
	/**
		`about_to_show` signal.
		
		Emitted when a popup is about to be shown. This is often used in `PopupMenu` to clear the list of options then create a new one according to the current context.
	**/
	public var onAboutToShow(get, never):Signal<Void->Void>;
	@:dox(hide) inline function get_onAboutToShow():Signal<Void->Void> {
		return new Signal(this, "about_to_show", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`popup_hide` signal.
		
		Emitted when a popup is hidden.
	**/
	public var onPopupHide(get, never):Signal<Void->Void>;
	@:dox(hide) inline function get_onPopupHide():Signal<Void->Void> {
		return new Signal(this, "popup_hide", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**		
		If `true`, the popup will not be hidden when a click event occurs outside of it, or when it receives the `ui_cancel` action event.
		
		Note: Enabling this property doesn't affect the Close or Cancel buttons' behavior in dialogs that inherit from this class. As a workaround, you can use `godot.WindowDialog.getCloseButton` or `godot.ConfirmationDialog.getCancel` and hide the buttons in question by setting their `godot.CanvasItem.visible` property to `false`.
	**/
	@:native("PopupExclusive")
	public var popupExclusive:Bool;

	/**		
		Notification sent right after the popup is hidden.
	**/
	@:native("NotificationPopupHide")
	public static var NOTIFICATION_POPUP_HIDE(default, never):Int;

	/**		
		Notification sent right after the popup is shown.
	**/
	@:native("NotificationPostPopup")
	public static var NOTIFICATION_POST_POPUP(default, never):Int;

	@:native("new")
	public function new():Void;

	/**		
		Shrink popup to keep to the minimum size of content.
	**/
	@:native("SetAsMinsize")
	public function setAsMinsize():Void;

	#if doc_gen
	/**		
		Popup (show the control in modal form) in the center of the screen relative to its current canvas transform, at the current size, or at a size determined by `size`.
		
		@param size If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("PopupCentered")
	public function popupCentered(?size:Null<godot.Vector2>):Void;
	#else
	/**		
		Popup (show the control in modal form) in the center of the screen relative to its current canvas transform, at the current size, or at a size determined by `size`.
		
		@param size If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("PopupCentered")
	public overload function popupCentered():Void;

	/**		
		Popup (show the control in modal form) in the center of the screen relative to its current canvas transform, at the current size, or at a size determined by `size`.
		
		@param size If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("PopupCentered")
	public overload function popupCentered(size:Nullable1<godot.Vector2>):Void;
	#end

	#if doc_gen
	/**		
		Popup (show the control in modal form) in the center of the screen relative to the current canvas transform, scaled at a ratio of size of the screen.
	**/
	@:native("PopupCenteredRatio")
	public function popupCenteredRatio(?ratio:Single):Void;
	#else
	/**		
		Popup (show the control in modal form) in the center of the screen relative to the current canvas transform, scaled at a ratio of size of the screen.
	**/
	@:native("PopupCenteredRatio")
	public overload function popupCenteredRatio():Void;

	/**		
		Popup (show the control in modal form) in the center of the screen relative to the current canvas transform, scaled at a ratio of size of the screen.
	**/
	@:native("PopupCenteredRatio")
	public overload function popupCenteredRatio(ratio:Single):Void;
	#end

	#if doc_gen
	/**		
		Popup (show the control in modal form) in the center of the screen relative to the current canvas transform, ensuring the size is never smaller than `minsize`.
		
		@param minsize If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("PopupCenteredMinsize")
	public function popupCenteredMinsize(?minsize:Null<godot.Vector2>):Void;
	#else
	/**		
		Popup (show the control in modal form) in the center of the screen relative to the current canvas transform, ensuring the size is never smaller than `minsize`.
		
		@param minsize If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("PopupCenteredMinsize")
	public overload function popupCenteredMinsize():Void;

	/**		
		Popup (show the control in modal form) in the center of the screen relative to the current canvas transform, ensuring the size is never smaller than `minsize`.
		
		@param minsize If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("PopupCenteredMinsize")
	public overload function popupCenteredMinsize(minsize:Nullable1<godot.Vector2>):Void;
	#end

	#if doc_gen
	/**		
		Popup (show the control in modal form) in the center of the screen relative to the current canvas transform, clamping the size to `size`, then ensuring the popup is no larger than the viewport size multiplied by `fallback_ratio`.
		
		@param size If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("PopupCenteredClamped")
	public function popupCenteredClamped(?size:Null<godot.Vector2>, ?fallbackRatio:Single):Void;
	#else
	/**		
		Popup (show the control in modal form) in the center of the screen relative to the current canvas transform, clamping the size to `size`, then ensuring the popup is no larger than the viewport size multiplied by `fallback_ratio`.
		
		@param size If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("PopupCenteredClamped")
	public overload function popupCenteredClamped():Void;

	/**		
		Popup (show the control in modal form) in the center of the screen relative to the current canvas transform, clamping the size to `size`, then ensuring the popup is no larger than the viewport size multiplied by `fallback_ratio`.
		
		@param size If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("PopupCenteredClamped")
	public overload function popupCenteredClamped(size:Nullable1<godot.Vector2>):Void;

	/**		
		Popup (show the control in modal form) in the center of the screen relative to the current canvas transform, clamping the size to `size`, then ensuring the popup is no larger than the viewport size multiplied by `fallback_ratio`.
		
		@param size If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("PopupCenteredClamped")
	public overload function popupCenteredClamped(size:Nullable1<godot.Vector2>, fallbackRatio:Single):Void;
	#end

	#if doc_gen
	/**		
		Popup (show the control in modal form).
		
		@param bounds If the parameter is null, then the default value is new Rect2(0, 0, 0, 0)
	**/
	@:native("Popup_")
	public function popup_(?bounds:Null<godot.Rect2>):Void;
	#else
	/**		
		Popup (show the control in modal form).
		
		@param bounds If the parameter is null, then the default value is new Rect2(0, 0, 0, 0)
	**/
	@:native("Popup_")
	public overload function popup_():Void;

	/**		
		Popup (show the control in modal form).
		
		@param bounds If the parameter is null, then the default value is new Rect2(0, 0, 0, 0)
	**/
	@:native("Popup_")
	public overload function popup_(bounds:Nullable1<godot.Rect2>):Void;
	#end

	@:native("SetExclusive")
	public function setExclusive(enable:Bool):Void;

	@:native("IsExclusive")
	public function isExclusive():Bool;
}
