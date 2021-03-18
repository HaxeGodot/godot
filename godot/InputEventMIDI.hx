// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.InputEventMIDI")
@:autoBuild(godot.Godot.buildUserClass())
extern class InputEventMIDI extends godot.InputEvent {
	@:native("ControllerValue")
	public var controllerValue:Int;

	@:native("ControllerNumber")
	public var controllerNumber:Int;

	@:native("Pressure")
	public var pressure:Int;

	@:native("Instrument")
	public var instrument:Int;

	@:native("Velocity")
	public var velocity:Int;

	@:native("Pitch")
	public var pitch:Int;

	@:native("Message")
	public var message:Int;

	@:native("Channel")
	public var channel:Int;

	@:native("new")
	public function new():Void;

	@:native("SetChannel")
	public function setChannel(channel:Int):Void;

	@:native("GetChannel")
	public function getChannel():Int;

	@:native("SetMessage")
	public function setMessage(message:Int):Void;

	@:native("GetMessage")
	public function getMessage():Int;

	@:native("SetPitch")
	public function setPitch(pitch:Int):Void;

	@:native("GetPitch")
	public function getPitch():Int;

	@:native("SetVelocity")
	public function setVelocity(velocity:Int):Void;

	@:native("GetVelocity")
	public function getVelocity():Int;

	@:native("SetInstrument")
	public function setInstrument(instrument:Int):Void;

	@:native("GetInstrument")
	public function getInstrument():Int;

	@:native("SetPressure")
	public function setPressure(pressure:Int):Void;

	@:native("GetPressure")
	public function getPressure():Int;

	@:native("SetControllerNumber")
	public function setControllerNumber(controllerNumber:Int):Void;

	@:native("GetControllerNumber")
	public function getControllerNumber():Int;

	@:native("SetControllerValue")
	public function setControllerValue(controllerValue:Int):Void;

	@:native("GetControllerValue")
	public function getControllerValue():Int;
}
