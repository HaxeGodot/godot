// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
3-element structure that can be used to represent positions in 3D space or any other pair of numeric values.
**/
#if doc_gen
@:struct
@:libType
@:csNative
@:native("Godot.Vector3")
@:autoBuild(godot.Godot.buildUserClass())
extern class Vector3 extends cs.system.ValueType implements cs.system.IEquatable_1<godot.Vector3> {
#else
@:forward
@:forwardStatics
extern abstract Vector3(Vector3_) from Vector3_ to Vector3_ {
#end
	#if !doc_gen
	/**		
		Constructs a new `godot.Vector3` with the given components.
		
		@param x The vector's X component.
		@param y The vector's Y component.
		@param z The vector's Z component.
	**/
	public overload inline function new(x:Single, y:Single, z:Single) {
		this = new Vector3_(x, y, z);
	}
	#end

	#if !doc_gen
	/**		
		Constructs a new `godot.Vector3` from an existing `godot.Vector3`.
		
		@param v The existing `godot.Vector3`.
	**/
	public overload inline function new(v:godot.Vector3) {
		this = new Vector3_(v);
	}
	#end

	/**
		Operator overload for `godot.Vector3` + `godot.Vector3`.
	**/
	@:op(A + B) static inline function op_Addition(left:godot.Vector3, right:godot.Vector3):godot.Vector3 {
		return cs.Syntax.code("{0} + {1}", left, right);
	}

	/**
		Operator overload for `godot.Vector3` - `godot.Vector3`.
	**/
	@:op(A - B) static inline function op_Subtraction(left:godot.Vector3, right:godot.Vector3):godot.Vector3 {
		return cs.Syntax.code("{0} - {1}", left, right);
	}

	/**
		Operator overload for -`godot.Vector3`.
	**/
	@:op(-A) static inline function op_UnaryNegation(vec:godot.Vector3):godot.Vector3 {
		return cs.Syntax.code("-{0}", vec);
	}

	/**
		Operator overload for `godot.Vector3` * ((global::System.Single)(`Float`)).
	**/
	@:op(A * B) static inline overload function op_Multiply(vec:godot.Vector3, scale:Float):godot.Vector3 {
		return cs.Syntax.code("{0} * ((global::System.Single)({1}))", vec, scale);
	}

	/**
		Operator overload for ((global::System.Single)(`Float`)) * `godot.Vector3`.
	**/
	@:op(A * B) static inline overload function op_Multiply(scale:Float, vec:godot.Vector3):godot.Vector3 {
		return cs.Syntax.code("((global::System.Single)({0})) * {1}", scale, vec);
	}

	/**
		Operator overload for `godot.Vector3` * `godot.Vector3`.
	**/
	@:op(A * B) static inline overload function op_Multiply(left:godot.Vector3, right:godot.Vector3):godot.Vector3 {
		return cs.Syntax.code("{0} * {1}", left, right);
	}

	/**
		Operator overload for `godot.Vector3` / ((global::System.Single)(`Float`)).
	**/
	@:op(A / B) static inline overload function op_Division(vec:godot.Vector3, divisor:Float):godot.Vector3 {
		return cs.Syntax.code("{0} / ((global::System.Single)({1}))", vec, divisor);
	}

	/**
		Operator overload for `godot.Vector3` / `godot.Vector3`.
	**/
	@:op(A / B) static inline overload function op_Division(vec:godot.Vector3, divisorv:godot.Vector3):godot.Vector3 {
		return cs.Syntax.code("{0} / {1}", vec, divisorv);
	}

	/**
		Operator overload for `godot.Vector3` % ((global::System.Single)(`Float`)).
	**/
	@:op(A % B) static inline overload function op_Modulus(vec:godot.Vector3, divisor:Float):godot.Vector3 {
		return cs.Syntax.code("{0} % ((global::System.Single)({1}))", vec, divisor);
	}

	/**
		Operator overload for `godot.Vector3` % `godot.Vector3`.
	**/
	@:op(A % B) static inline overload function op_Modulus(vec:godot.Vector3, divisorv:godot.Vector3):godot.Vector3 {
		return cs.Syntax.code("{0} % {1}", vec, divisorv);
	}

	/**
		Operator overload for `godot.Vector3` == `godot.Vector3`.
	**/
	@:op(A == B) static inline function op_Equality(left:godot.Vector3, right:godot.Vector3):Bool {
		return cs.Syntax.code("{0} == {1}", left, right);
	}

	/**
		Operator overload for `godot.Vector3` != `godot.Vector3`.
	**/
	@:op(A != B) static inline function op_Inequality(left:godot.Vector3, right:godot.Vector3):Bool {
		return cs.Syntax.code("{0} != {1}", left, right);
	}

	/**
		Operator overload for `godot.Vector3` < `godot.Vector3`.
	**/
	@:op(A < B) static inline function op_LessThan(left:godot.Vector3, right:godot.Vector3):Bool {
		return cs.Syntax.code("{0} < {1}", left, right);
	}

	/**
		Operator overload for `godot.Vector3` > `godot.Vector3`.
	**/
	@:op(A > B) static inline function op_GreaterThan(left:godot.Vector3, right:godot.Vector3):Bool {
		return cs.Syntax.code("{0} > {1}", left, right);
	}

	/**
		Operator overload for `godot.Vector3` <= `godot.Vector3`.
	**/
	@:op(A <= B) static inline function op_LessThanOrEqual(left:godot.Vector3, right:godot.Vector3):Bool {
		return cs.Syntax.code("{0} <= {1}", left, right);
	}

	/**
		Operator overload for `godot.Vector3` >= `godot.Vector3`.
	**/
	@:op(A >= B) static inline function op_GreaterThanOrEqual(left:godot.Vector3, right:godot.Vector3):Bool {
		return cs.Syntax.code("{0} >= {1}", left, right);
	}
#if !doc_gen
}

@:struct
@:libType
@:csNative
@:native("Godot.Vector3")
@:autoBuild(godot.Godot.buildUserClass())
extern class Vector3_ extends cs.system.ValueType implements cs.system.IEquatable_1<godot.Vector3> {
#end
	/**		
		Back unit vector. Represents the local direction of back,
		and the global direction of south.
		
		Value: Equivalent to `new Vector3(0, 0, 1)`
	**/
	@:native("Back")
	public static var BACK(default, never):godot.Vector3;

	/**		
		Forward unit vector. Represents the local direction of forward,
		and the global direction of north.
		
		Value: Equivalent to `new Vector3(0, 0, -1)`
	**/
	@:native("Forward")
	public static var FORWARD(default, never):godot.Vector3;

	/**		
		Left unit vector. Represents the local direction of left,
		and the global direction of west.
		
		Value: Equivalent to `new Vector3(-1, 0, 0)`
	**/
	@:native("Left")
	public static var LEFT(default, never):godot.Vector3;

	/**		
		Right unit vector. Represents the local direction of right,
		and the global direction of east.
		
		Value: Equivalent to `new Vector3(1, 0, 0)`
	**/
	@:native("Right")
	public static var RIGHT(default, never):godot.Vector3;

	/**		
		Down unit vector.
		
		Value: Equivalent to `new Vector3(0, -1, 0)`
	**/
	@:native("Down")
	public static var DOWN(default, never):godot.Vector3;

	/**		
		Up unit vector.
		
		Value: Equivalent to `new Vector3(0, 1, 0)`
	**/
	@:native("Up")
	public static var UP(default, never):godot.Vector3;

	/**		
		Infinity vector, a vector with all components set to `Mathf.Inf`.
		
		Value: Equivalent to `new Vector3(Mathf.Inf, Mathf.Inf, Mathf.Inf)`
	**/
	@:native("Inf")
	public static var INF(default, never):godot.Vector3;

	/**		
		Deprecated, please use a negative sign with `godot.Vector3.one` instead.
		
		Value: Equivalent to `new Vector3(-1, -1, -1)`
	**/
	@:native("NegOne")
	public static var NEG_ONE(default, never):godot.Vector3;

	/**		
		One vector, a vector with all components set to `1`.
		
		Value: Equivalent to `new Vector3(1, 1, 1)`
	**/
	@:native("One")
	public static var ONE(default, never):godot.Vector3;

	/**		
		Zero vector, a vector with all components set to `0`.
		
		Value: Equivalent to `new Vector3(0, 0, 0)`
	**/
	@:native("Zero")
	public static var ZERO(default, never):godot.Vector3;

	/**		
		The vector's Z component. Also accessible by using the index position `[2]`.
	**/
	@:native("z")
	public var z:Single;

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
	public function abs():godot.Vector3;

	/**		
		Returns the minimum angle to the given vector, in radians.
		
		@param to The other vector to compare this vector to.
		@returns The angle between the two vectors, in radians.
	**/
	@:native("AngleTo")
	public function angleTo(to:godot.Vector3):Single;

	/**		
		Returns this vector "bounced off" from a plane defined by the given normal.
		
		@param normal The normal vector defining the plane to bounce off. Must be normalized.
		@returns The bounced vector.
	**/
	@:native("Bounce")
	public function bounce(normal:godot.Vector3):godot.Vector3;

	/**		
		Returns a new vector with all components rounded up (towards positive infinity).
		
		@returns A vector with `godot.Mathf.ceil` called on each component.
	**/
	@:native("Ceil")
	public function ceil():godot.Vector3;

	/**		
		Returns the cross product of this vector and `b`.
		
		@param b The other vector.
		@returns The cross product vector.
	**/
	@:native("Cross")
	public function cross(b:godot.Vector3):godot.Vector3;

	/**		
		Performs a cubic interpolation between vectors `preA`, this vector,
		`b`, and `postB`, by the given amount `t`.
		
		@param b The destination vector.
		@param preA A vector before this vector.
		@param postB A vector after `b`.
		@param t A value on the range of 0.0 to 1.0, representing the amount of interpolation.
		@returns The interpolated vector.
	**/
	@:native("CubicInterpolate")
	public function cubicInterpolate(b:godot.Vector3, preA:godot.Vector3, postB:godot.Vector3, t:Single):godot.Vector3;

	/**		
		Returns the normalized vector pointing from this vector to `b`.
		
		@param b The other vector to point towards.
		@returns The direction from this vector to `b`.
	**/
	@:native("DirectionTo")
	public function directionTo(b:godot.Vector3):godot.Vector3;

	/**		
		Returns the squared distance between this vector and `b`.
		This method runs faster than `godot.Vector3.distanceTo`, so prefer it if
		you need to compare vectors or need the squared distance for some formula.
		
		@param b The other vector to use.
		@returns The squared distance between the two vectors.
	**/
	@:native("DistanceSquaredTo")
	public function distanceSquaredTo(b:godot.Vector3):Single;

	/**		
		Returns the distance between this vector and `b`.
		
		@param b The other vector to use.
		@returns The distance between the two vectors.
	**/
	@:native("DistanceTo")
	public function distanceTo(b:godot.Vector3):Single;

	/**		
		Returns the dot product of this vector and `b`.
		
		@param b The other vector to use.
		@returns The dot product of the two vectors.
	**/
	@:native("Dot")
	public function dot(b:godot.Vector3):Single;

	/**		
		Returns a new vector with all components rounded down (towards negative infinity).
		
		@returns A vector with `godot.Mathf.floor` called on each component.
	**/
	@:native("Floor")
	public function floor():godot.Vector3;

	/**		
		Returns the inverse of this vector. This is the same as `new Vector3(1 / v.x, 1 / v.y, 1 / v.z)`.
		
		@returns The inverse of this vector.
	**/
	@:native("Inverse")
	public function inverse():godot.Vector3;

	/**		
		Returns true if the vector is normalized, and false otherwise.
		
		@returns A bool indicating whether or not the vector is normalized.
	**/
	@:native("IsNormalized")
	public function isNormalized():Bool;

	/**		
		Returns the length (magnitude) of this vector.
		
		@returns The length of this vector.
	**/
	@:native("Length")
	public function length():Single;

	/**		
		Returns the squared length (squared magnitude) of this vector.
		This method runs faster than `godot.Vector3.length`, so prefer it if
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
	public overload function linearInterpolate(to:godot.Vector3, weight:Single):godot.Vector3;

	/**		
		Returns the result of the linear interpolation between
		this vector and `to` by the vector amount `weight`.
		
		@param to The destination vector for interpolation.
		@param weight A vector with components on the range of 0.0 to 1.0, representing the amount of interpolation.
		@returns The resulting vector of the interpolation.
	**/
	@:native("LinearInterpolate")
	public overload function linearInterpolate(to:godot.Vector3, weight:godot.Vector3):godot.Vector3;

	/**		
		Returns the axis of the vector's largest value. See `godot.Vector3_Axis`.
		If all components are equal, this method returns `godot.Vector3_Axis.x`.
		
		@returns The index of the largest axis.
	**/
	@:native("MaxAxis")
	public function maxAxis():godot.Vector3_Axis;

	/**		
		Returns the axis of the vector's smallest value. See `godot.Vector3_Axis`.
		If all components are equal, this method returns `godot.Vector3_Axis.z`.
		
		@returns The index of the smallest axis.
	**/
	@:native("MinAxis")
	public function minAxis():godot.Vector3_Axis;

	/**		
		Moves this vector toward `to` by the fixed `delta` amount.
		
		@param to The vector to move towards.
		@param delta The amount to move towards by.
		@returns The resulting vector.
	**/
	@:native("MoveToward")
	public function moveToward(to:godot.Vector3, delta:Single):godot.Vector3;

	/**		
		Returns the vector scaled to unit length. Equivalent to `v / v.Length()`.
		
		@returns A normalized version of the vector.
	**/
	@:native("Normalized")
	public function normalized():godot.Vector3;

	/**		
		Returns the outer product with `b`.
		
		@param b The other vector.
		@returns A `godot.Basis` representing the outer product matrix.
	**/
	@:native("Outer")
	public function outer(b:godot.Vector3):godot.Basis;

	/**		
		Returns a vector composed of the `godot.Mathf.posMod` of this vector's components and `mod`.
		
		@param mod A value representing the divisor of the operation.
		@returns A vector with each component `godot.Mathf.posMod` by `mod`.
	**/
	@:native("PosMod")
	public overload function posMod(mod:Single):godot.Vector3;

	/**		
		Returns a vector composed of the `godot.Mathf.posMod` of this vector's components and `modv`'s components.
		
		@param modv A vector representing the divisors of the operation.
		@returns A vector with each component `godot.Mathf.posMod` by `modv`'s components.
	**/
	@:native("PosMod")
	public overload function posMod(modv:godot.Vector3):godot.Vector3;

	/**		
		Returns this vector projected onto another vector `b`.
		
		@param onNormal The vector to project onto.
		@returns The projected vector.
	**/
	@:native("Project")
	public function project(onNormal:godot.Vector3):godot.Vector3;

	/**		
		Returns this vector reflected from a plane defined by the given `normal`.
		
		@param normal The normal vector defining the plane to reflect from. Must be normalized.
		@returns The reflected vector.
	**/
	@:native("Reflect")
	public function reflect(normal:godot.Vector3):godot.Vector3;

	/**		
		Rotates this vector around a given `axis` vector by `phi` radians.
		The `axis` vector must be a normalized vector.
		
		@param axis The vector to rotate around. Must be normalized.
		@param phi The angle to rotate by, in radians.
		@returns The rotated vector.
	**/
	@:native("Rotated")
	public function rotated(axis:godot.Vector3, phi:Single):godot.Vector3;

	/**		
		Returns this vector with all components rounded to the nearest integer,
		with halfway cases rounded towards the nearest multiple of two.
		
		@returns The rounded vector.
	**/
	@:native("Round")
	public function round():godot.Vector3;

	@:native("Set")
	public overload function set(x:Single, y:Single, z:Single):Void;

	@:native("Set")
	public overload function set(v:godot.Vector3):Void;

	/**		
		Returns a vector with each component set to one or negative one, depending
		on the signs of this vector's components, or zero if the component is zero,
		by calling `godot.Mathf.sign` on each component.
		
		@returns A vector with all components as either `1`, `-1`, or `0`.
	**/
	@:native("Sign")
	public function sign():godot.Vector3;

	/**		
		Returns the result of the spherical linear interpolation between
		this vector and `to` by amount `weight`.
		
		Note: Both vectors must be normalized.
		
		@param to The destination vector for interpolation. Must be normalized.
		@param weight A value on the range of 0.0 to 1.0, representing the amount of interpolation.
		@returns The resulting vector of the interpolation.
	**/
	@:native("Slerp")
	public function slerp(to:godot.Vector3, weight:Single):godot.Vector3;

	/**		
		Returns this vector slid along a plane defined by the given normal.
		
		@param normal The normal vector defining the plane to slide on.
		@returns The slid vector.
	**/
	@:native("Slide")
	public function slide(normal:godot.Vector3):godot.Vector3;

	/**		
		Returns this vector with each component snapped to the nearest multiple of `step`.
		This can also be used to round to an arbitrary number of decimals.
		
		@param step A vector value representing the step size to snap to.
		@returns The snapped vector.
	**/
	@:native("Snapped")
	public function snapped(step:godot.Vector3):godot.Vector3;

	/**		
		Returns a diagonal matrix with the vector as main diagonal.
		
		This is equivalent to a Basis with no rotation or shearing and
		this vector's components set as the scale.
		
		@returns A Basis with the vector as its main diagonal.
	**/
	@:native("ToDiagonalMatrix")
	public function toDiagonalMatrix():godot.Basis;

	/**		
		Constructs a new `godot.Vector3` with the given components.
		
		@param x The vector's X component.
		@param y The vector's Y component.
		@param z The vector's Z component.
	**/
	@:native("new")
	public overload function new(x:Single, y:Single, z:Single):Void;

	/**		
		Constructs a new `godot.Vector3` from an existing `godot.Vector3`.
		
		@param v The existing `godot.Vector3`.
	**/
	@:native("new")
	public overload function new(v:godot.Vector3):Void;

	/**		
		Returns true if this vector and `other` are approximately equal, by running
		`godot.Mathf.isEqualApprox` on each component.
		
		@param other The other vector to compare.
		@returns Whether or not the vectors are approximately equal.
	**/
	@:native("IsEqualApprox")
	public function isEqualApprox(other:godot.Vector3):Bool;

	@:native("ToString")
	public overload function toString():std.String;

	@:native("ToString")
	public overload function toString(format:std.String):std.String;
}
