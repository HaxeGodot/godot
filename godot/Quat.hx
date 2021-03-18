// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A unit quaternion used for representing 3D rotations.
Quaternions need to be normalized to be used for rotation.

It is similar to Basis, which implements matrix representation of
rotations, and can be parametrized using both an axis-angle pair
or Euler angles. Basis stores rotation, scale, and shearing,
while Quat only stores rotation.

Due to its compactness and the way it is stored in memory, certain
operations (obtaining axis-angle and performing SLERP, in particular)
are more efficient and robust against floating-point errors.
**/
#if doc_gen
@:struct
@:libType
@:csNative
@:native("Godot.Quat")
@:autoBuild(godot.Godot.buildUserClass())
extern class Quat extends cs.system.ValueType implements cs.system.IEquatable_1<godot.Quat> {
#else
@:forward
@:forwardStatics
extern abstract Quat(Quat_) from Quat_ to Quat_ {
#end
	#if !doc_gen
	/**		
		Constructs a quaternion defined by the given values.
		
		@param x X component of the quaternion (imaginary `i` axis part).
		@param y Y component of the quaternion (imaginary `j` axis part).
		@param z Z component of the quaternion (imaginary `k` axis part).
		@param w W component of the quaternion (real part).
	**/
	public overload inline function new(x:Single, y:Single, z:Single, w:Single) {
		this = new Quat_(x, y, z, w);
	}
	#end

	#if !doc_gen
	/**		
		Constructs a quaternion from the given quaternion.
		
		@param q The existing quaternion.
	**/
	public overload inline function new(q:godot.Quat) {
		this = new Quat_(q);
	}
	#end

	#if !doc_gen
	/**		
		Constructs a quaternion from the given `godot.Basis`.
		
		@param basis The basis to construct from.
	**/
	public overload inline function new(basis:godot.Basis) {
		this = new Quat_(basis);
	}
	#end

	#if !doc_gen
	/**		
		Constructs a quaternion that will perform a rotation specified by
		Euler angles (in the YXZ convention: when decomposing,
		first Z, then X, and Y last),
		given in the vector format as (X angle, Y angle, Z angle).
		
		@param eulerYXZ
	**/
	public overload inline function new(eulerYXZ:godot.Vector3) {
		this = new Quat_(eulerYXZ);
	}
	#end

	#if !doc_gen
	/**		
		Constructs a quaternion that will rotate around the given axis
		by the specified angle. The axis must be a normalized vector.
		
		@param axis The axis to rotate around. Must be normalized.
		@param angle The angle to rotate, in radians.
	**/
	public overload inline function new(axis:godot.Vector3, angle:Single) {
		this = new Quat_(axis, angle);
	}
	#end

	/**
		Operator overload for `godot.Quat` * `godot.Quat`.
	**/
	@:op(A * B) static inline overload function op_Multiply(left:godot.Quat, right:godot.Quat):godot.Quat {
		return cs.Syntax.code("{0} * {1}", left, right);
	}

	/**
		Operator overload for `godot.Quat` + `godot.Quat`.
	**/
	@:op(A + B) static inline function op_Addition(left:godot.Quat, right:godot.Quat):godot.Quat {
		return cs.Syntax.code("{0} + {1}", left, right);
	}

	/**
		Operator overload for `godot.Quat` - `godot.Quat`.
	**/
	@:op(A - B) static inline function op_Subtraction(left:godot.Quat, right:godot.Quat):godot.Quat {
		return cs.Syntax.code("{0} - {1}", left, right);
	}

	/**
		Operator overload for -`godot.Quat`.
	**/
	@:op(-A) static inline function op_UnaryNegation(left:godot.Quat):godot.Quat {
		return cs.Syntax.code("-{0}", left);
	}

	/**
		Operator overload for `godot.Quat` * `godot.Vector3`.
	**/
	@:op(A * B) static inline overload function op_Multiply(left:godot.Quat, right:godot.Vector3):godot.Quat {
		return cs.Syntax.code("{0} * {1}", left, right);
	}

	/**
		Operator overload for `godot.Vector3` * `godot.Quat`.
	**/
	@:op(A * B) static inline overload function op_Multiply(left:godot.Vector3, right:godot.Quat):godot.Quat {
		return cs.Syntax.code("{0} * {1}", left, right);
	}

	/**
		Operator overload for `godot.Quat` * ((global::System.Single)(`Float`)).
	**/
	@:op(A * B) static inline overload function op_Multiply(left:godot.Quat, right:Float):godot.Quat {
		return cs.Syntax.code("{0} * ((global::System.Single)({1}))", left, right);
	}

	/**
		Operator overload for ((global::System.Single)(`Float`)) * `godot.Quat`.
	**/
	@:op(A * B) static inline overload function op_Multiply(left:Float, right:godot.Quat):godot.Quat {
		return cs.Syntax.code("((global::System.Single)({0})) * {1}", left, right);
	}

	/**
		Operator overload for `godot.Quat` / ((global::System.Single)(`Float`)).
	**/
	@:op(A / B) static inline function op_Division(left:godot.Quat, right:Float):godot.Quat {
		return cs.Syntax.code("{0} / ((global::System.Single)({1}))", left, right);
	}

	/**
		Operator overload for `godot.Quat` == `godot.Quat`.
	**/
	@:op(A == B) static inline function op_Equality(left:godot.Quat, right:godot.Quat):Bool {
		return cs.Syntax.code("{0} == {1}", left, right);
	}

	/**
		Operator overload for `godot.Quat` != `godot.Quat`.
	**/
	@:op(A != B) static inline function op_Inequality(left:godot.Quat, right:godot.Quat):Bool {
		return cs.Syntax.code("{0} != {1}", left, right);
	}
#if !doc_gen
}

@:struct
@:libType
@:csNative
@:native("Godot.Quat")
@:autoBuild(godot.Godot.buildUserClass())
extern class Quat_ extends cs.system.ValueType implements cs.system.IEquatable_1<godot.Quat> {
#end
	/**		
		The identity quaternion, representing no rotation.
		Equivalent to an identity `godot.Basis` matrix. If a vector is transformed by
		an identity quaternion, it will not change.
		
		Value: Equivalent to `new Quat(0, 0, 0, 1)`.
	**/
	@:native("Identity")
	public static var IDENTITY(default, never):godot.Quat;

	/**		
		Returns the squared length (squared magnitude) of the quaternion.
		This method runs faster than `godot.Quat.length`, so prefer it if
		you need to compare quaternions or need the squared length for some formula.
		
		Value: Equivalent to `Dot(this)`.
	**/
	@:native("LengthSquared")
	public var lengthSquared(default, never):Single;

	/**		
		Returns the length (magnitude) of the quaternion.
		
		Value: Equivalent to `Mathf.Sqrt(LengthSquared)`.
	**/
	@:native("Length")
	public var length(default, never):Single;

	/**		
		W component of the quaternion (real part).
		Quaternion components should usually not be manipulated directly.
	**/
	@:native("w")
	public var w:Single;

	/**		
		Z component of the quaternion (imaginary `k` axis part).
		Quaternion components should usually not be manipulated directly.
	**/
	@:native("z")
	public var z:Single;

	/**		
		Y component of the quaternion (imaginary `j` axis part).
		Quaternion components should usually not be manipulated directly.
	**/
	@:native("y")
	public var y:Single;

	/**		
		X component of the quaternion (imaginary `i` axis part).
		Quaternion components should usually not be manipulated directly.
	**/
	@:native("x")
	public var x:Single;

	/**		
		Performs a cubic spherical interpolation between quaternions `preA`,
		this vector, `b`, and `postB`, by the given amount `t`.
		
		@param b The destination quaternion.
		@param preA A quaternion before this quaternion.
		@param postB A quaternion after `b`.
		@param t A value on the range of 0.0 to 1.0, representing the amount of interpolation.
		@returns The interpolated quaternion.
	**/
	@:native("CubicSlerp")
	public function cubicSlerp(b:godot.Quat, preA:godot.Quat, postB:godot.Quat, t:Single):godot.Quat;

	/**		
		Returns the dot product of two quaternions.
		
		@param b The other quaternion.
		@returns The dot product.
	**/
	@:native("Dot")
	public function dot(b:godot.Quat):Single;

	/**		
		Returns Euler angles (in the YXZ convention: when decomposing,
		first Z, then X, and Y last) corresponding to the rotation
		represented by the unit quaternion. Returned vector contains
		the rotation angles in the format (X angle, Y angle, Z angle).
		
		@returns The Euler angle representation of this quaternion.
	**/
	@:native("GetEuler")
	public function getEuler():godot.Vector3;

	/**		
		Returns the inverse of the quaternion.
		
		@returns The inverse quaternion.
	**/
	@:native("Inverse")
	public function inverse():godot.Quat;

	/**		
		Returns whether the quaternion is normalized or not.
		
		@returns A bool for whether the quaternion is normalized or not.
	**/
	@:native("IsNormalized")
	public function isNormalized():Bool;

	/**		
		Returns a copy of the quaternion, normalized to unit length.
		
		@returns The normalized quaternion.
	**/
	@:native("Normalized")
	public function normalized():godot.Quat;

	@:native("Set")
	public overload function set(x:Single, y:Single, z:Single, w:Single):Void;

	@:native("Set")
	public overload function set(q:godot.Quat):Void;

	@:native("SetAxisAngle")
	public function setAxisAngle(axis:godot.Vector3, angle:Single):Void;

	@:native("SetEuler")
	public function setEuler(eulerYXZ:godot.Vector3):Void;

	/**		
		Returns the result of the spherical linear interpolation between
		this quaternion and `to` by amount `weight`.
		
		Note: Both quaternions must be normalized.
		
		@param to The destination quaternion for interpolation. Must be normalized.
		@param weight A value on the range of 0.0 to 1.0, representing the amount of interpolation.
		@returns The resulting quaternion of the interpolation.
	**/
	@:native("Slerp")
	public function slerp(to:godot.Quat, weight:Single):godot.Quat;

	/**		
		Returns the result of the spherical linear interpolation between
		this quaternion and `to` by amount `weight`, but without
		checking if the rotation path is not bigger than 90 degrees.
		
		@param to The destination quaternion for interpolation. Must be normalized.
		@param weight A value on the range of 0.0 to 1.0, representing the amount of interpolation.
		@returns The resulting quaternion of the interpolation.
	**/
	@:native("Slerpni")
	public function slerpni(to:godot.Quat, weight:Single):godot.Quat;

	/**		
		Returns a vector transformed (multiplied) by this quaternion.
		
		@param v A vector to transform.
		@returns The transformed vector.
	**/
	@:native("Xform")
	public function xform(v:godot.Vector3):godot.Vector3;

	/**		
		Constructs a quaternion defined by the given values.
		
		@param x X component of the quaternion (imaginary `i` axis part).
		@param y Y component of the quaternion (imaginary `j` axis part).
		@param z Z component of the quaternion (imaginary `k` axis part).
		@param w W component of the quaternion (real part).
	**/
	@:native("new")
	public overload function new(x:Single, y:Single, z:Single, w:Single):Void;

	/**		
		Constructs a quaternion from the given quaternion.
		
		@param q The existing quaternion.
	**/
	@:native("new")
	public overload function new(q:godot.Quat):Void;

	/**		
		Constructs a quaternion from the given `godot.Basis`.
		
		@param basis The basis to construct from.
	**/
	@:native("new")
	public overload function new(basis:godot.Basis):Void;

	/**		
		Constructs a quaternion that will perform a rotation specified by
		Euler angles (in the YXZ convention: when decomposing,
		first Z, then X, and Y last),
		given in the vector format as (X angle, Y angle, Z angle).
		
		@param eulerYXZ
	**/
	@:native("new")
	public overload function new(eulerYXZ:godot.Vector3):Void;

	/**		
		Constructs a quaternion that will rotate around the given axis
		by the specified angle. The axis must be a normalized vector.
		
		@param axis The axis to rotate around. Must be normalized.
		@param angle The angle to rotate, in radians.
	**/
	@:native("new")
	public overload function new(axis:godot.Vector3, angle:Single):Void;

	/**		
		Returns true if this quaternion and `other` are approximately equal, by running
		`godot.Mathf.isEqualApprox` on each component.
		
		@param other The other quaternion to compare.
		@returns Whether or not the quaternions are approximately equal.
	**/
	@:native("IsEqualApprox")
	public function isEqualApprox(other:godot.Quat):Bool;

	@:native("ToString")
	public overload function toString():std.String;

	@:native("ToString")
	public overload function toString(format:std.String):std.String;
}
