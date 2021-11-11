// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
2-element structure that can be used to represent positions in 2D space or any other pair of numeric values.
**/
#if doc_gen
@:struct
@:libType
@:csNative
@:native("Godot.Vector2")
@:autoBuild(godot.Godot.buildUserClass())
extern class Vector2 extends cs.system.ValueType implements cs.system.IEquatable_1<godot.Vector2> {
#else
@:forward
@:forwardStatics
extern abstract Vector2(Vector2_) from Vector2_ to Vector2_ {
#end
	#if !doc_gen
	/**		
		Constructs a new `godot.Vector2` with the given components.
		
		@param x The vector's X component.
		@param y The vector's Y component.
	**/
	public overload inline function new(x:Single, y:Single) {
		this = new Vector2_(x, y);
	}
	#end

	#if !doc_gen
	/**		
		Constructs a new `godot.Vector2` with the given components.
		
		@param x The vector's X component.
		@param y The vector's Y component.
	**/
	public overload inline function new() {
		this = new Vector2_(0, 0);
	}
	#end

	#if !doc_gen
	/**		
		Constructs a new `godot.Vector2` with the given components.
		
		@param x The vector's X component.
		@param y The vector's Y component.
	**/
	public overload inline function new(x:Single) {
		this = new Vector2_(x, 0);
	}
	#end

	#if !doc_gen
	/**		
		Constructs a new `godot.Vector2` from an existing `godot.Vector2`.
		
		@param v The existing `godot.Vector2`.
	**/
	public overload inline function new(v:godot.Vector2) {
		this = new Vector2_(v);
	}
	#end

	/**
		Operator overload for `godot.Vector2` + `godot.Vector2`.
	**/
	@:op(A + B) static inline function op_Addition(left:godot.Vector2, right:godot.Vector2):godot.Vector2 {
		return cs.Syntax.code("{0} + {1}", left, right);
	}

	/**
		Operator overload for `godot.Vector2` - `godot.Vector2`.
	**/
	@:op(A - B) static inline function op_Subtraction(left:godot.Vector2, right:godot.Vector2):godot.Vector2 {
		return cs.Syntax.code("{0} - {1}", left, right);
	}

	/**
		Operator overload for -`godot.Vector2`.
	**/
	@:op(-A) static inline function op_UnaryNegation(vec:godot.Vector2):godot.Vector2 {
		return cs.Syntax.code("-{0}", vec);
	}

	/**
		Operator overload for `godot.Vector2` * ((global::System.Single)(`Float`)).
	**/
	@:op(A * B) static inline overload function op_Multiply(vec:godot.Vector2, scale:Float):godot.Vector2 {
		return cs.Syntax.code("{0} * ((global::System.Single)({1}))", vec, scale);
	}

	/**
		Operator overload for ((global::System.Single)(`Float`)) * `godot.Vector2`.
	**/
	@:op(A * B) static inline overload function op_Multiply(scale:Float, vec:godot.Vector2):godot.Vector2 {
		return cs.Syntax.code("((global::System.Single)({0})) * {1}", scale, vec);
	}

	/**
		Operator overload for `godot.Vector2` * `godot.Vector2`.
	**/
	@:op(A * B) static inline overload function op_Multiply(left:godot.Vector2, right:godot.Vector2):godot.Vector2 {
		return cs.Syntax.code("{0} * {1}", left, right);
	}

	/**
		Operator overload for `godot.Vector2` / ((global::System.Single)(`Float`)).
	**/
	@:op(A / B) static inline overload function op_Division(vec:godot.Vector2, divisor:Float):godot.Vector2 {
		return cs.Syntax.code("{0} / ((global::System.Single)({1}))", vec, divisor);
	}

	/**
		Operator overload for `godot.Vector2` / `godot.Vector2`.
	**/
	@:op(A / B) static inline overload function op_Division(vec:godot.Vector2, divisorv:godot.Vector2):godot.Vector2 {
		return cs.Syntax.code("{0} / {1}", vec, divisorv);
	}

	/**
		Operator overload for `godot.Vector2` % ((global::System.Single)(`Float`)).
	**/
	@:op(A % B) static inline overload function op_Modulus(vec:godot.Vector2, divisor:Float):godot.Vector2 {
		return cs.Syntax.code("{0} % ((global::System.Single)({1}))", vec, divisor);
	}

	/**
		Operator overload for `godot.Vector2` % `godot.Vector2`.
	**/
	@:op(A % B) static inline overload function op_Modulus(vec:godot.Vector2, divisorv:godot.Vector2):godot.Vector2 {
		return cs.Syntax.code("{0} % {1}", vec, divisorv);
	}

	/**
		Operator overload for `godot.Vector2` == `godot.Vector2`.
	**/
	@:op(A == B) static inline function op_Equality(left:godot.Vector2, right:godot.Vector2):Bool {
		return cs.Syntax.code("{0} == {1}", left, right);
	}

	/**
		Operator overload for `godot.Vector2` != `godot.Vector2`.
	**/
	@:op(A != B) static inline function op_Inequality(left:godot.Vector2, right:godot.Vector2):Bool {
		return cs.Syntax.code("{0} != {1}", left, right);
	}

	/**
		Operator overload for `godot.Vector2` < `godot.Vector2`.
	**/
	@:op(A < B) static inline function op_LessThan(left:godot.Vector2, right:godot.Vector2):Bool {
		return cs.Syntax.code("{0} < {1}", left, right);
	}

	/**
		Operator overload for `godot.Vector2` > `godot.Vector2`.
	**/
	@:op(A > B) static inline function op_GreaterThan(left:godot.Vector2, right:godot.Vector2):Bool {
		return cs.Syntax.code("{0} > {1}", left, right);
	}

	/**
		Operator overload for `godot.Vector2` <= `godot.Vector2`.
	**/
	@:op(A <= B) static inline function op_LessThanOrEqual(left:godot.Vector2, right:godot.Vector2):Bool {
		return cs.Syntax.code("{0} <= {1}", left, right);
	}

	/**
		Operator overload for `godot.Vector2` >= `godot.Vector2`.
	**/
	@:op(A >= B) static inline function op_GreaterThanOrEqual(left:godot.Vector2, right:godot.Vector2):Bool {
		return cs.Syntax.code("{0} >= {1}", left, right);
	}
#if !doc_gen
}

@:struct
@:libType
@:csNative
@:native("Godot.Vector2")
@:autoBuild(godot.Godot.buildUserClass())
extern class Vector2_ extends cs.system.ValueType implements cs.system.IEquatable_1<godot.Vector2> {
#end
	/**		
		Left unit vector. Represents the direction of left.
		
		Value: Equivalent to `new Vector2(-1, 0)`.
	**/
	@:native("Left")
	public static var LEFT(default, never):godot.Vector2;

	/**		
		Right unit vector. Represents the direction of right.
		
		Value: Equivalent to `new Vector2(1, 0)`.
	**/
	@:native("Right")
	public static var RIGHT(default, never):godot.Vector2;

	/**		
		Down unit vector. Y is down in 2D, so this vector points +Y.
		
		Value: Equivalent to `new Vector2(0, 1)`.
	**/
	@:native("Down")
	public static var DOWN(default, never):godot.Vector2;

	/**		
		Up unit vector. Y is down in 2D, so this vector points -Y.
		
		Value: Equivalent to `new Vector2(0, -1)`.
	**/
	@:native("Up")
	public static var UP(default, never):godot.Vector2;

	/**		
		Infinity vector, a vector with all components set to `godot.Mathf.INF`.
		
		Value: Equivalent to `new Vector2(Mathf.Inf, Mathf.Inf)`.
	**/
	@:native("Inf")
	public static var INF(default, never):godot.Vector2;

	/**		
		One vector, a vector with all components set to `1`.
		
		Value: Equivalent to `new Vector2(1, 1)`.
	**/
	@:native("One")
	public static var ONE(default, never):godot.Vector2;

	/**		
		Deprecated, please use a negative sign with `godot.Vector2.one` instead.
		
		Value: Equivalent to `new Vector2(-1, -1)`.
	**/
	@:native("NegOne")
	public static var NEG_ONE(default, never):godot.Vector2;

	/**		
		Zero vector, a vector with all components set to `0`.
		
		Value: Equivalent to `new Vector2(0, 0)`.
	**/
	@:native("Zero")
	public static var ZERO(default, never):godot.Vector2;

	/**		
		The vector's Y component. Also accessible by using the index position `[1]`.
	**/
	@:native("y")
	public var y:Single;

	/**		
		The vector's X component. Also accessible by using the index position `[0]`.
	**/
	@:native("x")
	public var x:Single;

	/**		
		Returns a new vector with all components in absolute values (i.e. positive).
		
		@returns A vector with `godot.Mathf.abs` called on each component.
	**/
	@:native("Abs")
	public function abs():godot.Vector2;

	/**		
		Returns this vector's angle with respect to the X axis, or (1, 0) vector, in radians.
		
		Equivalent to the result of `godot.Mathf.atan2` when
		called with the vector's `godot.Vector2.y` and `godot.Vector2.x` as parameters: `Mathf.Atan2(v.y, v.x)`.
		
		@returns The angle of this vector, in radians.
	**/
	@:native("Angle")
	public function angle():Single;

	/**		
		Returns the angle to the given vector, in radians.
		
		@param to The other vector to compare this vector to.
		@returns The angle between the two vectors, in radians.
	**/
	@:native("AngleTo")
	public function angleTo(to:godot.Vector2):Single;

	/**		
		Returns the angle between the line connecting the two points and the X axis, in radians.
		
		@param to The other vector to compare this vector to.
		@returns The angle between the two vectors, in radians.
	**/
	@:native("AngleToPoint")
	public function angleToPoint(to:godot.Vector2):Single;

	/**		
		Returns the aspect ratio of this vector, the ratio of `godot.Vector2.x` to `godot.Vector2.y`.
		
		@returns The `godot.Vector2.x` component divided by the `godot.Vector2.y` component.
	**/
	@:native("Aspect")
	public function aspect():Single;

	/**		
		Returns the vector "bounced off" from a plane defined by the given normal.
		
		@param normal The normal vector defining the plane to bounce off. Must be normalized.
		@returns The bounced vector.
	**/
	@:native("Bounce")
	public function bounce(normal:godot.Vector2):godot.Vector2;

	/**		
		Returns a new vector with all components rounded up (towards positive infinity).
		
		@returns A vector with `godot.Mathf.ceil` called on each component.
	**/
	@:native("Ceil")
	public function ceil():godot.Vector2;

	/**		
		Returns the vector with a maximum length by limiting its length to `length`.
		
		@param length The length to limit to.
		@returns The vector with its length limited.
	**/
	@:native("Clamped")
	public function clamped(length:Single):godot.Vector2;

	/**		
		Returns the cross product of this vector and `b`.
		
		@param b The other vector.
		@returns The cross product value.
	**/
	@:native("Cross")
	public function cross(b:godot.Vector2):Single;

	/**		
		Performs a cubic interpolation between vectors `preA`, this vector,
		`b`, and `postB`, by the given amount `weight`.
		
		@param b The destination vector.
		@param preA A vector before this vector.
		@param postB A vector after `b`.
		@param weight A value on the range of 0.0 to 1.0, representing the amount of interpolation.
		@returns The interpolated vector.
	**/
	@:native("CubicInterpolate")
	public function cubicInterpolate(b:godot.Vector2, preA:godot.Vector2, postB:godot.Vector2, weight:Single):godot.Vector2;

	/**		
		Returns the normalized vector pointing from this vector to `b`.
		
		@param b The other vector to point towards.
		@returns The direction from this vector to `b`.
	**/
	@:native("DirectionTo")
	public function directionTo(b:godot.Vector2):godot.Vector2;

	/**		
		Returns the squared distance between this vector and `to`.
		This method runs faster than `godot.Vector2.distanceTo`, so prefer it if
		you need to compare vectors or need the squared distance for some formula.
		
		@param to The other vector to use.
		@returns The squared distance between the two vectors.
	**/
	@:native("DistanceSquaredTo")
	public function distanceSquaredTo(to:godot.Vector2):Single;

	/**		
		Returns the distance between this vector and `to`.
		
		@param to The other vector to use.
		@returns The distance between the two vectors.
	**/
	@:native("DistanceTo")
	public function distanceTo(to:godot.Vector2):Single;

	/**		
		Returns the dot product of this vector and `with`.
		
		@param with The other vector to use.
		@returns The dot product of the two vectors.
	**/
	@:native("Dot")
	public function dot(with:godot.Vector2):Single;

	/**		
		Returns a new vector with all components rounded down (towards negative infinity).
		
		@returns A vector with `godot.Mathf.floor` called on each component.
	**/
	@:native("Floor")
	public function floor():godot.Vector2;

	/**		
		Returns the inverse of this vector. This is the same as `new Vector2(1 / v.x, 1 / v.y)`.
		
		@returns The inverse of this vector.
	**/
	@:native("Inverse")
	public function inverse():godot.Vector2;

	/**		
		Returns `true` if the vector is normalized, and `false` otherwise.
		
		@returns A `bool` indicating whether or not the vector is normalized.
	**/
	@:native("IsNormalized")
	public function isNormalized():Bool;

	/**		
		Returns the length (magnitude) of this vector.
		@see `godot.Vector2.lengthSquared`
		@returns The length of this vector.
	**/
	@:native("Length")
	public function length():Single;

	/**		
		Returns the squared length (squared magnitude) of this vector.
		This method runs faster than `godot.Vector2.length`, so prefer it if
		you need to compare vectors or need the squared length for some formula.
		
		@returns The squared length of this vector.
	**/
	@:native("LengthSquared")
	public function lengthSquared():Single;

	/**		
		Returns the result of the linear interpolation between
		this vector and `to` by amount `weight`.
		
		@param to The destination vector for interpolation.
		@param weight A value on the range of 0.0 to 1.0, representing the amount of interpolation.
		@returns The resulting vector of the interpolation.
	**/
	@:native("LinearInterpolate")
	public overload function linearInterpolate(to:godot.Vector2, weight:Single):godot.Vector2;

	/**		
		Returns the result of the linear interpolation between
		this vector and `to` by the vector amount `weight`.
		
		@param to The destination vector for interpolation.
		@param weight
		A vector with components on the range of 0.0 to 1.0, representing the amount of interpolation.
		
		@returns The resulting vector of the interpolation.
	**/
	@:native("LinearInterpolate")
	public overload function linearInterpolate(to:godot.Vector2, weight:godot.Vector2):godot.Vector2;

	/**		
		Returns the axis of the vector's largest value. See `godot.Vector2_Axis`.
		If both components are equal, this method returns `godot.Vector2_Axis.x`.
		
		@returns The index of the largest axis.
	**/
	@:native("MaxAxis")
	public function maxAxis():godot.Vector2_Axis;

	/**		
		Returns the axis of the vector's smallest value. See `godot.Vector2_Axis`.
		If both components are equal, this method returns `godot.Vector2_Axis.y`.
		
		@returns The index of the smallest axis.
	**/
	@:native("MinAxis")
	public function minAxis():godot.Vector2_Axis;

	/**		
		Moves this vector toward `to` by the fixed `delta` amount.
		
		@param to The vector to move towards.
		@param delta The amount to move towards by.
		@returns The resulting vector.
	**/
	@:native("MoveToward")
	public function moveToward(to:godot.Vector2, delta:Single):godot.Vector2;

	/**		
		Returns the vector scaled to unit length. Equivalent to `v / v.Length()`.
		
		@returns A normalized version of the vector.
	**/
	@:native("Normalized")
	public function normalized():godot.Vector2;

	/**		
		Returns a perpendicular vector rotated 90 degrees counter-clockwise
		compared to the original, with the same length.
		
		@returns The perpendicular vector.
	**/
	@:native("Perpendicular")
	public function perpendicular():godot.Vector2;

	/**		
		Returns a vector composed of the `godot.Mathf.posMod` of this vector's components
		and `mod`.
		
		@param mod A value representing the divisor of the operation.
		@returns
		A vector with each component `godot.Mathf.posMod` by `mod`.
	**/
	@:native("PosMod")
	public overload function posMod(mod:Single):godot.Vector2;

	/**		
		Returns a vector composed of the `godot.Mathf.posMod` of this vector's components
		and `modv`'s components.
		
		@param modv A vector representing the divisors of the operation.
		@returns
		A vector with each component `godot.Mathf.posMod` by `modv`'s components.
	**/
	@:native("PosMod")
	public overload function posMod(modv:godot.Vector2):godot.Vector2;

	/**		
		Returns this vector projected onto another vector `onNormal`.
		
		@param onNormal The vector to project onto.
		@returns The projected vector.
	**/
	@:native("Project")
	public function project(onNormal:godot.Vector2):godot.Vector2;

	/**		
		Returns this vector reflected from a plane defined by the given `normal`.
		
		@param normal The normal vector defining the plane to reflect from. Must be normalized.
		@returns The reflected vector.
	**/
	@:native("Reflect")
	public function reflect(normal:godot.Vector2):godot.Vector2;

	/**		
		Rotates this vector by `phi` radians.
		
		@param phi The angle to rotate by, in radians.
		@returns The rotated vector.
	**/
	@:native("Rotated")
	public function rotated(phi:Single):godot.Vector2;

	/**		
		Returns this vector with all components rounded to the nearest integer,
		with halfway cases rounded towards the nearest multiple of two.
		
		@returns The rounded vector.
	**/
	@:native("Round")
	public function round():godot.Vector2;

	@:native("Set")
	public overload function set(x:Single, y:Single):Void;

	@:native("Set")
	public overload function set(v:godot.Vector2):Void;

	/**		
		Returns a vector with each component set to one or negative one, depending
		on the signs of this vector's components, or zero if the component is zero,
		by calling `godot.Mathf.sign` on each component.
		
		@returns A vector with all components as either `1`, `-1`, or `0`.
	**/
	@:native("Sign")
	public function sign():godot.Vector2;

	/**		
		Returns the result of the spherical linear interpolation between
		this vector and `to` by amount `weight`.
		
		Note: Both vectors must be normalized.
		
		@param to The destination vector for interpolation. Must be normalized.
		@param weight A value on the range of 0.0 to 1.0, representing the amount of interpolation.
		@returns The resulting vector of the interpolation.
	**/
	@:native("Slerp")
	public function slerp(to:godot.Vector2, weight:Single):godot.Vector2;

	/**		
		Returns this vector slid along a plane defined by the given `normal`.
		
		@param normal The normal vector defining the plane to slide on.
		@returns The slid vector.
	**/
	@:native("Slide")
	public function slide(normal:godot.Vector2):godot.Vector2;

	/**		
		Returns this vector with each component snapped to the nearest multiple of `step`.
		This can also be used to round to an arbitrary number of decimals.
		
		@param step A vector value representing the step size to snap to.
		@returns The snapped vector.
	**/
	@:native("Snapped")
	public function snapped(step:godot.Vector2):godot.Vector2;

	/**		
		Returns a perpendicular vector rotated 90 degrees counter-clockwise
		compared to the original, with the same length.
		Deprecated, will be replaced by `godot.Vector2.perpendicular` in 4.0.
		
		@returns The perpendicular vector.
	**/
	@:native("Tangent")
	public function tangent():godot.Vector2;

	/**		
		Constructs a new `godot.Vector2` with the given components.
		
		@param x The vector's X component.
		@param y The vector's Y component.
	**/
	@:native("new")
	public overload function new(x:Single#if doc_gen = 0 #end, y:Single#if doc_gen = 0 #end):Void;

	/**		
		Constructs a new `godot.Vector2` from an existing `godot.Vector2`.
		
		@param v The existing `godot.Vector2`.
	**/
	@:native("new")
	public overload function new(v:godot.Vector2):Void;

	/**		
		Returns `true` if this vector and `other` are approximately equal,
		by running `godot.Mathf.isEqualApprox` on each component.
		
		@param other The other vector to compare.
		@returns Whether or not the vectors are approximately equal.
	**/
	@:native("IsEqualApprox")
	public function isEqualApprox(other:godot.Vector2):Bool;

	/**		
		Converts this `godot.Vector2` to a string.
		
		@returns A string representation of this vector.
	**/
	@:native("ToString")
	public overload function toString():std.String;

	/**		
		Converts this `godot.Vector2` to a string with the given `format`.
		
		@returns A string representation of this vector.
	**/
	@:native("ToString")
	public overload function toString(format:std.String):std.String;
}
