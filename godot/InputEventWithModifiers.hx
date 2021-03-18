// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Contains keys events information with modifiers support like `Shift` or `Alt`. See `godot.Node._Input`.
**/
@:libType
@:csNative
@:native("Godot.InputEventWithModifiers")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class InputEventWithModifiers extends godot.InputEvent {
	/**		
		State of the `Command` modifier.
	**/
	@:native("Command")
	public var command:Bool;

	/**		
		State of the `Meta` modifier.
	**/
	@:native("Meta")
	public var meta:Bool;

	/**		
		State of the `Ctrl` modifier.
	**/
	@:native("Control")
	public var control:Bool;

	/**		
		State of the `Shift` modifier.
	**/
	@:native("Shift")
	public var shift:Bool;

	/**		
		State of the `Alt` modifier.
	**/
	@:native("Alt")
	public var alt:Bool;

	@:native("SetAlt")
	public function setAlt(enable:Bool):Void;

	@:native("GetAlt")
	public function getAlt():Bool;

	@:native("SetShift")
	public function setShift(enable:Bool):Void;

	@:native("GetShift")
	public function getShift():Bool;

	@:native("SetControl")
	public function setControl(enable:Bool):Void;

	@:native("GetControl")
	public function getControl():Bool;

	@:native("SetMetakey")
	public function setMetakey(enable:Bool):Void;

	@:native("GetMetakey")
	public function getMetakey():Bool;

	@:native("SetCommand")
	public function setCommand(enable:Bool):Void;

	@:native("GetCommand")
	public function getCommand():Bool;
}
