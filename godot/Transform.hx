// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
3×4 matrix (3 rows, 4 columns) used for 3D linear transformations.
It can represent transformations such as translation, rotation, or scaling.
It consists of a `godot.Basis` (first 3 columns) and a
`godot.Vector3` for the origin (last column).

For more information, read this documentation article:
https://docs.godotengine.org/en/3.3/tutorials/math/matrices_and_transforms.html
**/
#if doc_gen
@:struct
@:libType
@:csNative
@:native("Godot.Transform")
@:autoBuild(godot.Godot.buildUserClass())
extern class Transform extends cs.system.ValueType implements cs.system.IEquatable_1<godot.Transform> {
#else
@:forward
@:forwardStatics
extern abstract Transform(Transform_) from Transform_ to Transform_ {
#end
	#if !doc_gen
	/**		
		Constructs a transformation matrix from 4 vectors (matrix columns).
		
		@param column0 The X vector, or column index 0.
		@param column1 The Y vector, or column index 1.
		@param column2 The Z vector, or column index 2.
		@param origin The origin vector, or column index 3.
	**/
	public overload inline function new(column0:godot.Vector3, column1:godot.Vector3, column2:godot.Vector3, origin:godot.Vector3) {
		this = new Transform_(column0, column1, column2, origin);
	}
	#end

	#if !doc_gen
	/**		
		Constructs a transformation matrix from the given quaternion and origin vector.
		
		@param quat The `godot.Quat` to create the basis from.
		@param origin The origin vector, or column index 3.
	**/
	public overload inline function new(quat:godot.Quat, origin:godot.Vector3) {
		this = new Transform_(quat, origin);
	}
	#end

	#if !doc_gen
	/**		
		Constructs a transformation matrix from the given basis and origin vector.
		
		@param basis The `godot.Basis` to create the basis from.
		@param origin The origin vector, or column index 3.
	**/
	public overload inline function new(basis:godot.Basis, origin:godot.Vector3) {
		this = new Transform_(basis, origin);
	}
	#end

	/**
		Operator overload for `godot.Transform` * `godot.Transform`.
	**/
	@:op(A * B) static inline function op_Multiply(left:godot.Transform, right:godot.Transform):godot.Transform {
		return cs.Syntax.code("{0} * {1}", left, right);
	}

	/**
		Operator overload for `godot.Transform` == `godot.Transform`.
	**/
	@:op(A == B) static inline function op_Equality(left:godot.Transform, right:godot.Transform):Bool {
		return cs.Syntax.code("{0} == {1}", left, right);
	}

	/**
		Operator overload for `godot.Transform` != `godot.Transform`.
	**/
	@:op(A != B) static inline function op_Inequality(left:godot.Transform, right:godot.Transform):Bool {
		return cs.Syntax.code("{0} != {1}", left, right);
	}
#if !doc_gen
}

@:struct
@:libType
@:csNative
@:native("Godot.Transform")
@:autoBuild(godot.Godot.buildUserClass())
extern class Transform_ extends cs.system.ValueType implements cs.system.IEquatable_1<godot.Transform> {
#end
	/**		
		The transform that will flip something along the Z axis.
		
		Value: Equivalent to `new Transform(Vector3.Right, Vector3.Up, Vector3.Forward, Vector3.Zero)`.
	**/
	@:native("FlipZ")
	public static var FLIP_Z(default, never):godot.Transform;

	/**		
		The transform that will flip something along the Y axis.
		
		Value: Equivalent to `new Transform(Vector3.Right, Vector3.Down, Vector3.Back, Vector3.Zero)`.
	**/
	@:native("FlipY")
	public static var FLIP_Y(default, never):godot.Transform;

	/**		
		The transform that will flip something along the X axis.
		
		Value: Equivalent to `new Transform(Vector3.Left, Vector3.Up, Vector3.Back, Vector3.Zero)`.
	**/
	@:native("FlipX")
	public static var FLIP_X(default, never):godot.Transform;

	/**		
		The identity transform, with no translation, rotation, or scaling applied.
		This is used as a replacement for `Transform()` in GDScript.
		Do not use `new Transform()` with no arguments in C#, because it sets all values to zero.
		
		Value: Equivalent to `new Transform(Vector3.Right, Vector3.Up, Vector3.Back, Vector3.Zero)`.
	**/
	@:native("Identity")
	public static var IDENTITY(default, never):godot.Transform;

	/**		
		The origin vector (column 3, the fourth column). Equivalent to array index `[3]`.
	**/
	@:native("origin")
	public var origin:godot.Vector3;

	/**		
		The `godot.Basis` of this transform. Contains the X, Y, and Z basis
		vectors (columns 0 to 2) and is responsible for rotation and scale.
	**/
	@:native("basis")
	public var basis:godot.Basis;

	/**		
		Returns the inverse of the transform, under the assumption that
		the transformation is composed of rotation, scaling, and translation.
		
		@returns The inverse transformation matrix.
	**/
	@:native("AffineInverse")
	public function affineInverse():godot.Transform;

	/**		
		Interpolates this transform to the other `transform` by `weight`.
		
		@param transform The other transform.
		@param weight A value on the range of 0.0 to 1.0, representing the amount of interpolation.
		@returns The interpolated transform.
	**/
	@:native("InterpolateWith")
	public function interpolateWith(transform:godot.Transform, weight:Single):godot.Transform;

	/**		
		Returns the inverse of the transform, under the assumption that
		the transformation is composed of rotation and translation
		(no scaling, use `godot.Transform.affineInverse` for transforms with scaling).
		
		@returns The inverse matrix.
	**/
	@:native("Inverse")
	public function inverse():godot.Transform;

	/**		
		Returns a copy of the transform rotated such that its
		-Z axis (forward) points towards the target position.
		
		The transform will first be rotated around the given up vector,
		and then fully aligned to the target by a further rotation around
		an axis perpendicular to both the target and up vectors.
		
		Operations take place in global space.
		
		@param target The object to look at.
		@param up The relative up direction
		@returns The resulting transform.
	**/
	@:native("LookingAt")
	public function lookingAt(target:godot.Vector3, up:godot.Vector3):godot.Transform;

	/**		
		Returns the transform with the basis orthogonal (90 degrees),
		and normalized axis vectors (scale of 1 or -1).
		
		@returns The orthonormalized transform.
	**/
	@:native("Orthonormalized")
	public function orthonormalized():godot.Transform;

	/**		
		Rotates the transform around the given `axis` by `phi` (in radians),
		using matrix multiplication. The axis must be a normalized vector.
		
		@param axis The axis to rotate around. Must be normalized.
		@param phi The angle to rotate, in radians.
		@returns The rotated transformation matrix.
	**/
	@:native("Rotated")
	public function rotated(axis:godot.Vector3, phi:Single):godot.Transform;

	/**		
		Scales the transform by the given 3D scaling factor, using matrix multiplication.
		
		@param scale The scale to introduce.
		@returns The scaled transformation matrix.
	**/
	@:native("Scaled")
	public function scaled(scale:godot.Vector3):godot.Transform;

	@:native("SetLookAt")
	public function setLookAt(eye:godot.Vector3, target:godot.Vector3, up:godot.Vector3):Void;

	/**		
		Translates the transform by the given `offset`,
		relative to the transform's basis vectors.
		
		Unlike `godot.Transform.rotated` and `godot.Transform.scaled`,
		this does not use matrix multiplication.
		
		@param offset The offset to translate by.
		@returns The translated matrix.
	**/
	@:native("Translated")
	public function translated(offset:godot.Vector3):godot.Transform;

	/**		
		Returns a vector transformed (multiplied) by this transformation matrix.
		
		@param v A vector to transform.
		@returns The transformed vector.
	**/
	@:native("Xform")
	public function xform(v:godot.Vector3):godot.Vector3;

	/**		
		Returns a vector transformed (multiplied) by the transposed transformation matrix.
		
		Note: This results in a multiplication by the inverse of the
		transformation matrix only if it represents a rotation-reflection.
		
		@param v A vector to inversely transform.
		@returns The inversely transformed vector.
	**/
	@:native("XformInv")
	public function xformInv(v:godot.Vector3):godot.Vector3;

	/**		
		Constructs a transformation matrix from 4 vectors (matrix columns).
		
		@param column0 The X vector, or column index 0.
		@param column1 The Y vector, or column index 1.
		@param column2 The Z vector, or column index 2.
		@param origin The origin vector, or column index 3.
	**/
	@:native("new")
	public overload function new(column0:godot.Vector3, column1:godot.Vector3, column2:godot.Vector3, origin:godot.Vector3):Void;

	/**		
		Constructs a transformation matrix from the given quaternion and origin vector.
		
		@param quat The `godot.Quat` to create the basis from.
		@param origin The origin vector, or column index 3.
	**/
	@:native("new")
	public overload function new(quat:godot.Quat, origin:godot.Vector3):Void;

	/**		
		Constructs a transformation matrix from the given basis and origin vector.
		
		@param basis The `godot.Basis` to create the basis from.
		@param origin The origin vector, or column index 3.
	**/
	@:native("new")
	public overload function new(basis:godot.Basis, origin:godot.Vector3):Void;

	/**		
		Returns true if this transform and `other` are approximately equal, by running
		`godot.Vector3.isEqualApprox` on each component.
		
		@param other The other transform to compare.
		@returns Whether or not the matrices are approximately equal.
	**/
	@:native("IsEqualApprox")
	public function isEqualApprox(other:godot.Transform):Bool;

	@:native("ToString")
	public overload function toString():std.String;

	@:native("ToString")
	public overload function toString(format:std.String):std.String;
}
