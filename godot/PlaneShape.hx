// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
An infinite plane shape for 3D collisions. Note that the `godot.Plane`'s normal matters; anything "below" the plane will collide with it. If the `godot.PlaneShape` is used in a `godot.PhysicsBody`, it will cause colliding objects placed "below" it to teleport "above" the plane.
**/
@:libType
@:csNative
@:native("Godot.PlaneShape")
@:autoBuild(godot.Godot.buildUserClass())
extern class PlaneShape extends godot.Shape {
	/**		
		The `godot.Plane` used by the `godot.PlaneShape` for collision.
	**/
	@:native("Plane")
	public var plane:godot.Plane;

	@:native("new")
	public function new():Void;

	@:native("SetPlane")
	public function setPlane(plane:godot.Plane):Void;

	@:native("GetPlane")
	public function getPlane():godot.Plane;
}
