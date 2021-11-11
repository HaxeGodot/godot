// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A singleton that deals with inputs. This includes key presses, mouse buttons and movement, joypads, and input actions. Actions and their events can be set in the Input Map tab in the Project &gt; Project Settings, or with the `godot.InputMap` class.
**/
@:libType
@:csNative
@:native("Godot.Input")
@:autoBuild(godot.Godot.buildUserClass())
extern class Input {
	/**
		`joy_connection_changed` signal.
		
		Emitted when a joypad device has been connected or disconnected.
	**/
	public static var onJoyConnectionChanged(get, never):Signal<(device:Int, connected:Bool)->Void>;
	@:dox(hide) @:noCompletion inline static function get_onJoyConnectionChanged():Signal<(device:Int, connected:Bool)->Void> {
		return new Signal(SINGLETON, "joy_connection_changed", Signal.SignalHandlerIntBoolVoid.connectSignal, Signal.SignalHandlerIntBoolVoid.disconnectSignal, Signal.SignalHandlerIntBoolVoid.isSignalConnected);
	}

	@:native("Singleton")
	public static var SINGLETON(default, never):godot.Object;

	/**		
		Returns `true` if you are pressing the key. You can pass a `godot.KeyList` constant.
	**/
	@:native("IsKeyPressed")
	public static function isKeyPressed(scancode:Int):Bool;

	/**		
		Returns `true` if you are pressing the mouse button specified with `godot.ButtonList`.
	**/
	@:native("IsMouseButtonPressed")
	public static function isMouseButtonPressed(button:Int):Bool;

	/**		
		Returns `true` if you are pressing the joypad button (see `godot.JoystickList`).
	**/
	@:native("IsJoyButtonPressed")
	public static function isJoyButtonPressed(device:Int, button:Int):Bool;

	#if doc_gen
	/**		
		Returns `true` if you are pressing the action event. Note that if an action has multiple buttons assigned and more than one of them is pressed, releasing one button will release the action, even if some other button assigned to this action is still pressed.
		
		If `exact` is `false`, it ignores the input modifiers for `godot.InputEventKey` and `godot.InputEventMouseButton` events, and the direction for `godot.InputEventJoypadMotion` events.
	**/
	@:native("IsActionPressed")
	public static function isActionPressed(action:std.String, ?exact:Bool):Bool;
	#else
	/**		
		Returns `true` if you are pressing the action event. Note that if an action has multiple buttons assigned and more than one of them is pressed, releasing one button will release the action, even if some other button assigned to this action is still pressed.
		
		If `exact` is `false`, it ignores the input modifiers for `godot.InputEventKey` and `godot.InputEventMouseButton` events, and the direction for `godot.InputEventJoypadMotion` events.
	**/
	@:native("IsActionPressed")
	public static overload function isActionPressed(action:godot.Action):Bool;

	/**		
		Returns `true` if you are pressing the action event. Note that if an action has multiple buttons assigned and more than one of them is pressed, releasing one button will release the action, even if some other button assigned to this action is still pressed.
		
		If `exact` is `false`, it ignores the input modifiers for `godot.InputEventKey` and `godot.InputEventMouseButton` events, and the direction for `godot.InputEventJoypadMotion` events.
	**/
	@:native("IsActionPressed")
	public static overload function isActionPressed(action:godot.Action, exact:Bool):Bool;
	#end

	#if doc_gen
	/**		
		Returns `true` when the user starts pressing the action event, meaning it's `true` only on the frame that the user pressed down the button.
		
		This is useful for code that needs to run only once when an action is pressed, instead of every frame while it's pressed.
		
		If `exact` is `false`, it ignores the input modifiers for `godot.InputEventKey` and `godot.InputEventMouseButton` events, and the direction for `godot.InputEventJoypadMotion` events.
	**/
	@:native("IsActionJustPressed")
	public static function isActionJustPressed(action:std.String, ?exact:Bool):Bool;
	#else
	/**		
		Returns `true` when the user starts pressing the action event, meaning it's `true` only on the frame that the user pressed down the button.
		
		This is useful for code that needs to run only once when an action is pressed, instead of every frame while it's pressed.
		
		If `exact` is `false`, it ignores the input modifiers for `godot.InputEventKey` and `godot.InputEventMouseButton` events, and the direction for `godot.InputEventJoypadMotion` events.
	**/
	@:native("IsActionJustPressed")
	public static overload function isActionJustPressed(action:godot.Action):Bool;

	/**		
		Returns `true` when the user starts pressing the action event, meaning it's `true` only on the frame that the user pressed down the button.
		
		This is useful for code that needs to run only once when an action is pressed, instead of every frame while it's pressed.
		
		If `exact` is `false`, it ignores the input modifiers for `godot.InputEventKey` and `godot.InputEventMouseButton` events, and the direction for `godot.InputEventJoypadMotion` events.
	**/
	@:native("IsActionJustPressed")
	public static overload function isActionJustPressed(action:godot.Action, exact:Bool):Bool;
	#end

	#if doc_gen
	/**		
		Returns `true` when the user stops pressing the action event, meaning it's `true` only on the frame that the user released the button.
		
		If `exact` is `false`, it ignores the input modifiers for `godot.InputEventKey` and `godot.InputEventMouseButton` events, and the direction for `godot.InputEventJoypadMotion` events.
	**/
	@:native("IsActionJustReleased")
	public static function isActionJustReleased(action:std.String, ?exact:Bool):Bool;
	#else
	/**		
		Returns `true` when the user stops pressing the action event, meaning it's `true` only on the frame that the user released the button.
		
		If `exact` is `false`, it ignores the input modifiers for `godot.InputEventKey` and `godot.InputEventMouseButton` events, and the direction for `godot.InputEventJoypadMotion` events.
	**/
	@:native("IsActionJustReleased")
	public static overload function isActionJustReleased(action:godot.Action):Bool;

	/**		
		Returns `true` when the user stops pressing the action event, meaning it's `true` only on the frame that the user released the button.
		
		If `exact` is `false`, it ignores the input modifiers for `godot.InputEventKey` and `godot.InputEventMouseButton` events, and the direction for `godot.InputEventJoypadMotion` events.
	**/
	@:native("IsActionJustReleased")
	public static overload function isActionJustReleased(action:godot.Action, exact:Bool):Bool;
	#end

	#if doc_gen
	/**		
		Returns a value between 0 and 1 representing the intensity of the given action. In a joypad, for example, the further away the axis (analog sticks or L2, R2 triggers) is from the dead zone, the closer the value will be to 1. If the action is mapped to a control that has no axis as the keyboard, the value returned will be 0 or 1.
		
		If `exact` is `false`, it ignores the input modifiers for `godot.InputEventKey` and `godot.InputEventMouseButton` events, and the direction for `godot.InputEventJoypadMotion` events.
	**/
	@:native("GetActionStrength")
	public static function getActionStrength(action:std.String, ?exact:Bool):Single;
	#else
	/**		
		Returns a value between 0 and 1 representing the intensity of the given action. In a joypad, for example, the further away the axis (analog sticks or L2, R2 triggers) is from the dead zone, the closer the value will be to 1. If the action is mapped to a control that has no axis as the keyboard, the value returned will be 0 or 1.
		
		If `exact` is `false`, it ignores the input modifiers for `godot.InputEventKey` and `godot.InputEventMouseButton` events, and the direction for `godot.InputEventJoypadMotion` events.
	**/
	@:native("GetActionStrength")
	public static overload function getActionStrength(action:godot.Action):Single;

	/**		
		Returns a value between 0 and 1 representing the intensity of the given action. In a joypad, for example, the further away the axis (analog sticks or L2, R2 triggers) is from the dead zone, the closer the value will be to 1. If the action is mapped to a control that has no axis as the keyboard, the value returned will be 0 or 1.
		
		If `exact` is `false`, it ignores the input modifiers for `godot.InputEventKey` and `godot.InputEventMouseButton` events, and the direction for `godot.InputEventJoypadMotion` events.
	**/
	@:native("GetActionStrength")
	public static overload function getActionStrength(action:godot.Action, exact:Bool):Single;
	#end

	#if doc_gen
	/**		
		Returns a value between 0 and 1 representing the raw intensity of the given action, ignoring the action's deadzone. In most cases, you should use `godot.Input.getActionStrength` instead.
		
		If `exact` is `false`, it ignores the input modifiers for `godot.InputEventKey` and `godot.InputEventMouseButton` events, and the direction for `godot.InputEventJoypadMotion` events.
	**/
	@:native("GetActionRawStrength")
	public static function getActionRawStrength(action:std.String, ?exact:Bool):Single;
	#else
	/**		
		Returns a value between 0 and 1 representing the raw intensity of the given action, ignoring the action's deadzone. In most cases, you should use `godot.Input.getActionStrength` instead.
		
		If `exact` is `false`, it ignores the input modifiers for `godot.InputEventKey` and `godot.InputEventMouseButton` events, and the direction for `godot.InputEventJoypadMotion` events.
	**/
	@:native("GetActionRawStrength")
	public static overload function getActionRawStrength(action:std.String):Single;

	/**		
		Returns a value between 0 and 1 representing the raw intensity of the given action, ignoring the action's deadzone. In most cases, you should use `godot.Input.getActionStrength` instead.
		
		If `exact` is `false`, it ignores the input modifiers for `godot.InputEventKey` and `godot.InputEventMouseButton` events, and the direction for `godot.InputEventJoypadMotion` events.
	**/
	@:native("GetActionRawStrength")
	public static overload function getActionRawStrength(action:std.String, exact:Bool):Single;
	#end

	/**		
		Get axis input by specifying two actions, one negative and one positive.
		
		This is a shorthand for writing `Input.get_action_strength("positive_action") - Input.get_action_strength("negative_action")`.
	**/
	@:native("GetAxis")
	public static function getAxis(negativeAction:std.String, positiveAction:std.String):Single;

	#if doc_gen
	/**		
		Gets an input vector by specifying four actions for the positive and negative X and Y axes.
		
		This method is useful when getting vector input, such as from a joystick, directional pad, arrows, or WASD. The vector has its length limited to 1 and has a circular deadzone, which is useful for using vector input as movement.
		
		By default, the deadzone is automatically calculated from the average of the action deadzones. However, you can override the deadzone to be whatever you want (on the range of 0 to 1).
	**/
	@:native("GetVector")
	public static function getVector(negativeX:std.String, positiveX:std.String, negativeY:std.String, positiveY:std.String, ?deadzone:Single):godot.Vector2;
	#else
	/**		
		Gets an input vector by specifying four actions for the positive and negative X and Y axes.
		
		This method is useful when getting vector input, such as from a joystick, directional pad, arrows, or WASD. The vector has its length limited to 1 and has a circular deadzone, which is useful for using vector input as movement.
		
		By default, the deadzone is automatically calculated from the average of the action deadzones. However, you can override the deadzone to be whatever you want (on the range of 0 to 1).
	**/
	@:native("GetVector")
	public static overload function getVector(negativeX:std.String, positiveX:std.String, negativeY:std.String, positiveY:std.String):godot.Vector2;

	/**		
		Gets an input vector by specifying four actions for the positive and negative X and Y axes.
		
		This method is useful when getting vector input, such as from a joystick, directional pad, arrows, or WASD. The vector has its length limited to 1 and has a circular deadzone, which is useful for using vector input as movement.
		
		By default, the deadzone is automatically calculated from the average of the action deadzones. However, you can override the deadzone to be whatever you want (on the range of 0 to 1).
	**/
	@:native("GetVector")
	public static overload function getVector(negativeX:std.String, positiveX:std.String, negativeY:std.String, positiveY:std.String, deadzone:Single):godot.Vector2;
	#end

	#if doc_gen
	/**		
		Adds a new mapping entry (in SDL2 format) to the mapping database. Optionally update already connected devices.
	**/
	@:native("AddJoyMapping")
	public static function addJoyMapping(mapping:std.String, ?updateExisting:Bool):Void;
	#else
	/**		
		Adds a new mapping entry (in SDL2 format) to the mapping database. Optionally update already connected devices.
	**/
	@:native("AddJoyMapping")
	public static overload function addJoyMapping(mapping:std.String):Void;

	/**		
		Adds a new mapping entry (in SDL2 format) to the mapping database. Optionally update already connected devices.
	**/
	@:native("AddJoyMapping")
	public static overload function addJoyMapping(mapping:std.String, updateExisting:Bool):Void;
	#end

	/**		
		Removes all mappings from the internal database that match the given GUID.
	**/
	@:native("RemoveJoyMapping")
	public static function removeJoyMapping(guid:std.String):Void;

	/**		
		Notifies the `godot.Input` singleton that a connection has changed, to update the state for the `device` index.
		
		This is used internally and should not have to be called from user scripts. See `joy_connection_changed` for the signal emitted when this is triggered internally.
	**/
	@:native("JoyConnectionChanged")
	public static function joyConnectionChanged(device:Int, connected:Bool, name:std.String, guid:std.String):Void;

	/**		
		Returns `true` if the system knows the specified device. This means that it sets all button and axis indices exactly as defined in `godot.JoystickList`. Unknown joypads are not expected to match these constants, but you can still retrieve events from them.
	**/
	@:native("IsJoyKnown")
	public static function isJoyKnown(device:Int):Bool;

	/**		
		Returns the current value of the joypad axis at given index (see `godot.JoystickList`).
	**/
	@:native("GetJoyAxis")
	public static function getJoyAxis(device:Int, axis:Int):Single;

	/**		
		Returns the name of the joypad at the specified device index.
	**/
	@:native("GetJoyName")
	public static function getJoyName(device:Int):std.String;

	/**		
		Returns a SDL2-compatible device GUID on platforms that use gamepad remapping. Returns `"Default Gamepad"` otherwise.
	**/
	@:native("GetJoyGuid")
	public static function getJoyGuid(device:Int):std.String;

	/**		
		Returns an `godot.Collections_Array` containing the device IDs of all currently connected joypads.
	**/
	@:native("GetConnectedJoypads")
	public static function getConnectedJoypads():godot.collections.Array;

	/**		
		Returns the strength of the joypad vibration: x is the strength of the weak motor, and y is the strength of the strong motor.
	**/
	@:native("GetJoyVibrationStrength")
	public static function getJoyVibrationStrength(device:Int):godot.Vector2;

	/**		
		Returns the duration of the current vibration effect in seconds.
	**/
	@:native("GetJoyVibrationDuration")
	public static function getJoyVibrationDuration(device:Int):Single;

	/**		
		Receives a gamepad button from `godot.JoystickList` and returns its equivalent name as a string.
	**/
	@:native("GetJoyButtonString")
	public static function getJoyButtonString(buttonIndex:Int):std.String;

	/**		
		Returns the index of the provided button name.
	**/
	@:native("GetJoyButtonIndexFromString")
	public static function getJoyButtonIndexFromString(button:std.String):Int;

	/**		
		Receives a `godot.JoystickList` axis and returns its equivalent name as a string.
	**/
	@:native("GetJoyAxisString")
	public static function getJoyAxisString(axisIndex:Int):std.String;

	/**		
		Returns the index of the provided axis name.
	**/
	@:native("GetJoyAxisIndexFromString")
	public static function getJoyAxisIndexFromString(axis:std.String):Int;

	#if doc_gen
	/**		
		Starts to vibrate the joypad. Joypads usually come with two rumble motors, a strong and a weak one. `weak_magnitude` is the strength of the weak motor (between 0 and 1) and `strong_magnitude` is the strength of the strong motor (between 0 and 1). `duration` is the duration of the effect in seconds (a duration of 0 will try to play the vibration indefinitely).
		
		Note: Not every hardware is compatible with long effect durations; it is recommended to restart an effect if it has to be played for more than a few seconds.
	**/
	@:native("StartJoyVibration")
	public static function startJoyVibration(device:Int, weakMagnitude:Single, strongMagnitude:Single, ?duration:Single):Void;
	#else
	/**		
		Starts to vibrate the joypad. Joypads usually come with two rumble motors, a strong and a weak one. `weak_magnitude` is the strength of the weak motor (between 0 and 1) and `strong_magnitude` is the strength of the strong motor (between 0 and 1). `duration` is the duration of the effect in seconds (a duration of 0 will try to play the vibration indefinitely).
		
		Note: Not every hardware is compatible with long effect durations; it is recommended to restart an effect if it has to be played for more than a few seconds.
	**/
	@:native("StartJoyVibration")
	public static overload function startJoyVibration(device:Int, weakMagnitude:Single, strongMagnitude:Single):Void;

	/**		
		Starts to vibrate the joypad. Joypads usually come with two rumble motors, a strong and a weak one. `weak_magnitude` is the strength of the weak motor (between 0 and 1) and `strong_magnitude` is the strength of the strong motor (between 0 and 1). `duration` is the duration of the effect in seconds (a duration of 0 will try to play the vibration indefinitely).
		
		Note: Not every hardware is compatible with long effect durations; it is recommended to restart an effect if it has to be played for more than a few seconds.
	**/
	@:native("StartJoyVibration")
	public static overload function startJoyVibration(device:Int, weakMagnitude:Single, strongMagnitude:Single, duration:Single):Void;
	#end

	/**		
		Stops the vibration of the joypad.
	**/
	@:native("StopJoyVibration")
	public static function stopJoyVibration(device:Int):Void;

	#if doc_gen
	/**		
		Vibrate Android and iOS devices.
		
		Note: It needs `VIBRATE` permission for Android at export settings. iOS does not support duration.
	**/
	@:native("VibrateHandheld")
	public static function vibrateHandheld(?durationMs:Int):Void;
	#else
	/**		
		Vibrate Android and iOS devices.
		
		Note: It needs `VIBRATE` permission for Android at export settings. iOS does not support duration.
	**/
	@:native("VibrateHandheld")
	public static overload function vibrateHandheld():Void;

	/**		
		Vibrate Android and iOS devices.
		
		Note: It needs `VIBRATE` permission for Android at export settings. iOS does not support duration.
	**/
	@:native("VibrateHandheld")
	public static overload function vibrateHandheld(durationMs:Int):Void;
	#end

	/**		
		Returns the gravity of the device's accelerometer sensor, if the device has one. Otherwise, the method returns `Vector3.ZERO`.
		
		Note: This method only works on Android and iOS. On other platforms, it always returns `Vector3.ZERO`. On Android the unit of measurement for each axis is m/s² while on iOS it's a multiple of the Earth's gravitational acceleration `g` (~9.81 m/s²).
	**/
	@:native("GetGravity")
	public static function getGravity():godot.Vector3;

	/**		
		Returns the acceleration of the device's accelerometer sensor, if the device has one. Otherwise, the method returns `Vector3.ZERO`.
		
		Note this method returns an empty `godot.Vector3` when running from the editor even when your device has an accelerometer. You must export your project to a supported device to read values from the accelerometer.
		
		Note: This method only works on iOS, Android, and UWP. On other platforms, it always returns `Vector3.ZERO`. On Android the unit of measurement for each axis is m/s² while on iOS and UWP it's a multiple of the Earth's gravitational acceleration `g` (~9.81 m/s²).
	**/
	@:native("GetAccelerometer")
	public static function getAccelerometer():godot.Vector3;

	/**		
		Returns the magnetic field strength in micro-Tesla for all axes of the device's magnetometer sensor, if the device has one. Otherwise, the method returns `Vector3.ZERO`.
		
		Note: This method only works on Android, iOS and UWP. On other platforms, it always returns `Vector3.ZERO`.
	**/
	@:native("GetMagnetometer")
	public static function getMagnetometer():godot.Vector3;

	/**		
		Returns the rotation rate in rad/s around a device's X, Y, and Z axes of the gyroscope sensor, if the device has one. Otherwise, the method returns `Vector3.ZERO`.
		
		Note: This method only works on Android and iOS. On other platforms, it always returns `Vector3.ZERO`.
	**/
	@:native("GetGyroscope")
	public static function getGyroscope():godot.Vector3;

	/**		
		Sets the gravity value of the accelerometer sensor. Can be used for debugging on devices without a hardware sensor, for example in an editor on a PC.
		
		Note: This value can be immediately overwritten by the hardware sensor value on Android and iOS.
	**/
	@:native("SetGravity")
	public static function setGravity(value:godot.Vector3):Void;

	/**		
		Sets the acceleration value of the accelerometer sensor. Can be used for debugging on devices without a hardware sensor, for example in an editor on a PC.
		
		Note: This value can be immediately overwritten by the hardware sensor value on Android and iOS.
	**/
	@:native("SetAccelerometer")
	public static function setAccelerometer(value:godot.Vector3):Void;

	/**		
		Sets the value of the magnetic field of the magnetometer sensor. Can be used for debugging on devices without a hardware sensor, for example in an editor on a PC.
		
		Note: This value can be immediately overwritten by the hardware sensor value on Android and iOS.
	**/
	@:native("SetMagnetometer")
	public static function setMagnetometer(value:godot.Vector3):Void;

	/**		
		Sets the value of the rotation rate of the gyroscope sensor. Can be used for debugging on devices without a hardware sensor, for example in an editor on a PC.
		
		Note: This value can be immediately overwritten by the hardware sensor value on Android and iOS.
	**/
	@:native("SetGyroscope")
	public static function setGyroscope(value:godot.Vector3):Void;

	/**		
		Returns the mouse speed for the last time the cursor was moved, and this until the next frame where the mouse moves. This means that even if the mouse is not moving, this function will still return the value of the last motion.
	**/
	@:native("GetLastMouseSpeed")
	public static function getLastMouseSpeed():godot.Vector2;

	/**		
		Returns mouse buttons as a bitmask. If multiple mouse buttons are pressed at the same time, the bits are added together.
	**/
	@:native("GetMouseButtonMask")
	public static function getMouseButtonMask():Int;

	/**		
		Sets the mouse mode. See the constants for more information.
	**/
	@:native("SetMouseMode")
	public static function setMouseMode(mode:godot.Input_MouseMode):Void;

	/**		
		Returns the mouse mode. See the constants for more information.
	**/
	@:native("GetMouseMode")
	public static function getMouseMode():godot.Input_MouseMode;

	/**		
		Sets the mouse position to the specified vector.
	**/
	@:native("WarpMousePosition")
	public static function warpMousePosition(to:godot.Vector2):Void;

	#if doc_gen
	/**		
		This will simulate pressing the specified action.
		
		The strength can be used for non-boolean actions, it's ranged between 0 and 1 representing the intensity of the given action.
		
		Note: This method will not cause any `godot.Node._Input` calls. It is intended to be used with `godot.Input.isActionPressed` and `godot.Input.isActionJustPressed`. If you want to simulate `_input`, use `godot.Input.parseInputEvent` instead.
	**/
	@:native("ActionPress")
	public static function actionPress(action:std.String, ?strength:Single):Void;
	#else
	/**		
		This will simulate pressing the specified action.
		
		The strength can be used for non-boolean actions, it's ranged between 0 and 1 representing the intensity of the given action.
		
		Note: This method will not cause any `godot.Node._Input` calls. It is intended to be used with `godot.Input.isActionPressed` and `godot.Input.isActionJustPressed`. If you want to simulate `_input`, use `godot.Input.parseInputEvent` instead.
	**/
	@:native("ActionPress")
	public static overload function actionPress(action:godot.Action):Void;

	/**		
		This will simulate pressing the specified action.
		
		The strength can be used for non-boolean actions, it's ranged between 0 and 1 representing the intensity of the given action.
		
		Note: This method will not cause any `godot.Node._Input` calls. It is intended to be used with `godot.Input.isActionPressed` and `godot.Input.isActionJustPressed`. If you want to simulate `_input`, use `godot.Input.parseInputEvent` instead.
	**/
	@:native("ActionPress")
	public static overload function actionPress(action:godot.Action, strength:Single):Void;
	#end

	/**		
		If the specified action is already pressed, this will release it.
	**/
	@:native("ActionRelease")
	public static function actionRelease(action:godot.Action):Void;

	#if doc_gen
	/**		
		Sets the default cursor shape to be used in the viewport instead of `godot.Input_CursorShape.arrow`.
		
		Note: If you want to change the default cursor shape for `godot.Control`'s nodes, use `godot.Control.mouseDefaultCursorShape` instead.
		
		Note: This method generates an `godot.InputEventMouseMotion` to update cursor immediately.
	**/
	@:native("SetDefaultCursorShape")
	public static function setDefaultCursorShape(?shape:godot.Input_CursorShape):Void;
	#else
	/**		
		Sets the default cursor shape to be used in the viewport instead of `godot.Input_CursorShape.arrow`.
		
		Note: If you want to change the default cursor shape for `godot.Control`'s nodes, use `godot.Control.mouseDefaultCursorShape` instead.
		
		Note: This method generates an `godot.InputEventMouseMotion` to update cursor immediately.
	**/
	@:native("SetDefaultCursorShape")
	public static overload function setDefaultCursorShape():Void;

	/**		
		Sets the default cursor shape to be used in the viewport instead of `godot.Input_CursorShape.arrow`.
		
		Note: If you want to change the default cursor shape for `godot.Control`'s nodes, use `godot.Control.mouseDefaultCursorShape` instead.
		
		Note: This method generates an `godot.InputEventMouseMotion` to update cursor immediately.
	**/
	@:native("SetDefaultCursorShape")
	public static overload function setDefaultCursorShape(shape:godot.Input_CursorShape):Void;
	#end

	/**		
		Returns the currently assigned cursor shape (see `godot.Input_CursorShape`).
	**/
	@:native("GetCurrentCursorShape")
	public static function getCurrentCursorShape():godot.Input_CursorShape;

	#if doc_gen
	/**		
		Sets a custom mouse cursor image, which is only visible inside the game window. The hotspot can also be specified. Passing `null` to the image parameter resets to the system cursor. See `godot.Input_CursorShape` for the list of shapes.
		
		`image`'s size must be lower than 256×256.
		
		`hotspot` must be within `image`'s size.
		
		Note: `godot.AnimatedTexture`s aren't supported as custom mouse cursors. If using an `godot.AnimatedTexture`, only the first frame will be displayed.
		
		Note: Only images imported with the Lossless, Lossy or Uncompressed compression modes are supported. The Video RAM compression mode can't be used for custom cursors.
		
		@param hotspot If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("SetCustomMouseCursor")
	public static function setCustomMouseCursor(image:godot.Resource, ?shape:godot.Input_CursorShape, ?hotspot:Null<godot.Vector2>):Void;
	#else
	/**		
		Sets a custom mouse cursor image, which is only visible inside the game window. The hotspot can also be specified. Passing `null` to the image parameter resets to the system cursor. See `godot.Input_CursorShape` for the list of shapes.
		
		`image`'s size must be lower than 256×256.
		
		`hotspot` must be within `image`'s size.
		
		Note: `godot.AnimatedTexture`s aren't supported as custom mouse cursors. If using an `godot.AnimatedTexture`, only the first frame will be displayed.
		
		Note: Only images imported with the Lossless, Lossy or Uncompressed compression modes are supported. The Video RAM compression mode can't be used for custom cursors.
		
		@param hotspot If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("SetCustomMouseCursor")
	public static overload function setCustomMouseCursor(image:godot.Resource):Void;

	/**		
		Sets a custom mouse cursor image, which is only visible inside the game window. The hotspot can also be specified. Passing `null` to the image parameter resets to the system cursor. See `godot.Input_CursorShape` for the list of shapes.
		
		`image`'s size must be lower than 256×256.
		
		`hotspot` must be within `image`'s size.
		
		Note: `godot.AnimatedTexture`s aren't supported as custom mouse cursors. If using an `godot.AnimatedTexture`, only the first frame will be displayed.
		
		Note: Only images imported with the Lossless, Lossy or Uncompressed compression modes are supported. The Video RAM compression mode can't be used for custom cursors.
		
		@param hotspot If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("SetCustomMouseCursor")
	public static overload function setCustomMouseCursor(image:godot.Resource, shape:godot.Input_CursorShape):Void;

	/**		
		Sets a custom mouse cursor image, which is only visible inside the game window. The hotspot can also be specified. Passing `null` to the image parameter resets to the system cursor. See `godot.Input_CursorShape` for the list of shapes.
		
		`image`'s size must be lower than 256×256.
		
		`hotspot` must be within `image`'s size.
		
		Note: `godot.AnimatedTexture`s aren't supported as custom mouse cursors. If using an `godot.AnimatedTexture`, only the first frame will be displayed.
		
		Note: Only images imported with the Lossless, Lossy or Uncompressed compression modes are supported. The Video RAM compression mode can't be used for custom cursors.
		
		@param hotspot If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("SetCustomMouseCursor")
	public static overload function setCustomMouseCursor(image:godot.Resource, shape:godot.Input_CursorShape, hotspot:Nullable1<godot.Vector2>):Void;
	#end

	/**		
		Feeds an `godot.InputEvent` to the game. Can be used to artificially trigger input events from code. Also generates `godot.Node._Input` calls.
		
		Example:
		
		```
		
		var a = InputEventAction.new()
		a.action = "ui_cancel"
		a.pressed = true
		Input.parse_input_event(a)
		
		```
	**/
	@:native("ParseInputEvent")
	public static function parseInputEvent(event:godot.InputEvent):Void;

	/**		
		Enables or disables the accumulation of similar input events sent by the operating system. When input accumulation is enabled, all input events generated during a frame will be merged and emitted when the frame is done rendering. Therefore, this limits the number of input method calls per second to the rendering FPS.
		
		Input accumulation is enabled by default. It can be disabled to get slightly more precise/reactive input at the cost of increased CPU usage. In applications where drawing freehand lines is required, input accumulation should generally be disabled while the user is drawing the line to get results that closely follow the actual input.
	**/
	@:native("SetUseAccumulatedInput")
	public static function setUseAccumulatedInput(enable:Bool):Void;

	/**		
		Sends all input events which are in the current buffer to the game loop. These events may have been buffered as a result of accumulated input (`godot.Input.setUseAccumulatedInput`) or agile input flushing ().
		
		The engine will already do this itself at key execution points (at least once per frame). However, this can be useful in advanced cases where you want precise control over the timing of event handling.
	**/
	@:native("FlushBufferedEvents")
	public static function flushBufferedEvents():Void;
}
