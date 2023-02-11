// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Input event type for gamepad buttons. For gamepad analog sticks and joysticks, see `godot.InputEventJoypadMotion`.
**/
@:libType
@:csNative
@:native("Godot.InputEventJoypadButton")
@:autoBuild(godot.Godot.buildUserClass())
extern class InputEventJoypadButton extends godot.InputEvent {
	/**		
		If `true`, the button's state is pressed. If `false`, the button's state is released.
	**/
	@:native("Pressed")
	public var pressed:Bool;

	/**		
		Represents the pressure the user puts on the button with their finger, if the controller supports it. Ranges from `0` to `1`.
	**/
	@:native("Pressure")
	public var pressure:Single;

	/**		
		Button identifier. One of the `godot.JoystickList` button constants.
	**/
	@:native("ButtonIndex")
	public var buttonIndex:Int;

	@:native("new")
	public function new():Void;

	@:native("SetButtonIndex")
	public function setButtonIndex(buttonIndex:Int):Void;

	@:native("GetButtonIndex")
	public function getButtonIndex():Int;

	@:native("SetPressure")
	public function setPressure(pressure:Single):Void;

	@:native("GetPressure")
	public function getPressure():Single;

	@:native("SetPressed")
	public function setPressed(pressed:Bool):Void;
}
