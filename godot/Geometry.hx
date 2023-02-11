// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Geometry provides users with a set of helper functions to create geometric shapes, compute intersections between shapes, and process various other geometric operations.
**/
@:libType
@:csNative
@:native("Godot.Geometry")
@:autoBuild(godot.Godot.buildUserClass())
extern class Geometry {
	@:native("Singleton")
	public static var SINGLETON(default, never):godot.Object;

	/**		
		Returns an array with 6 `godot.Plane`s that describe the sides of a box centered at the origin. The box size is defined by `extents`, which represents one (positive) corner of the box (i.e. half its actual size).
	**/
	@:native("BuildBoxPlanes")
	public static function buildBoxPlanes(extents:godot.Vector3):godot.collections.Array;

	#if doc_gen
	/**		
		Returns an array of `godot.Plane`s closely bounding a faceted cylinder centered at the origin with radius `radius` and height `height`. The parameter `sides` defines how many planes will be generated for the round part of the cylinder. The parameter `axis` describes the axis along which the cylinder is oriented (0 for X, 1 for Y, 2 for Z).
	**/
	@:native("BuildCylinderPlanes")
	public static function buildCylinderPlanes(radius:Single, height:Single, sides:Int, ?axis:godot.Vector3_Axis):godot.collections.Array;
	#else
	/**		
		Returns an array of `godot.Plane`s closely bounding a faceted cylinder centered at the origin with radius `radius` and height `height`. The parameter `sides` defines how many planes will be generated for the round part of the cylinder. The parameter `axis` describes the axis along which the cylinder is oriented (0 for X, 1 for Y, 2 for Z).
	**/
	@:native("BuildCylinderPlanes")
	public static overload function buildCylinderPlanes(radius:Single, height:Single, sides:Int):godot.collections.Array;

	/**		
		Returns an array of `godot.Plane`s closely bounding a faceted cylinder centered at the origin with radius `radius` and height `height`. The parameter `sides` defines how many planes will be generated for the round part of the cylinder. The parameter `axis` describes the axis along which the cylinder is oriented (0 for X, 1 for Y, 2 for Z).
	**/
	@:native("BuildCylinderPlanes")
	public static overload function buildCylinderPlanes(radius:Single, height:Single, sides:Int, axis:godot.Vector3_Axis):godot.collections.Array;
	#end

	#if doc_gen
	/**		
		Returns an array of `godot.Plane`s closely bounding a faceted capsule centered at the origin with radius `radius` and height `height`. The parameter `sides` defines how many planes will be generated for the side part of the capsule, whereas `lats` gives the number of latitudinal steps at the bottom and top of the capsule. The parameter `axis` describes the axis along which the capsule is oriented (0 for X, 1 for Y, 2 for Z).
	**/
	@:native("BuildCapsulePlanes")
	public static function buildCapsulePlanes(radius:Single, height:Single, sides:Int, lats:Int, ?axis:godot.Vector3_Axis):godot.collections.Array;
	#else
	/**		
		Returns an array of `godot.Plane`s closely bounding a faceted capsule centered at the origin with radius `radius` and height `height`. The parameter `sides` defines how many planes will be generated for the side part of the capsule, whereas `lats` gives the number of latitudinal steps at the bottom and top of the capsule. The parameter `axis` describes the axis along which the capsule is oriented (0 for X, 1 for Y, 2 for Z).
	**/
	@:native("BuildCapsulePlanes")
	public static overload function buildCapsulePlanes(radius:Single, height:Single, sides:Int, lats:Int):godot.collections.Array;

	/**		
		Returns an array of `godot.Plane`s closely bounding a faceted capsule centered at the origin with radius `radius` and height `height`. The parameter `sides` defines how many planes will be generated for the side part of the capsule, whereas `lats` gives the number of latitudinal steps at the bottom and top of the capsule. The parameter `axis` describes the axis along which the capsule is oriented (0 for X, 1 for Y, 2 for Z).
	**/
	@:native("BuildCapsulePlanes")
	public static overload function buildCapsulePlanes(radius:Single, height:Single, sides:Int, lats:Int, axis:godot.Vector3_Axis):godot.collections.Array;
	#end

	/**		
		Returns `true` if `point` is inside the circle or if it's located exactly on the circle's boundary, otherwise returns `false`.
	**/
	@:native("IsPointInCircle")
	public static function isPointInCircle(point:godot.Vector2, circlePosition:godot.Vector2, circleRadius:Single):Bool;

	/**		
		Given the 2D segment (`segment_from`, `segment_to`), returns the position on the segment (as a number between 0 and 1) at which the segment hits the circle that is located at position `circle_position` and has radius `circle_radius`. If the segment does not intersect the circle, -1 is returned (this is also the case if the line extending the segment would intersect the circle, but the segment does not).
	**/
	@:native("SegmentIntersectsCircle")
	public static function segmentIntersectsCircle(segmentFrom:godot.Vector2, segmentTo:godot.Vector2, circlePosition:godot.Vector2, circleRadius:Single):Single;

	/**		
		Checks if the two segments (`from_a`, `to_a`) and (`from_b`, `to_b`) intersect. If yes, return the point of intersection as `godot.Vector2`. If no intersection takes place, returns `null`.
	**/
	@:native("SegmentIntersectsSegment2d")
	public static function segmentIntersectsSegment2d(fromA:godot.Vector2, toA:godot.Vector2, fromB:godot.Vector2, toB:godot.Vector2):Dynamic;

	/**		
		Checks if the two lines (`from_a`, `dir_a`) and (`from_b`, `dir_b`) intersect. If yes, return the point of intersection as `godot.Vector2`. If no intersection takes place, returns `null`.
		
		Note: The lines are specified using direction vectors, not end points.
	**/
	@:native("LineIntersectsLine2d")
	public static function lineIntersectsLine2d(fromA:godot.Vector2, dirA:godot.Vector2, fromB:godot.Vector2, dirB:godot.Vector2):Dynamic;

	/**		
		Given the two 2D segments (`p1`, `q1`) and (`p2`, `q2`), finds those two points on the two segments that are closest to each other. Returns a `godot.Vector2` that contains this point on (`p1`, `q1`) as well the accompanying point on (`p2`, `q2`).
	**/
	public static extern inline function getClosestPointsBetweenSegments2d(p1:godot.Vector2, q1:godot.Vector2, p2:godot.Vector2, q2:godot.Vector2):std.Array<godot.Vector2> {
		return cs.Lib.array(cs.Syntax.code("GetClosestPointsBetweenSegments2d({0}, {1}, {2}, {3})", p1, q1, p2, q2));
	}

	/**		
		Given the two 3D segments (`p1`, `p2`) and (`q1`, `q2`), finds those two points on the two segments that are closest to each other. Returns a `godot.Vector3` that contains this point on (`p1`, `p2`) as well the accompanying point on (`q1`, `q2`).
	**/
	public static extern inline function getClosestPointsBetweenSegments(p1:godot.Vector3, p2:godot.Vector3, q1:godot.Vector3, q2:godot.Vector3):std.Array<godot.Vector3> {
		return cs.Lib.array(cs.Syntax.code("GetClosestPointsBetweenSegments({0}, {1}, {2}, {3})", p1, p2, q1, q2));
	}

	/**		
		Returns the 2D point on the 2D segment (`s1`, `s2`) that is closest to `point`. The returned point will always be inside the specified segment.
	**/
	@:native("GetClosestPointToSegment2d")
	public static function getClosestPointToSegment2d(point:godot.Vector2, s1:godot.Vector2, s2:godot.Vector2):godot.Vector2;

	/**		
		Returns the 3D point on the 3D segment (`s1`, `s2`) that is closest to `point`. The returned point will always be inside the specified segment.
	**/
	@:native("GetClosestPointToSegment")
	public static function getClosestPointToSegment(point:godot.Vector3, s1:godot.Vector3, s2:godot.Vector3):godot.Vector3;

	/**		
		Returns the 2D point on the 2D line defined by (`s1`, `s2`) that is closest to `point`. The returned point can be inside the segment (`s1`, `s2`) or outside of it, i.e. somewhere on the line extending from the segment.
	**/
	@:native("GetClosestPointToSegmentUncapped2d")
	public static function getClosestPointToSegmentUncapped2d(point:godot.Vector2, s1:godot.Vector2, s2:godot.Vector2):godot.Vector2;

	/**		
		Returns the 3D point on the 3D line defined by (`s1`, `s2`) that is closest to `point`. The returned point can be inside the segment (`s1`, `s2`) or outside of it, i.e. somewhere on the line extending from the segment.
	**/
	@:native("GetClosestPointToSegmentUncapped")
	public static function getClosestPointToSegmentUncapped(point:godot.Vector3, s1:godot.Vector3, s2:godot.Vector3):godot.Vector3;

	/**		
		Used internally by the engine.
	**/
	@:native("GetUv84NormalBit")
	public static function getUv84NormalBit(normal:godot.Vector3):Int;

	/**		
		Tests if the 3D ray starting at `from` with the direction of `dir` intersects the triangle specified by `a`, `b` and `c`. If yes, returns the point of intersection as `godot.Vector3`. If no intersection takes place, an empty `Variant` is returned.
	**/
	@:native("RayIntersectsTriangle")
	public static function rayIntersectsTriangle(from:godot.Vector3, dir:godot.Vector3, a:godot.Vector3, b:godot.Vector3, c:godot.Vector3):Dynamic;

	/**		
		Tests if the segment (`from`, `to`) intersects the triangle `a`, `b`, `c`. If yes, returns the point of intersection as `godot.Vector3`. If no intersection takes place, an empty `Variant` is returned.
	**/
	@:native("SegmentIntersectsTriangle")
	public static function segmentIntersectsTriangle(from:godot.Vector3, to:godot.Vector3, a:godot.Vector3, b:godot.Vector3, c:godot.Vector3):Dynamic;

	/**		
		Checks if the segment (`from`, `to`) intersects the sphere that is located at `sphere_position` and has radius `sphere_radius`. If no, returns an empty `godot.Vector3`. If yes, returns a `godot.Vector3` containing the point of intersection and the sphere's normal at the point of intersection.
	**/
	public static extern inline function segmentIntersectsSphere(from:godot.Vector3, to:godot.Vector3, spherePosition:godot.Vector3, sphereRadius:Single):std.Array<godot.Vector3> {
		return cs.Lib.array(cs.Syntax.code("SegmentIntersectsSphere({0}, {1}, {2}, {3})", from, to, spherePosition, sphereRadius));
	}

	/**		
		Checks if the segment (`from`, `to`) intersects the cylinder with height `height` that is centered at the origin and has radius `radius`. If no, returns an empty `godot.Vector3`. If an intersection takes place, the returned array contains the point of intersection and the cylinder's normal at the point of intersection.
	**/
	public static extern inline function segmentIntersectsCylinder(from:godot.Vector3, to:godot.Vector3, height:Single, radius:Single):std.Array<godot.Vector3> {
		return cs.Lib.array(cs.Syntax.code("SegmentIntersectsCylinder({0}, {1}, {2}, {3})", from, to, height, radius));
	}

	/**		
		Given a convex hull defined though the `godot.Plane`s in the array `planes`, tests if the segment (`from`, `to`) intersects with that hull. If an intersection is found, returns a `godot.Vector3` containing the point the intersection and the hull's normal. If no intersecion is found, an the returned array is empty.
	**/
	public static extern inline function segmentIntersectsConvex(from:godot.Vector3, to:godot.Vector3, planes:godot.collections.Array):std.Array<godot.Vector3> {
		return cs.Lib.array(cs.Syntax.code("SegmentIntersectsConvex({0}, {1}, {2})", from, to, planes));
	}

	/**		
		Returns if `point` is inside the triangle specified by `a`, `b` and `c`.
	**/
	@:native("PointIsInsideTriangle")
	public static function pointIsInsideTriangle(point:godot.Vector2, a:godot.Vector2, b:godot.Vector2, c:godot.Vector2):Bool;

	/**		
		Returns `true` if `polygon`'s vertices are ordered in clockwise order, otherwise returns `false`.
	**/
	@:native("IsPolygonClockwise")
	public static function isPolygonClockwise(polygon:HaxeArray<godot.Vector2>):Bool;

	/**		
		Returns `true` if `point` is inside `polygon` or if it's located exactly on polygon's boundary, otherwise returns `false`.
	**/
	@:native("IsPointInPolygon")
	public static function isPointInPolygon(point:godot.Vector2, polygon:HaxeArray<godot.Vector2>):Bool;

	/**		
		Triangulates the polygon specified by the points in `polygon`. Returns a `Int` where each triangle consists of three consecutive point indices into `polygon` (i.e. the returned array will have `n * 3` elements, with `n` being the number of found triangles). Output triangles will always be counter clockwise, and the contour will be flipped if it's clockwise. If the triangulation did not succeed, an empty `Int` is returned.
	**/
	public static extern inline function triangulatePolygon(polygon:HaxeArray<godot.Vector2>):std.Array<Int> {
		return cs.Lib.array(cs.Syntax.code("TriangulatePolygon({0})", polygon));
	}

	/**		
		Triangulates the area specified by discrete set of `points` such that no point is inside the circumcircle of any resulting triangle. Returns a `Int` where each triangle consists of three consecutive point indices into `points` (i.e. the returned array will have `n * 3` elements, with `n` being the number of found triangles). If the triangulation did not succeed, an empty `Int` is returned.
	**/
	public static extern inline function triangulateDelaunay2d(points:HaxeArray<godot.Vector2>):std.Array<Int> {
		return cs.Lib.array(cs.Syntax.code("TriangulateDelaunay2d({0})", points));
	}

	/**		
		Given an array of `godot.Vector2`s, returns the convex hull as a list of points in counterclockwise order. The last point is the same as the first one.
	**/
	public static extern inline function convexHull2d(points:HaxeArray<godot.Vector2>):std.Array<godot.Vector2> {
		return cs.Lib.array(cs.Syntax.code("ConvexHull2d({0})", points));
	}

	/**		
		Clips the polygon defined by the points in `points` against the `plane` and returns the points of the clipped polygon.
	**/
	public static extern inline function clipPolygon(points:HaxeArray<godot.Vector3>, plane:godot.Plane):std.Array<godot.Vector3> {
		return cs.Lib.array(cs.Syntax.code("ClipPolygon({0}, {1})", points, plane));
	}

	/**		
		Merges (combines) `polygon_a` and `polygon_b` and returns an array of merged polygons. This performs `godot.Geometry_PolyBooleanOperation.union` between polygons.
		
		The operation may result in an outer polygon (boundary) and multiple inner polygons (holes) produced which could be distinguished by calling `godot.Geometry.isPolygonClockwise`.
	**/
	@:native("MergePolygons2d")
	public static function mergePolygons2d(polygonA:HaxeArray<godot.Vector2>, polygonB:HaxeArray<godot.Vector2>):godot.collections.Array;

	/**		
		Clips `polygon_a` against `polygon_b` and returns an array of clipped polygons. This performs `godot.Geometry_PolyBooleanOperation.difference` between polygons. Returns an empty array if `polygon_b` completely overlaps `polygon_a`.
		
		If `polygon_b` is enclosed by `polygon_a`, returns an outer polygon (boundary) and inner polygon (hole) which could be distinguished by calling `godot.Geometry.isPolygonClockwise`.
	**/
	@:native("ClipPolygons2d")
	public static function clipPolygons2d(polygonA:HaxeArray<godot.Vector2>, polygonB:HaxeArray<godot.Vector2>):godot.collections.Array;

	/**		
		Intersects `polygon_a` with `polygon_b` and returns an array of intersected polygons. This performs `godot.Geometry_PolyBooleanOperation.intersection` between polygons. In other words, returns common area shared by polygons. Returns an empty array if no intersection occurs.
		
		The operation may result in an outer polygon (boundary) and inner polygon (hole) produced which could be distinguished by calling `godot.Geometry.isPolygonClockwise`.
	**/
	@:native("IntersectPolygons2d")
	public static function intersectPolygons2d(polygonA:HaxeArray<godot.Vector2>, polygonB:HaxeArray<godot.Vector2>):godot.collections.Array;

	/**		
		Mutually excludes common area defined by intersection of `polygon_a` and `polygon_b` (see `godot.Geometry.intersectPolygons2d`) and returns an array of excluded polygons. This performs `godot.Geometry_PolyBooleanOperation.xor` between polygons. In other words, returns all but common area between polygons.
		
		The operation may result in an outer polygon (boundary) and inner polygon (hole) produced which could be distinguished by calling `godot.Geometry.isPolygonClockwise`.
	**/
	@:native("ExcludePolygons2d")
	public static function excludePolygons2d(polygonA:HaxeArray<godot.Vector2>, polygonB:HaxeArray<godot.Vector2>):godot.collections.Array;

	/**		
		Clips `polyline` against `polygon` and returns an array of clipped polylines. This performs `godot.Geometry_PolyBooleanOperation.difference` between the polyline and the polygon. This operation can be thought of as cutting a line with a closed shape.
	**/
	@:native("ClipPolylineWithPolygon2d")
	public static function clipPolylineWithPolygon2d(polyline:HaxeArray<godot.Vector2>, polygon:HaxeArray<godot.Vector2>):godot.collections.Array;

	/**		
		Intersects `polyline` with `polygon` and returns an array of intersected polylines. This performs `godot.Geometry_PolyBooleanOperation.intersection` between the polyline and the polygon. This operation can be thought of as chopping a line with a closed shape.
	**/
	@:native("IntersectPolylineWithPolygon2d")
	public static function intersectPolylineWithPolygon2d(polyline:HaxeArray<godot.Vector2>, polygon:HaxeArray<godot.Vector2>):godot.collections.Array;

	#if doc_gen
	/**		
		Inflates or deflates `polygon` by `delta` units (pixels). If `delta` is positive, makes the polygon grow outward. If `delta` is negative, shrinks the polygon inward. Returns an array of polygons because inflating/deflating may result in multiple discrete polygons. Returns an empty array if `delta` is negative and the absolute value of it approximately exceeds the minimum bounding rectangle dimensions of the polygon.
		
		Each polygon's vertices will be rounded as determined by `join_type`, see `godot.Geometry_PolyJoinType`.
		
		The operation may result in an outer polygon (boundary) and inner polygon (hole) produced which could be distinguished by calling `godot.Geometry.isPolygonClockwise`.
		
		Note: To translate the polygon's vertices specifically, use the `Transform2D.xform` method:
		
		```
		
		var polygon = PoolVector2Array([Vector2(0, 0), Vector2(100, 0), Vector2(100, 100), Vector2(0, 100)])
		var offset = Vector2(50, 50)
		polygon = Transform2D(0, offset).xform(polygon)
		print(polygon) # prints [Vector2(50, 50), Vector2(150, 50), Vector2(150, 150), Vector2(50, 150)]
		
		```
	**/
	@:native("OffsetPolygon2d")
	public static function offsetPolygon2d(polygon:std.Array<godot.Vector2>, delta:Single, ?joinType:godot.Geometry_PolyJoinType):godot.collections.Array;
	#else
	/**		
		Inflates or deflates `polygon` by `delta` units (pixels). If `delta` is positive, makes the polygon grow outward. If `delta` is negative, shrinks the polygon inward. Returns an array of polygons because inflating/deflating may result in multiple discrete polygons. Returns an empty array if `delta` is negative and the absolute value of it approximately exceeds the minimum bounding rectangle dimensions of the polygon.
		
		Each polygon's vertices will be rounded as determined by `join_type`, see `godot.Geometry_PolyJoinType`.
		
		The operation may result in an outer polygon (boundary) and inner polygon (hole) produced which could be distinguished by calling `godot.Geometry.isPolygonClockwise`.
		
		Note: To translate the polygon's vertices specifically, use the `Transform2D.xform` method:
		
		```
		
		var polygon = PoolVector2Array([Vector2(0, 0), Vector2(100, 0), Vector2(100, 100), Vector2(0, 100)])
		var offset = Vector2(50, 50)
		polygon = Transform2D(0, offset).xform(polygon)
		print(polygon) # prints [Vector2(50, 50), Vector2(150, 50), Vector2(150, 150), Vector2(50, 150)]
		
		```
	**/
	@:native("OffsetPolygon2d")
	public static overload function offsetPolygon2d(polygon:HaxeArray<godot.Vector2>, delta:Single):godot.collections.Array;

	/**		
		Inflates or deflates `polygon` by `delta` units (pixels). If `delta` is positive, makes the polygon grow outward. If `delta` is negative, shrinks the polygon inward. Returns an array of polygons because inflating/deflating may result in multiple discrete polygons. Returns an empty array if `delta` is negative and the absolute value of it approximately exceeds the minimum bounding rectangle dimensions of the polygon.
		
		Each polygon's vertices will be rounded as determined by `join_type`, see `godot.Geometry_PolyJoinType`.
		
		The operation may result in an outer polygon (boundary) and inner polygon (hole) produced which could be distinguished by calling `godot.Geometry.isPolygonClockwise`.
		
		Note: To translate the polygon's vertices specifically, use the `Transform2D.xform` method:
		
		```
		
		var polygon = PoolVector2Array([Vector2(0, 0), Vector2(100, 0), Vector2(100, 100), Vector2(0, 100)])
		var offset = Vector2(50, 50)
		polygon = Transform2D(0, offset).xform(polygon)
		print(polygon) # prints [Vector2(50, 50), Vector2(150, 50), Vector2(150, 150), Vector2(50, 150)]
		
		```
	**/
	@:native("OffsetPolygon2d")
	public static overload function offsetPolygon2d(polygon:HaxeArray<godot.Vector2>, delta:Single, joinType:godot.Geometry_PolyJoinType):godot.collections.Array;
	#end

	#if doc_gen
	/**		
		Inflates or deflates `polyline` by `delta` units (pixels), producing polygons. If `delta` is positive, makes the polyline grow outward. Returns an array of polygons because inflating/deflating may result in multiple discrete polygons. If `delta` is negative, returns an empty array.
		
		Each polygon's vertices will be rounded as determined by `join_type`, see `godot.Geometry_PolyJoinType`.
		
		Each polygon's endpoints will be rounded as determined by `end_type`, see `godot.Geometry_PolyEndType`.
		
		The operation may result in an outer polygon (boundary) and inner polygon (hole) produced which could be distinguished by calling `godot.Geometry.isPolygonClockwise`.
	**/
	@:native("OffsetPolyline2d")
	public static function offsetPolyline2d(polyline:std.Array<godot.Vector2>, delta:Single, ?joinType:godot.Geometry_PolyJoinType, ?endType:godot.Geometry_PolyEndType):godot.collections.Array;
	#else
	/**		
		Inflates or deflates `polyline` by `delta` units (pixels), producing polygons. If `delta` is positive, makes the polyline grow outward. Returns an array of polygons because inflating/deflating may result in multiple discrete polygons. If `delta` is negative, returns an empty array.
		
		Each polygon's vertices will be rounded as determined by `join_type`, see `godot.Geometry_PolyJoinType`.
		
		Each polygon's endpoints will be rounded as determined by `end_type`, see `godot.Geometry_PolyEndType`.
		
		The operation may result in an outer polygon (boundary) and inner polygon (hole) produced which could be distinguished by calling `godot.Geometry.isPolygonClockwise`.
	**/
	@:native("OffsetPolyline2d")
	public static overload function offsetPolyline2d(polyline:HaxeArray<godot.Vector2>, delta:Single):godot.collections.Array;

	/**		
		Inflates or deflates `polyline` by `delta` units (pixels), producing polygons. If `delta` is positive, makes the polyline grow outward. Returns an array of polygons because inflating/deflating may result in multiple discrete polygons. If `delta` is negative, returns an empty array.
		
		Each polygon's vertices will be rounded as determined by `join_type`, see `godot.Geometry_PolyJoinType`.
		
		Each polygon's endpoints will be rounded as determined by `end_type`, see `godot.Geometry_PolyEndType`.
		
		The operation may result in an outer polygon (boundary) and inner polygon (hole) produced which could be distinguished by calling `godot.Geometry.isPolygonClockwise`.
	**/
	@:native("OffsetPolyline2d")
	public static overload function offsetPolyline2d(polyline:HaxeArray<godot.Vector2>, delta:Single, joinType:godot.Geometry_PolyJoinType):godot.collections.Array;

	/**		
		Inflates or deflates `polyline` by `delta` units (pixels), producing polygons. If `delta` is positive, makes the polyline grow outward. Returns an array of polygons because inflating/deflating may result in multiple discrete polygons. If `delta` is negative, returns an empty array.
		
		Each polygon's vertices will be rounded as determined by `join_type`, see `godot.Geometry_PolyJoinType`.
		
		Each polygon's endpoints will be rounded as determined by `end_type`, see `godot.Geometry_PolyEndType`.
		
		The operation may result in an outer polygon (boundary) and inner polygon (hole) produced which could be distinguished by calling `godot.Geometry.isPolygonClockwise`.
	**/
	@:native("OffsetPolyline2d")
	public static overload function offsetPolyline2d(polyline:HaxeArray<godot.Vector2>, delta:Single, joinType:godot.Geometry_PolyJoinType, endType:godot.Geometry_PolyEndType):godot.collections.Array;
	#end

	/**		
		Given an array of `godot.Vector2`s representing tiles, builds an atlas. The returned dictionary has two keys: `points` is a vector of `godot.Vector2` that specifies the positions of each tile, `size` contains the overall size of the whole atlas as `godot.Vector2`.
	**/
	@:native("MakeAtlas")
	public static function makeAtlas(sizes:HaxeArray<godot.Vector2>):godot.collections.Dictionary;
}
