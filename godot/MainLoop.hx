// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
`godot.MainLoop` is the abstract base class for a Godot project's game loop. It is inherited by `godot.SceneTree`, which is the default game loop implementation used in Godot projects, though it is also possible to write and use one's own `godot.MainLoop` subclass instead of the scene tree.

Upon the application start, a `godot.MainLoop` implementation must be provided to the OS; otherwise, the application will exit. This happens automatically (and a `godot.SceneTree` is created) unless a main `godot.Script` is provided from the command line (with e.g. `godot -s my_loop.gd`, which should then be a `godot.MainLoop` implementation.

Here is an example script implementing a simple `godot.MainLoop`:

```

extends MainLoop

var time_elapsed = 0
var keys_typed = []
var quit = false

func _initialize():
print("Initialized:")
print("  Starting time: %s" % str(time_elapsed))

func _idle(delta):
time_elapsed += delta
# Return true to end the main loop.
return quit

func _input_event(event):
# Record keys.
if event is InputEventKey and event.pressed and !event.echo:
keys_typed.append(OS.get_scancode_string(event.scancode))
# Quit on Escape press.
if event.scancode == KEY_ESCAPE:
quit = true
# Quit on any mouse click.
if event is InputEventMouseButton:
quit = true

func _finalize():
print("Finalized:")
print("  End time: %s" % str(time_elapsed))
print("  Keys typed: %s" % var2str(keys_typed))

```
**/
@:libType
@:csNative
@:native("Godot.MainLoop")
@:autoBuild(godot.Godot.buildUserClass())
extern class MainLoop extends godot.Object {
	/**
		`on_request_permissions_result` signal.
		
		Emitted when a user responds to a permission request.
	**/
	public var onOnRequestPermissionsResult(get, never):Signal<(permission:std.String, granted:Bool)->Void>;
	@:dox(hide) inline function get_onOnRequestPermissionsResult():Signal<(permission:std.String, granted:Bool)->Void> {
		return new Signal(this, "on_request_permissions_result", Signal.SignalHandlerStringBoolVoid.connectSignal, Signal.SignalHandlerStringBoolVoid.disconnectSignal, Signal.SignalHandlerStringBoolVoid.isSignalConnected);
	}

	/**		
		Notification received from the OS when the app is paused.
		
		Specific to the Android platform.
	**/
	@:native("NotificationAppPaused")
	public static var NOTIFICATION_APP_PAUSED(default, never):Int;

	/**		
		Notification received from the OS when the app is resumed.
		
		Specific to the Android platform.
	**/
	@:native("NotificationAppResumed")
	public static var NOTIFICATION_APP_RESUMED(default, never):Int;

	/**		
		Notification received from the OS when an update of the Input Method Engine occurs (e.g. change of IME cursor position or composition string).
		
		Specific to the macOS platform.
	**/
	@:native("NotificationOsImeUpdate")
	public static var NOTIFICATION_OS_IME_UPDATE(default, never):Int;

	/**		
		Notification received from Godot's crash handler when the engine is about to crash.
		
		Implemented on desktop platforms if the crash handler is enabled.
	**/
	@:native("NotificationCrash")
	public static var NOTIFICATION_CRASH(default, never):Int;

	/**		
		Notification received from the OS when a request for "About" information is sent.
		
		Specific to the macOS platform.
	**/
	@:native("NotificationWmAbout")
	public static var NOTIFICATION_WM_ABOUT(default, never):Int;

	/**		
		Notification received when translations may have changed. Can be triggered by the user changing the locale. Can be used to respond to language changes, for example to change the UI strings on the fly. Useful when working with the built-in translation support, like `godot.Object.tr`.
	**/
	@:native("NotificationTranslationChanged")
	public static var NOTIFICATION_TRANSLATION_CHANGED(default, never):Int;

	/**		
		Notification received from the OS when the application is exceeding its allocated memory.
		
		Specific to the iOS platform.
	**/
	@:native("NotificationOsMemoryWarning")
	public static var NOTIFICATION_OS_MEMORY_WARNING(default, never):Int;

	/**		
		Notification received from the OS when an unfocus request is sent (e.g. another OS window wants to take the focus).
		
		No supported platforms currently send this notification.
	**/
	@:native("NotificationWmUnfocusRequest")
	public static var NOTIFICATION_WM_UNFOCUS_REQUEST(default, never):Int;

	/**		
		Notification received from the OS when a go back request is sent (e.g. pressing the "Back" button on Android).
		
		Specific to the Android platform.
	**/
	@:native("NotificationWmGoBackRequest")
	public static var NOTIFICATION_WM_GO_BACK_REQUEST(default, never):Int;

	/**		
		Notification received from the OS when a quit request is sent (e.g. closing the window with a "Close" button or Alt+F4).
		
		Implemented on desktop platforms.
	**/
	@:native("NotificationWmQuitRequest")
	public static var NOTIFICATION_WM_QUIT_REQUEST(default, never):Int;

	/**		
		Notification received from the OS when the game window is unfocused.
		
		Implemented on all platforms.
	**/
	@:native("NotificationWmFocusOut")
	public static var NOTIFICATION_WM_FOCUS_OUT(default, never):Int;

	/**		
		Notification received from the OS when the game window is focused.
		
		Implemented on all platforms.
	**/
	@:native("NotificationWmFocusIn")
	public static var NOTIFICATION_WM_FOCUS_IN(default, never):Int;

	/**		
		Notification received from the OS when the mouse leaves the game window.
		
		Implemented on desktop and web platforms.
	**/
	@:native("NotificationWmMouseExit")
	public static var NOTIFICATION_WM_MOUSE_EXIT(default, never):Int;

	/**		
		Notification received from the OS when the mouse enters the game window.
		
		Implemented on desktop and web platforms.
	**/
	@:native("NotificationWmMouseEnter")
	public static var NOTIFICATION_WM_MOUSE_ENTER(default, never):Int;

	@:native("new")
	public function new():Void;

	/**		
		Called when files are dragged from the OS file manager and dropped in the game window. The arguments are a list of file paths and the identifier of the screen where the drag originated.
	**/
	@:native("_DropFiles")
	public function _DropFiles(files:cs.NativeArray<std.String>, fromScreen:Int):Void;

	/**		
		Called before the program exits.
	**/
	@:native("_Finalize")
	public function _Finalize():Void;

	/**		
		Called when the user performs an action in the system global menu (e.g. the Mac OS menu bar).
	**/
	@:native("_GlobalMenuAction")
	public function _GlobalMenuAction(id:Dynamic, meta:Dynamic):Void;

	/**		
		Called each idle frame with the time since the last idle frame as argument (in seconds). Equivalent to `godot.Node._Process`.
		
		If implemented, the method must return a boolean value. `true` ends the main loop, while `false` lets it proceed to the next frame.
	**/
	@:native("_Idle")
	public function _Idle(delta:Single):Bool;

	/**		
		Called once during initialization.
	**/
	@:native("_Initialize")
	public function _Initialize():Void;

	/**		
		Called whenever an `godot.InputEvent` is received by the main loop.
	**/
	@:native("_InputEvent")
	public function _InputEvent(event:godot.InputEvent):Void;

	/**		
		Deprecated callback, does not do anything. Use `godot.MainLoop._InputEvent` to parse text input. Will be removed in Godot 4.0.
	**/
	@:native("_InputText")
	public function _InputText(text:std.String):Void;

	/**		
		Called each physics frame with the time since the last physics frame as argument (in seconds). Equivalent to `godot.Node._PhysicsProcess`.
		
		If implemented, the method must return a boolean value. `true` ends the main loop, while `false` lets it proceed to the next frame.
	**/
	@:native("_Iteration")
	public function _Iteration(delta:Single):Bool;

	/**		
		Should not be called manually, override `godot.MainLoop._InputEvent` instead. Will be removed in Godot 4.0.
	**/
	@:native("InputEvent")
	public function inputEvent(event:godot.InputEvent):Void;

	/**		
		Should not be called manually, override `godot.MainLoop._InputText` instead. Will be removed in Godot 4.0.
	**/
	@:native("InputText")
	public function inputText(text:std.String):Void;

	/**		
		Should not be called manually, override `godot.MainLoop._Initialize` instead. Will be removed in Godot 4.0.
	**/
	@:native("Init")
	public function init():Void;

	/**		
		Should not be called manually, override `godot.MainLoop._Iteration` instead. Will be removed in Godot 4.0.
	**/
	@:native("Iteration")
	public function iteration(delta:Single):Bool;

	/**		
		Should not be called manually, override `godot.MainLoop._Idle` instead. Will be removed in Godot 4.0.
	**/
	@:native("Idle")
	public function idle(delta:Single):Bool;

	/**		
		Should not be called manually, override `godot.MainLoop._Finalize` instead. Will be removed in Godot 4.0.
	**/
	@:native("Finish")
	public function finish():Void;
}
