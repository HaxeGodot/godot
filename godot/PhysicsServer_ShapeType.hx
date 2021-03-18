// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.PhysicsServer.ShapeType")
@:csNative
extern enum PhysicsServer_ShapeType {
	/**		
		The `godot.Shape` is a `godot.PlaneShape`.
	**/
	Plane;

	/**		
		The `godot.Shape` is a `godot.RayShape`.
	**/
	Ray;

	/**		
		The `godot.Shape` is a `godot.SphereShape`.
	**/
	Sphere;

	/**		
		The `godot.Shape` is a `godot.BoxShape`.
	**/
	Box;

	/**		
		The `godot.Shape` is a `godot.CapsuleShape`.
	**/
	Capsule;

	/**		
		The `godot.Shape` is a `godot.CylinderShape`.
	**/
	Cylinder;

	/**		
		The `godot.Shape` is a `godot.ConvexPolygonShape`.
	**/
	ConvexPolygon;

	/**		
		The `godot.Shape` is a `godot.ConcavePolygonShape`.
	**/
	ConcavePolygon;

	/**		
		The `godot.Shape` is a `godot.HeightMapShape`.
	**/
	Heightmap;

	/**		
		This constant is used internally by the engine. Any attempt to create this kind of shape results in an error.
	**/
	Custom;
}
