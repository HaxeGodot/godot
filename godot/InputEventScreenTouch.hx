// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Stores multi-touch press/release information. Supports touch press, touch release and `godot.InputEventScreenTouch.index` for multi-touch count and order.
**/
@:libType
@:csNative
@:native("Godot.InputEventScreenTouch")
@:autoBuild(godot.Godot.buildUserClass())
extern class InputEventScreenTouch extends godot.InputEvent {
	/**		
		If `true`, the touch's state is pressed. If `false`, the touch's state is released.
	**/
	@:native("Pressed")
	public var pressed:Bool;

	/**		
		The touch position.
	**/
	@:native("Position")
	public var position:godot.Vector2;

	/**		
		The touch index in the case of a multi-touch event. One index = one finger.
	**/
	@:native("Index")
	public var index:Int;

	@:native("new")
	public function new():Void;

	@:native("SetIndex")
	public function setIndex(index:Int):Void;

	@:native("GetIndex")
	public function getIndex():Int;

	@:native("SetPosition")
	public function setPosition(position:godot.Vector2):Void;

	@:native("GetPosition")
	public function getPosition():godot.Vector2;

	@:native("SetPressed")
	public function setPressed(pressed:Bool):Void;
}
