// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Rectangle shape for 2D collisions. This shape is useful for modeling box-like 2D objects.
**/
@:libType
@:csNative
@:native("Godot.RectangleShape2D")
@:autoBuild(godot.Godot.buildUserClass())
extern class RectangleShape2D extends godot.Shape2D {
	/**		
		The rectangle's half extents. The width and height of this shape is twice the half extents.
	**/
	@:native("Extents")
	public var extents:godot.Vector2;

	@:native("new")
	public function new():Void;

	@:native("SetExtents")
	public function setExtents(extents:godot.Vector2):Void;

	@:native("GetExtents")
	public function getExtents():godot.Vector2;
}
