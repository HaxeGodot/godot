// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Circular shape for 2D collisions. This shape is useful for modeling balls or small characters and its collision detection with everything else is very fast.
**/
@:libType
@:csNative
@:native("Godot.CircleShape2D")
@:autoBuild(godot.Godot.buildUserClass())
extern class CircleShape2D extends godot.Shape2D {
	/**		
		The circle's radius.
	**/
	@:native("Radius")
	public var radius:Single;

	@:native("new")
	public function new():Void;

	@:native("SetRadius")
	public function setRadius(radius:Single):Void;

	@:native("GetRadius")
	public function getRadius():Single;
}
