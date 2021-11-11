// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Contains screen drag information. See `godot.Node._Input`.
**/
@:libType
@:csNative
@:native("Godot.InputEventScreenDrag")
@:autoBuild(godot.Godot.buildUserClass())
extern class InputEventScreenDrag extends godot.InputEvent {
	/**		
		The drag speed.
	**/
	@:native("Speed")
	public var speed:godot.Vector2;

	/**		
		The drag position relative to the previous position (position at the last frame).
	**/
	@:native("Relative")
	public var relative:godot.Vector2;

	/**		
		The drag position.
	**/
	@:native("Position")
	public var position:godot.Vector2;

	/**		
		The drag event index in the case of a multi-drag event.
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

	@:native("SetRelative")
	public function setRelative(relative:godot.Vector2):Void;

	@:native("GetRelative")
	public function getRelative():godot.Vector2;

	@:native("SetSpeed")
	public function setSpeed(speed:godot.Vector2):Void;

	@:native("GetSpeed")
	public function getSpeed():godot.Vector2;
}
