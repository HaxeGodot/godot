// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Stores general mouse events information.
**/
@:libType
@:csNative
@:native("Godot.InputEventMouse")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class InputEventMouse extends godot.InputEventWithModifiers {
	/**		
		The global mouse position relative to the current `godot.Viewport` when used in `godot.Control._GuiInput`, otherwise is at 0,0.
	**/
	@:native("GlobalPosition")
	public var globalPosition:godot.Vector2;

	/**		
		The local mouse position relative to the `godot.Viewport`. If used in `godot.Control._GuiInput`, the position is relative to the current `godot.Control` which is under the mouse.
	**/
	@:native("Position")
	public var position:godot.Vector2;

	/**		
		The mouse button mask identifier, one of or a bitwise combination of the `godot.ButtonList` button masks.
	**/
	@:native("ButtonMask")
	public var buttonMask:Int;

	@:native("SetButtonMask")
	public function setButtonMask(buttonMask:Int):Void;

	@:native("GetButtonMask")
	public function getButtonMask():Int;

	@:native("SetPosition")
	public function setPosition(position:godot.Vector2):Void;

	@:native("GetPosition")
	public function getPosition():godot.Vector2;

	@:native("SetGlobalPosition")
	public function setGlobalPosition(globalPosition:godot.Vector2):Void;

	@:native("GetGlobalPosition")
	public function getGlobalPosition():godot.Vector2;
}
