// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Contains a generic action which can be targeted from several types of inputs. Actions can be created from the Input Map tab in the Project &gt; Project Settings menu. See `godot.Node._Input`.
**/
@:libType
@:csNative
@:native("Godot.InputEventAction")
@:autoBuild(godot.Godot.buildUserClass())
extern class InputEventAction extends godot.InputEvent {
	/**		
		The action's strength between 0 and 1. This value is considered as equal to 0 if pressed is `false`. The event strength allows faking analog joypad motion events, by specifying how strongly the joypad axis is bent or pressed.
	**/
	@:native("Strength")
	public var strength:Single;

	/**		
		If `true`, the action's state is pressed. If `false`, the action's state is released.
	**/
	@:native("Pressed")
	public var pressed:Bool;

	/**		
		The action's name. Actions are accessed via this `String`.
	**/
	@:native("Action")
	public var action:std.String;

	@:native("new")
	public function new():Void;

	@:native("SetAction")
	public function setAction(action:std.String):Void;

	@:native("GetAction")
	public function getAction():std.String;

	@:native("SetPressed")
	public function setPressed(pressed:Bool):Void;

	@:native("SetStrength")
	public function setStrength(strength:Single):Void;

	@:native("GetStrength")
	public function getStrength():Single;
}
