// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Ray shape for 2D collisions. A ray is not really a collision body; instead, it tries to separate itself from whatever is touching its far endpoint. It's often useful for characters.
**/
@:libType
@:csNative
@:native("Godot.RayShape2D")
@:autoBuild(godot.Godot.buildUserClass())
extern class RayShape2D extends godot.Shape2D {
	/**		
		If `true`, allow the shape to return the correct normal.
	**/
	@:native("SlipsOnSlope")
	public var slipsOnSlope:Bool;

	/**		
		The ray's length.
	**/
	@:native("Length")
	public var length:Single;

	@:native("new")
	public function new():Void;

	@:native("SetLength")
	public function setLength(length:Single):Void;

	@:native("GetLength")
	public function getLength():Single;

	@:native("SetSlipsOnSlope")
	public function setSlipsOnSlope(active:Bool):Void;

	@:native("GetSlipsOnSlope")
	public function getSlipsOnSlope():Bool;
}
