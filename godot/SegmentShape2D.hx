// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Segment shape for 2D collisions. Consists of two points, `a` and `b`.
**/
@:libType
@:csNative
@:native("Godot.SegmentShape2D")
@:autoBuild(godot.Godot.buildUserClass())
extern class SegmentShape2D extends godot.Shape2D {
	/**		
		The segment's second point position.
	**/
	@:native("B")
	public var b:godot.Vector2;

	/**		
		The segment's first point position.
	**/
	@:native("A")
	public var a:godot.Vector2;

	@:native("new")
	public function new():Void;

	@:native("SetA")
	public function setA(a:godot.Vector2):Void;

	@:native("GetA")
	public function getA():godot.Vector2;

	@:native("SetB")
	public function setB(b:godot.Vector2):Void;

	@:native("GetB")
	public function getB():godot.Vector2;
}
