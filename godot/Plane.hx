// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Plane represents a normalized plane equation.
"Over" or "Above" the plane is considered the side of
the plane towards where the normal is pointing.
**/
#if doc_gen
@:struct
@:libType
@:csNative
@:native("Godot.Plane")
@:autoBuild(godot.Godot.buildUserClass())
extern class Plane extends cs.system.ValueType implements cs.system.IEquatable_1<godot.Plane> {
#else
@:forward
@:forwardStatics
extern abstract Plane(Plane_) from Plane_ to Plane_ {
#end
	#if !doc_gen
	/**		
		Constructs a `godot.Plane` from four values.
		`a`, `b` and `c` become the
		components of the resulting plane's `godot.Plane.normal` vector.
		`d` becomes the plane's distance from the origin.
		
		@param a The X component of the plane's normal vector.
		@param b The Y component of the plane's normal vector.
		@param c The Z component of the plane's normal vector.
		@param d The plane's distance from the origin. This value is typically non-negative.
	**/
	public overload inline function new(a:Single, b:Single, c:Single, d:Single) {
		this = new Plane_(a, b, c, d);
	}
	#end

	#if !doc_gen
	/**		
		Constructs a `godot.Plane` from a `normal` vector and
		the plane's distance to the origin `d`.
		
		@param normal The normal of the plane, must be normalized.
		@param d The plane's distance from the origin. This value is typically non-negative.
	**/
	public overload inline function new(normal:godot.Vector3, d:Single) {
		this = new Plane_(normal, d);
	}
	#end

	#if !doc_gen
	/**		
		Constructs a `godot.Plane` from the three points, given in clockwise order.
		
		@param v1 The first point.
		@param v2 The second point.
		@param v3 The third point.
	**/
	public overload inline function new(v1:godot.Vector3, v2:godot.Vector3, v3:godot.Vector3) {
		this = new Plane_(v1, v2, v3);
	}
	#end

	/**
		Operator overload for -`godot.Plane`.
	**/
	@:op(-A) static inline function op_UnaryNegation(plane:godot.Plane):godot.Plane {
		return cs.Syntax.code("-{0}", plane);
	}

	/**
		Operator overload for `godot.Plane` == `godot.Plane`.
	**/
	@:op(A == B) static inline function op_Equality(left:godot.Plane, right:godot.Plane):Bool {
		return cs.Syntax.code("{0} == {1}", left, right);
	}

	/**
		Operator overload for `godot.Plane` != `godot.Plane`.
	**/
	@:op(A != B) static inline function op_Inequality(left:godot.Plane, right:godot.Plane):Bool {
		return cs.Syntax.code("{0} != {1}", left, right);
	}
#if !doc_gen
}

@:struct
@:libType
@:csNative
@:native("Godot.Plane")
@:autoBuild(godot.Godot.buildUserClass())
extern class Plane_ extends cs.system.ValueType implements cs.system.IEquatable_1<godot.Plane> {
#end
	/**		
		A `godot.Plane` that extends in the X and Y axes (normal vector points +Z).
		
		Value: Equivalent to `new Plane(0, 0, 1, 0)`.
	**/
	@:native("PlaneXY")
	public static var PLANE_X_Y(default, never):godot.Plane;

	/**		
		A `godot.Plane` that extends in the X and Z axes (normal vector points +Y).
		
		Value: Equivalent to `new Plane(0, 1, 0, 0)`.
	**/
	@:native("PlaneXZ")
	public static var PLANE_X_Z(default, never):godot.Plane;

	/**		
		A `godot.Plane` that extends in the Y and Z axes (normal vector points +X).
		
		Value: Equivalent to `new Plane(1, 0, 0, 0)`.
	**/
	@:native("PlaneYZ")
	public static var PLANE_Y_Z(default, never):godot.Plane;

	/**		
		The center of the plane, the point where the normal line intersects the plane.
		
		Value: Equivalent to `godot.Plane.normal` multiplied by `godot.Plane.d`.
	**/
	@:native("Center")
	public var center:godot.Vector3;

	/**		
		The distance from the origin to the plane (in the direction of
		`godot.Plane.normal`). This value is typically non-negative.
		In the scalar equation of the plane `ax + by + cz = d`,
		this is `d`, while the `(a, b, c)` coordinates are represented
		by the `godot.Plane.normal` property.
		
		Value: The plane's distance from the origin.
	**/
	@:native("D")
	public var d:Single;

	/**		
		The Z component of the plane's normal vector.
		
		Value: Equivalent to `godot.Plane.normal`'s Z value.
	**/
	@:native("z")
	public var z:Single;

	/**		
		The Y component of the plane's normal vector.
		
		Value: Equivalent to `godot.Plane.normal`'s Y value.
	**/
	@:native("y")
	public var y:Single;

	/**		
		The X component of the plane's normal vector.
		
		Value: Equivalent to `godot.Plane.normal`'s X value.
	**/
	@:native("x")
	public var x:Single;

	/**		
		The normal of the plane, which must be normalized.
		In the scalar equation of the plane `ax + by + cz = d`, this is
		the vector `(a, b, c)`, where `d` is the `godot.Plane.d` property.
		
		Value: Equivalent to `godot.Plane.x`, `godot.Plane.y`, and `godot.Plane.z`.
	**/
	@:native("Normal")
	public var normal:godot.Vector3;

	/**		
		Returns the shortest distance from this plane to the position `point`.
		
		@param point The position to use for the calculation.
		@returns The shortest distance.
	**/
	@:native("DistanceTo")
	public function distanceTo(point:godot.Vector3):Single;

	/**		
		The center of the plane, the point where the normal line intersects the plane.
		Deprecated, use the Center property instead.
		
		@returns Equivalent to `godot.Plane.normal` multiplied by `D`.
	**/
	@:native("GetAnyPoint")
	public function getAnyPoint():godot.Vector3;

	#if doc_gen
	/**		
		Returns `true` if point is inside the plane.
		Comparison uses a custom minimum epsilon threshold.
		
		@param point The point to check.
		@param epsilon The tolerance threshold.
		@returns A `bool` for whether or not the plane has the point.
	**/
	@:native("HasPoint")
	public function hasPoint(point:godot.Vector3, ?epsilon:Single):Bool;
	#else
	/**		
		Returns `true` if point is inside the plane.
		Comparison uses a custom minimum epsilon threshold.
		
		@param point The point to check.
		@param epsilon The tolerance threshold.
		@returns A `bool` for whether or not the plane has the point.
	**/
	@:native("HasPoint")
	public overload function hasPoint(point:godot.Vector3):Bool;

	/**		
		Returns `true` if point is inside the plane.
		Comparison uses a custom minimum epsilon threshold.
		
		@param point The point to check.
		@param epsilon The tolerance threshold.
		@returns A `bool` for whether or not the plane has the point.
	**/
	@:native("HasPoint")
	public overload function hasPoint(point:godot.Vector3, epsilon:Single):Bool;
	#end

	/**		
		Returns the intersection point of the three planes: `b`, `c`,
		and this plane. If no intersection is found, `null` is returned.
		
		@param b One of the three planes to use in the calculation.
		@param c One of the three planes to use in the calculation.
		@returns The intersection, or `null` if none is found.
	**/
	@:native("Intersect3")
	public function intersect3(b:godot.Plane, c:godot.Plane):cs.system.Nullable_1<godot.Vector3>;

	/**		
		Returns the intersection point of a ray consisting of the position `from`
		and the direction normal `dir` with this plane.
		If no intersection is found, `null` is returned.
		
		@param from The start of the ray.
		@param dir The direction of the ray, normalized.
		@returns The intersection, or `null` if none is found.
	**/
	@:native("IntersectRay")
	public function intersectRay(from:godot.Vector3, dir:godot.Vector3):cs.system.Nullable_1<godot.Vector3>;

	/**		
		Returns the intersection point of a line segment from
		position `begin` to position `end` with this plane.
		If no intersection is found, `null` is returned.
		
		@param begin The start of the line segment.
		@param end The end of the line segment.
		@returns The intersection, or `null` if none is found.
	**/
	@:native("IntersectSegment")
	public function intersectSegment(begin:godot.Vector3, end:godot.Vector3):cs.system.Nullable_1<godot.Vector3>;

	/**		
		Returns `true` if `point` is located above the plane.
		
		@param point The point to check.
		@returns A `bool` for whether or not the point is above the plane.
	**/
	@:native("IsPointOver")
	public function isPointOver(point:godot.Vector3):Bool;

	/**		
		Returns the plane scaled to unit length.
		
		@returns A normalized version of the plane.
	**/
	@:native("Normalized")
	public function normalized():godot.Plane;

	/**		
		Returns the orthogonal projection of `point` into the plane.
		
		@param point The point to project.
		@returns The projected point.
	**/
	@:native("Project")
	public function project(point:godot.Vector3):godot.Vector3;

	/**		
		Constructs a `godot.Plane` from four values.
		`a`, `b` and `c` become the
		components of the resulting plane's `godot.Plane.normal` vector.
		`d` becomes the plane's distance from the origin.
		
		@param a The X component of the plane's normal vector.
		@param b The Y component of the plane's normal vector.
		@param c The Z component of the plane's normal vector.
		@param d The plane's distance from the origin. This value is typically non-negative.
	**/
	@:native("new")
	public overload function new(a:Single, b:Single, c:Single, d:Single):Void;

	/**		
		Constructs a `godot.Plane` from a `normal` vector and
		the plane's distance to the origin `d`.
		
		@param normal The normal of the plane, must be normalized.
		@param d The plane's distance from the origin. This value is typically non-negative.
	**/
	@:native("new")
	public overload function new(normal:godot.Vector3, d:Single):Void;

	/**		
		Constructs a `godot.Plane` from the three points, given in clockwise order.
		
		@param v1 The first point.
		@param v2 The second point.
		@param v3 The third point.
	**/
	@:native("new")
	public overload function new(v1:godot.Vector3, v2:godot.Vector3, v3:godot.Vector3):Void;

	/**		
		Returns `true` if this plane and `other` are
		approximately equal, by running `godot.Mathf.isEqualApprox` on each component.
		
		@param other The other plane to compare.
		@returns Whether or not the planes are approximately equal.
	**/
	@:native("IsEqualApprox")
	public function isEqualApprox(other:godot.Plane):Bool;

	/**		
		Converts this `godot.Plane` to a string.
		
		@returns A string representation of this plane.
	**/
	@:native("ToString")
	public overload function toString():std.String;

	/**		
		Converts this `godot.Plane` to a string with the given `format`.
		
		@returns A string representation of this plane.
	**/
	@:native("ToString")
	public overload function toString(format:std.String):std.String;
}
