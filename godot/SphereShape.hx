// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Sphere shape for 3D collisions, which can be set into a `godot.PhysicsBody` or `godot.Area`. This shape is useful for modeling sphere-like 3D objects.
**/
@:libType
@:csNative
@:native("Godot.SphereShape")
@:autoBuild(godot.Godot.buildUserClass())
extern class SphereShape extends godot.Shape {
	/**		
		The sphere's radius. The shape's diameter is double the radius.
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
