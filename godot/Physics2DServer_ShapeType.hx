// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.Physics2DServer.ShapeType")
@:csNative
extern enum Physics2DServer_ShapeType {
	/**		
		This is the constant for creating line shapes. A line shape is an infinite line with an origin point, and a normal. Thus, it can be used for front/behind checks.
	**/
	Line;

	Ray;

	/**		
		This is the constant for creating segment shapes. A segment shape is a line from a point A to a point B. It can be checked for intersections.
	**/
	Segment;

	/**		
		This is the constant for creating circle shapes. A circle shape only has a radius. It can be used for intersections and inside/outside checks.
	**/
	Circle;

	/**		
		This is the constant for creating rectangle shapes. A rectangle shape is defined by a width and a height. It can be used for intersections and inside/outside checks.
	**/
	Rectangle;

	/**		
		This is the constant for creating capsule shapes. A capsule shape is defined by a radius and a length. It can be used for intersections and inside/outside checks.
	**/
	Capsule;

	/**		
		This is the constant for creating convex polygon shapes. A polygon is defined by a list of points. It can be used for intersections and inside/outside checks. Unlike the `godot.CollisionPolygon2D.polygon` property, polygons modified with `godot.Physics2DServer.shapeSetData` do not verify that the points supplied form is a convex polygon.
	**/
	ConvexPolygon;

	/**		
		This is the constant for creating concave polygon shapes. A polygon is defined by a list of points. It can be used for intersections checks, but not for inside/outside checks.
	**/
	ConcavePolygon;

	/**		
		This constant is used internally by the engine. Any attempt to create this kind of shape results in an error.
	**/
	Custom;
}
