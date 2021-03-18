// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Stores information about joystick motions. One `godot.InputEventJoypadMotion` represents one axis at a time.
**/
@:libType
@:csNative
@:native("Godot.InputEventJoypadMotion")
@:autoBuild(godot.Godot.buildUserClass())
extern class InputEventJoypadMotion extends godot.InputEvent {
	/**		
		Current position of the joystick on the given axis. The value ranges from `-1.0` to `1.0`. A value of `0` means the axis is in its resting position.
	**/
	@:native("AxisValue")
	public var axisValue:Single;

	/**		
		Axis identifier. Use one of the `godot.JoystickList` axis constants.
	**/
	@:native("Axis")
	public var axis:Int;

	@:native("new")
	public function new():Void;

	@:native("SetAxis")
	public function setAxis(axis:Int):Void;

	@:native("GetAxis")
	public function getAxis():Int;

	@:native("SetAxisValue")
	public function setAxisValue(axisValue:Single):Void;

	@:native("GetAxisValue")
	public function getAxisValue():Single;
}
