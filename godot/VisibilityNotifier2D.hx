// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
The VisibilityNotifier2D detects when it is visible on the screen. It also notifies when its bounding rectangle enters or exits the screen or a viewport.

If you want nodes to be disabled automatically when they exit the screen, use `godot.VisibilityEnabler2D` instead.

Note: For performance reasons, VisibilityNotifier2D uses an approximate heuristic with precision determined by . If you need precise visibility checking, use another method such as adding an `godot.Area2D` node as a child of a `godot.Camera2D` node.
**/
@:libType
@:csNative
@:native("Godot.VisibilityNotifier2D")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisibilityNotifier2D extends godot.Node2D {
	/**
		`screen_entered` signal.
		
		Emitted when the VisibilityNotifier2D enters the screen.
	**/
	public var onScreenEntered(get, never):Signal<Void->Void>;
	@:dox(hide) inline function get_onScreenEntered():Signal<Void->Void> {
		return new Signal(this, "screen_entered", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`screen_exited` signal.
		
		Emitted when the VisibilityNotifier2D exits the screen.
	**/
	public var onScreenExited(get, never):Signal<Void->Void>;
	@:dox(hide) inline function get_onScreenExited():Signal<Void->Void> {
		return new Signal(this, "screen_exited", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`viewport_entered` signal.
		
		Emitted when the VisibilityNotifier2D enters a `Viewport`'s view.
	**/
	public var onViewportEntered(get, never):Signal<(viewport:Viewport)->Void>;
	@:dox(hide) inline function get_onViewportEntered():Signal<(viewport:Viewport)->Void> {
		return new Signal(this, "viewport_entered", Signal.SignalHandlerViewportVoid.connectSignal, Signal.SignalHandlerViewportVoid.disconnectSignal, Signal.SignalHandlerViewportVoid.isSignalConnected);
	}

	/**
		`viewport_exited` signal.
		
		Emitted when the VisibilityNotifier2D exits a `Viewport`'s view.
	**/
	public var onViewportExited(get, never):Signal<(viewport:Viewport)->Void>;
	@:dox(hide) inline function get_onViewportExited():Signal<(viewport:Viewport)->Void> {
		return new Signal(this, "viewport_exited", Signal.SignalHandlerViewportVoid.connectSignal, Signal.SignalHandlerViewportVoid.disconnectSignal, Signal.SignalHandlerViewportVoid.isSignalConnected);
	}

	/**		
		The VisibilityNotifier2D's bounding rectangle.
	**/
	@:native("Rect")
	public var rect:godot.Rect2;

	@:native("new")
	public function new():Void;

	@:native("SetRect")
	public function setRect(rect:godot.Rect2):Void;

	@:native("GetRect")
	public function getRect():godot.Rect2;

	/**		
		If `true`, the bounding rectangle is on the screen.
		
		Note: It takes one frame for the node's visibility to be assessed once added to the scene tree, so this method will return `false` right after it is instantiated, even if it will be on screen in the draw pass.
	**/
	@:native("IsOnScreen")
	public function isOnScreen():Bool;
}
