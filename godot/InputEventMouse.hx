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
		The global mouse position relative to the current `godot.Viewport`. If used in `godot.Control._GuiInput` and if the current `godot.Control` is not under the mouse, moving it will not update this value.
	**/
	@:native("GlobalPosition")
	public var globalPosition:godot.Vector2;

	/**		
		The local mouse position relative to the `godot.Viewport`. If used in `godot.Control._GuiInput`, the position is relative to the current `godot.Control` which is under the mouse. If the current `godot.Control` is not under the mouse, moving it will not update this value.
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
