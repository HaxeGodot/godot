// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
3D box shape that can be a child of a `godot.PhysicsBody` or `godot.Area`.
**/
@:libType
@:csNative
@:native("Godot.BoxShape")
@:autoBuild(godot.Godot.buildUserClass())
extern class BoxShape extends godot.Shape {
	/**		
		The box's half extents. The width, height and depth of this shape is twice the half extents.
	**/
	@:native("Extents")
	public var extents:godot.Vector3;

	@:native("new")
	public function new():Void;

	@:native("SetExtents")
	public function setExtents(extents:godot.Vector3):Void;

	@:native("GetExtents")
	public function getExtents():godot.Vector3;
}
