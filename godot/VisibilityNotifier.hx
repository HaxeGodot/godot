// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
The VisibilityNotifier detects when it is visible on the screen. It also notifies when its bounding rectangle enters or exits the screen or a `godot.Camera`'s view.

If you want nodes to be disabled automatically when they exit the screen, use `godot.VisibilityEnabler` instead.

Note: VisibilityNotifier uses an approximate heuristic for performance reasons. It doesn't take walls and other occlusion into account. The heuristic is an implementation detail and may change in future versions. If you need precise visibility checking, use another method such as adding an `godot.Area` node as a child of a `godot.Camera` node and/or `Vector3.dot`.
**/
@:libType
@:csNative
@:native("Godot.VisibilityNotifier")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisibilityNotifier extends godot.CullInstance {
	/**
		`camera_entered` signal.
		
		Emitted when the VisibilityNotifier enters a `Camera`'s view.
	**/
	public var onCameraEntered(get, never):Signal<(camera:Camera)->Void>;
	@:dox(hide) @:noCompletion inline function get_onCameraEntered():Signal<(camera:Camera)->Void> {
		return new Signal(this, "camera_entered", Signal.SignalHandlerCameraVoid.connectSignal, Signal.SignalHandlerCameraVoid.disconnectSignal, Signal.SignalHandlerCameraVoid.isSignalConnected);
	}

	/**
		`camera_exited` signal.
		
		Emitted when the VisibilityNotifier exits a `Camera`'s view.
	**/
	public var onCameraExited(get, never):Signal<(camera:Camera)->Void>;
	@:dox(hide) @:noCompletion inline function get_onCameraExited():Signal<(camera:Camera)->Void> {
		return new Signal(this, "camera_exited", Signal.SignalHandlerCameraVoid.connectSignal, Signal.SignalHandlerCameraVoid.disconnectSignal, Signal.SignalHandlerCameraVoid.isSignalConnected);
	}

	/**
		`screen_entered` signal.
		
		Emitted when the VisibilityNotifier enters the screen.
	**/
	public var onScreenEntered(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onScreenEntered():Signal<Void->Void> {
		return new Signal(this, "screen_entered", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`screen_exited` signal.
		
		Emitted when the VisibilityNotifier exits the screen.
	**/
	public var onScreenExited(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onScreenExited():Signal<Void->Void> {
		return new Signal(this, "screen_exited", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**		
		The VisibilityNotifier's bounding box.
	**/
	@:native("Aabb")
	public var aabb:godot.AABB;

	@:native("new")
	public function new():Void;

	@:native("SetAabb")
	public function setAabb(rect:godot.AABB):Void;

	@:native("GetAabb")
	public function getAabb():godot.AABB;

	/**		
		If `true`, the bounding box is on the screen.
		
		Note: It takes one frame for the node's visibility to be assessed once added to the scene tree, so this method will return `false` right after it is instantiated, even if it will be on screen in the draw pass.
	**/
	@:native("IsOnScreen")
	public function isOnScreen():Bool;
}
