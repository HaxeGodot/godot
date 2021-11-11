// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Axis-Aligned Bounding Box. AABB consists of a position, a size, and
several utility functions. It is typically used for fast overlap tests.
**/
#if doc_gen
@:struct
@:libType
@:csNative
@:native("Godot.AABB")
@:autoBuild(godot.Godot.buildUserClass())
extern class AABB extends cs.system.ValueType implements cs.system.IEquatable_1<godot.AABB> {
#else
@:forward
@:forwardStatics
extern abstract AABB(AABB_) from AABB_ to AABB_ {
#end
	#if !doc_gen
	/**		
		Constructs an `godot.AABB` from a position and size.
		
		@param position The position.
		@param size The size, typically positive.
	**/
	public overload inline function new(position:godot.Vector3, size:godot.Vector3) {
		this = new AABB_(position, size);
	}
	#end

	#if !doc_gen
	/**		
		Constructs an `godot.AABB` from a `position`,
		`width`, `height`, and `depth`.
		
		@param position The position.
		@param width The width, typically positive.
		@param height The height, typically positive.
		@param depth The depth, typically positive.
	**/
	public overload inline function new(position:godot.Vector3, width:Single, height:Single, depth:Single) {
		this = new AABB_(position, width, height, depth);
	}
	#end

	#if !doc_gen
	/**		
		Constructs an `godot.AABB` from `x`,
		`y`, `z`, and `size`.
		
		@param x The position's X coordinate.
		@param y The position's Y coordinate.
		@param z The position's Z coordinate.
		@param size The size, typically positive.
	**/
	public overload inline function new(x:Single, y:Single, z:Single, size:godot.Vector3) {
		this = new AABB_(x, y, z, size);
	}
	#end

	#if !doc_gen
	/**		
		Constructs an `godot.AABB` from `x`,
		`y`, `z`, `width`,
		`height`, and `depth`.
		
		@param x The position's X coordinate.
		@param y The position's Y coordinate.
		@param z The position's Z coordinate.
		@param width The width, typically positive.
		@param height The height, typically positive.
		@param depth The depth, typically positive.
	**/
	public overload inline function new(x:Single, y:Single, z:Single, width:Single, height:Single, depth:Single) {
		this = new AABB_(x, y, z, width, height, depth);
	}
	#end

	/**
		Operator overload for `godot.AABB` == `godot.AABB`.
	**/
	@:op(A == B) static inline function op_Equality(left:godot.AABB, right:godot.AABB):Bool {
		return cs.Syntax.code("{0} == {1}", left, right);
	}

	/**
		Operator overload for `godot.AABB` != `godot.AABB`.
	**/
	@:op(A != B) static inline function op_Inequality(left:godot.AABB, right:godot.AABB):Bool {
		return cs.Syntax.code("{0} != {1}", left, right);
	}
#if !doc_gen
}

@:struct
@:libType
@:csNative
@:native("Godot.AABB")
@:autoBuild(godot.Godot.buildUserClass())
extern class AABB_ extends cs.system.ValueType implements cs.system.IEquatable_1<godot.AABB> {
#end
	/**		
		Ending corner. This is calculated as `godot.AABB.position` plus
		`godot.AABB.size`. Setting this value will change the size.
		
		Value:
		Getting is equivalent to `value` = `godot.AABB.position` + `godot.AABB.size`,
		setting is equivalent to `godot.AABB.size` = `value` - `godot.AABB.position`
	**/
	@:native("End")
	public var end:godot.Vector3;

	/**		
		Size from `godot.AABB.position` to `godot.AABB.end`. Typically all components are positive.
		If the size is negative, you can use `godot.AABB.abs` to fix it.
		
		Value: Directly uses a private field.
	**/
	@:native("Size")
	public var size:godot.Vector3;

	/**		
		Beginning corner. Typically has values lower than `godot.AABB.end`.
		
		Value: Directly uses a private field.
	**/
	@:native("Position")
	public var position:godot.Vector3;

	/**		
		Returns an `godot.AABB` with equivalent position and size, modified so that
		the most-negative corner is the origin and the size is positive.
		
		@returns The modified `godot.AABB`.
	**/
	@:native("Abs")
	public function abs():godot.AABB;

	/**		
		Returns `true` if this `godot.AABB` completely encloses another one.
		
		@param with The other `godot.AABB` that may be enclosed.
		@returns
		A `bool` for whether or not this `godot.AABB` encloses `with`.
	**/
	@:native("Encloses")
	public function encloses(with:godot.AABB):Bool;

	/**		
		Returns this `godot.AABB` expanded to include a given point.
		
		@param point The point to include.
		@returns The expanded `godot.AABB`.
	**/
	@:native("Expand")
	public function expand(point:godot.Vector3):godot.AABB;

	/**		
		Returns the area of the `godot.AABB`.
		
		@returns The area.
	**/
	@:native("GetArea")
	public function getArea():Single;

	/**		
		Gets the position of one of the 8 endpoints of the `godot.AABB`.
		
		@param idx Which endpoint to get.
		@returns An endpoint of the `godot.AABB`.
	**/
	@:native("GetEndpoint")
	public function getEndpoint(idx:Int):godot.Vector3;

	/**		
		Returns the normalized longest axis of the `godot.AABB`.
		
		@returns A vector representing the normalized longest axis of the `godot.AABB`.
	**/
	@:native("GetLongestAxis")
	public function getLongestAxis():godot.Vector3;

	/**		
		Returns the `godot.Vector3_Axis` index of the longest axis of the `godot.AABB`.
		
		@returns A `godot.Vector3_Axis` index for which axis is longest.
	**/
	@:native("GetLongestAxisIndex")
	public function getLongestAxisIndex():godot.Vector3_Axis;

	/**		
		Returns the scalar length of the longest axis of the `godot.AABB`.
		
		@returns The scalar length of the longest axis of the `godot.AABB`.
	**/
	@:native("GetLongestAxisSize")
	public function getLongestAxisSize():Single;

	/**		
		Returns the normalized shortest axis of the `godot.AABB`.
		
		@returns A vector representing the normalized shortest axis of the `godot.AABB`.
	**/
	@:native("GetShortestAxis")
	public function getShortestAxis():godot.Vector3;

	/**		
		Returns the `godot.Vector3_Axis` index of the shortest axis of the `godot.AABB`.
		
		@returns A `godot.Vector3_Axis` index for which axis is shortest.
	**/
	@:native("GetShortestAxisIndex")
	public function getShortestAxisIndex():godot.Vector3_Axis;

	/**		
		Returns the scalar length of the shortest axis of the `godot.AABB`.
		
		@returns The scalar length of the shortest axis of the `godot.AABB`.
	**/
	@:native("GetShortestAxisSize")
	public function getShortestAxisSize():Single;

	/**		
		Returns the support point in a given direction.
		This is useful for collision detection algorithms.
		
		@param dir The direction to find support for.
		@returns A vector representing the support.
	**/
	@:native("GetSupport")
	public function getSupport(dir:godot.Vector3):godot.Vector3;

	/**		
		Returns a copy of the `godot.AABB` grown a given amount of units towards all the sides.
		
		@param by The amount to grow by.
		@returns The grown `godot.AABB`.
	**/
	@:native("Grow")
	public function grow(by:Single):godot.AABB;

	/**		
		Returns `true` if the `godot.AABB` is flat or empty,
		or `false` otherwise.
		
		@returns
		A `bool` for whether or not the `godot.AABB` has area.
	**/
	@:native("HasNoArea")
	public function hasNoArea():Bool;

	/**		
		Returns `true` if the `godot.AABB` has no surface (no size),
		or `false` otherwise.
		
		@returns
		A `bool` for whether or not the `godot.AABB` has area.
	**/
	@:native("HasNoSurface")
	public function hasNoSurface():Bool;

	/**		
		Returns `true` if the `godot.AABB` contains a point,
		or `false` otherwise.
		
		@param point The point to check.
		@returns
		A `bool` for whether or not the `godot.AABB` contains `point`.
	**/
	@:native("HasPoint")
	public function hasPoint(point:godot.Vector3):Bool;

	/**		
		Returns the intersection of this `godot.AABB` and `with`.
		
		@param with The other `godot.AABB`.
		@returns The clipped `godot.AABB`.
	**/
	@:native("Intersection")
	public function intersection(with:godot.AABB):godot.AABB;

	#if doc_gen
	/**		
		Returns `true` if the `godot.AABB` overlaps with `with`
		(i.e. they have at least one point in common).
		
		If `includeBorders` is `true`,
		they will also be considered overlapping if their borders touch,
		even without intersection.
		
		@param with The other `godot.AABB` to check for intersections with.
		@param includeBorders Whether or not to consider borders.
		@returns
		A `bool` for whether or not they are intersecting.
	**/
	@:native("Intersects")
	public function intersects(with:godot.AABB, ?includeBorders:Bool):Bool;
	#else
	/**		
		Returns `true` if the `godot.AABB` overlaps with `with`
		(i.e. they have at least one point in common).
		
		If `includeBorders` is `true`,
		they will also be considered overlapping if their borders touch,
		even without intersection.
		
		@param with The other `godot.AABB` to check for intersections with.
		@param includeBorders Whether or not to consider borders.
		@returns
		A `bool` for whether or not they are intersecting.
	**/
	@:native("Intersects")
	public overload function intersects(with:godot.AABB):Bool;

	/**		
		Returns `true` if the `godot.AABB` overlaps with `with`
		(i.e. they have at least one point in common).
		
		If `includeBorders` is `true`,
		they will also be considered overlapping if their borders touch,
		even without intersection.
		
		@param with The other `godot.AABB` to check for intersections with.
		@param includeBorders Whether or not to consider borders.
		@returns
		A `bool` for whether or not they are intersecting.
	**/
	@:native("Intersects")
	public overload function intersects(with:godot.AABB, includeBorders:Bool):Bool;
	#end

	/**		
		Returns `true` if the `godot.AABB` is on both sides of `plane`.
		
		@param plane The `godot.Plane` to check for intersection.
		@returns
		A `bool` for whether or not the `godot.AABB` intersects the `godot.Plane`.
	**/
	@:native("IntersectsPlane")
	public function intersectsPlane(plane:godot.Plane):Bool;

	/**		
		Returns `true` if the `godot.AABB` intersects
		the line segment between `from` and `to`.
		
		@param from The start of the line segment.
		@param to The end of the line segment.
		@returns
		A `bool` for whether or not the `godot.AABB` intersects the line segment.
	**/
	@:native("IntersectsSegment")
	public function intersectsSegment(from:godot.Vector3, to:godot.Vector3):Bool;

	/**		
		Returns a larger `godot.AABB` that contains this `godot.AABB` and `with`.
		
		@param with The other `godot.AABB`.
		@returns The merged `godot.AABB`.
	**/
	@:native("Merge")
	public function merge(with:godot.AABB):godot.AABB;

	/**		
		Constructs an `godot.AABB` from a position and size.
		
		@param position The position.
		@param size The size, typically positive.
	**/
	@:native("new")
	public overload function new(position:godot.Vector3, size:godot.Vector3):Void;

	/**		
		Constructs an `godot.AABB` from a `position`,
		`width`, `height`, and `depth`.
		
		@param position The position.
		@param width The width, typically positive.
		@param height The height, typically positive.
		@param depth The depth, typically positive.
	**/
	@:native("new")
	public overload function new(position:godot.Vector3, width:Single, height:Single, depth:Single):Void;

	/**		
		Constructs an `godot.AABB` from `x`,
		`y`, `z`, and `size`.
		
		@param x The position's X coordinate.
		@param y The position's Y coordinate.
		@param z The position's Z coordinate.
		@param size The size, typically positive.
	**/
	@:native("new")
	public overload function new(x:Single, y:Single, z:Single, size:godot.Vector3):Void;

	/**		
		Constructs an `godot.AABB` from `x`,
		`y`, `z`, `width`,
		`height`, and `depth`.
		
		@param x The position's X coordinate.
		@param y The position's Y coordinate.
		@param z The position's Z coordinate.
		@param width The width, typically positive.
		@param height The height, typically positive.
		@param depth The depth, typically positive.
	**/
	@:native("new")
	public overload function new(x:Single, y:Single, z:Single, width:Single, height:Single, depth:Single):Void;

	/**		
		Returns `true` if this AABB and `other` are approximately equal,
		by running `godot.Vector3.isEqualApprox` on each component.
		
		@param other The other AABB to compare.
		@returns Whether or not the AABBs structures are approximately equal.
	**/
	@:native("IsEqualApprox")
	public function isEqualApprox(other:godot.AABB):Bool;

	/**		
		Converts this `godot.AABB` to a string.
		
		@returns A string representation of this AABB.
	**/
	@:native("ToString")
	public overload function toString():std.String;

	/**		
		Converts this `godot.AABB` to a string with the given `format`.
		
		@returns A string representation of this AABB.
	**/
	@:native("ToString")
	public overload function toString(format:std.String):std.String;
}
