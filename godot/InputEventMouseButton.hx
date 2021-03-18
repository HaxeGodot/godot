// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Contains mouse click information. See `godot.Node._Input`.
**/
@:libType
@:csNative
@:native("Godot.InputEventMouseButton")
@:autoBuild(godot.Godot.buildUserClass())
extern class InputEventMouseButton extends godot.InputEventMouse {
	/**		
		If `true`, the mouse button's state is a double-click.
	**/
	@:native("Doubleclick")
	public var doubleclick:Bool;

	/**		
		If `true`, the mouse button's state is pressed. If `false`, the mouse button's state is released.
	**/
	@:native("Pressed")
	public var pressed:Bool;

	/**		
		The mouse button identifier, one of the `godot.ButtonList` button or button wheel constants.
	**/
	@:native("ButtonIndex")
	public var buttonIndex:Int;

	/**		
		The amount (or delta) of the event. When used for high-precision scroll events, this indicates the scroll amount (vertical or horizontal). This is only supported on some platforms; the reported sensitivity varies depending on the platform. May be `0` if not supported.
	**/
	@:native("Factor")
	public var factor:Single;

	@:native("new")
	public function new():Void;

	@:native("SetFactor")
	public function setFactor(factor:Single):Void;

	@:native("GetFactor")
	public function getFactor():Single;

	@:native("SetButtonIndex")
	public function setButtonIndex(buttonIndex:Int):Void;

	@:native("GetButtonIndex")
	public function getButtonIndex():Int;

	@:native("SetPressed")
	public function setPressed(pressed:Bool):Void;

	@:native("SetDoubleclick")
	public function setDoubleclick(doubleclick:Bool):Void;

	@:native("IsDoubleclick")
	public function isDoubleclick():Bool;
}
