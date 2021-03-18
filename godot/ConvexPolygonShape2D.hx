// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Convex polygon shape for 2D physics. A convex polygon, whatever its shape, is internally decomposed into as many convex polygons as needed to ensure all collision checks against it are always done on convex polygons (which are faster to check).

The main difference between a `godot.ConvexPolygonShape2D` and a `godot.ConcavePolygonShape2D` is that a concave polygon assumes it is concave and uses a more complex method of collision detection, and a convex one forces itself to be convex in order to speed up collision detection.
**/
@:libType
@:csNative
@:native("Godot.ConvexPolygonShape2D")
@:autoBuild(godot.Godot.buildUserClass())
extern class ConvexPolygonShape2D extends godot.Shape2D {
	/**		
		The polygon's list of vertices. Can be in either clockwise or counterclockwise order.
	**/
	@:native("Points")
	public var points:cs.NativeArray<godot.Vector2>;

	@:native("new")
	public function new():Void;

	/**		
		Based on the set of points provided, this creates and assigns the `godot.ConvexPolygonShape2D.points` property using the convex hull algorithm. Removing all unneeded points. See `godot.Geometry.convexHull2d` for details.
	**/
	@:native("SetPointCloud")
	public function setPointCloud(pointCloud:haxe.Rest<godot.Vector2>):Void;

	@:native("SetPoints")
	public function setPoints(points:haxe.Rest<godot.Vector2>):Void;

	@:native("GetPoints")
	public function getPoints():cs.NativeArray<godot.Vector2>;
}
