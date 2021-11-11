// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
2×3 matrix (2 rows, 3 columns) used for 2D linear transformations.
It can represent transformations such as translation, rotation, or scaling.
It consists of a three `godot.Vector2` values: x, y, and the origin.

For more information, read this documentation article:
https://docs.godotengine.org/en/3.4/tutorials/math/matrices_and_transforms.html
**/
#if doc_gen
@:struct
@:libType
@:csNative
@:native("Godot.Transform2D")
@:autoBuild(godot.Godot.buildUserClass())
extern class Transform2D extends cs.system.ValueType implements cs.system.IEquatable_1<godot.Transform2D> {
#else
@:forward
@:forwardStatics
extern abstract Transform2D(Transform2D_) from Transform2D_ to Transform2D_ {
#end
	#if !doc_gen
	/**		
		Constructs a transformation matrix from 3 vectors (matrix columns).
		
		@param xAxis The X vector, or column index 0.
		@param yAxis The Y vector, or column index 1.
		@param originPos The origin vector, or column index 2.
	**/
	public overload inline function new(xAxis:godot.Vector2, yAxis:godot.Vector2, originPos:godot.Vector2) {
		this = new Transform2D_(xAxis, yAxis, originPos);
	}
	#end

	#if !doc_gen
	/**		
		Constructs a transformation matrix from the given components.
		Arguments are named such that xy is equal to calling x.y
		
		@param xx The X component of the X column vector, accessed via `t.x.x` or `[0][0]`
		@param xy The Y component of the X column vector, accessed via `t.x.y` or `[0][1]`
		@param yx The X component of the Y column vector, accessed via `t.y.x` or `[1][0]`
		@param yy The Y component of the Y column vector, accessed via `t.y.y` or `[1][1]`
		@param ox The X component of the origin vector, accessed via `t.origin.x` or `[2][0]`
		@param oy The Y component of the origin vector, accessed via `t.origin.y` or `[2][1]`
	**/
	public overload inline function new(xx:Single, xy:Single, yx:Single, yy:Single, ox:Single, oy:Single) {
		this = new Transform2D_(xx, xy, yx, yy, ox, oy);
	}
	#end

	#if !doc_gen
	/**		
		Constructs a transformation matrix from a `rotation` value and
		`origin` vector.
		
		@param rotation The rotation of the new transform, in radians.
		@param origin The origin vector, or column index 2.
	**/
	public overload inline function new(rotation:Single, origin:godot.Vector2) {
		this = new Transform2D_(rotation, origin);
	}
	#end

	/**
		Operator overload for `godot.Transform2D` * `godot.Transform2D`.
	**/
	@:op(A * B) static inline overload function op_Multiply(left:godot.Transform2D, right:godot.Transform2D):godot.Transform2D {
		return cs.Syntax.code("{0} * {1}", left, right);
	}

	/**
		Operator overload for `godot.Transform2D` * `godot.Vector2`.
	**/
	@:op(A * B) static inline overload function op_Multiply(transform:godot.Transform2D, vector:godot.Vector2):godot.Vector2 {
		return cs.Syntax.code("{0} * {1}", transform, vector);
	}

	/**
		Operator overload for `godot.Vector2` * `godot.Transform2D`.
	**/
	@:op(A * B) static inline overload function op_Multiply(vector:godot.Vector2, transform:godot.Transform2D):godot.Vector2 {
		return cs.Syntax.code("{0} * {1}", vector, transform);
	}

	/**
		Operator overload for `godot.Transform2D` * `godot.Rect2`.
	**/
	@:op(A * B) static inline overload function op_Multiply(transform:godot.Transform2D, rect:godot.Rect2):godot.Rect2 {
		return cs.Syntax.code("{0} * {1}", transform, rect);
	}

	/**
		Operator overload for `godot.Rect2` * `godot.Transform2D`.
	**/
	@:op(A * B) static inline overload function op_Multiply(rect:godot.Rect2, transform:godot.Transform2D):godot.Rect2 {
		return cs.Syntax.code("{0} * {1}", rect, transform);
	}

	/**
		Operator overload for `godot.Transform2D` * `cs.NativeArray<godot.Vector2>`.
	**/
	@:op(A * B) static inline overload function op_Multiply(transform:godot.Transform2D, array:cs.NativeArray<godot.Vector2>):cs.NativeArray<godot.Vector2> {
		return cs.Syntax.code("{0} * {1}", transform, array);
	}

	/**
		Operator overload for `cs.NativeArray<godot.Vector2>` * `godot.Transform2D`.
	**/
	@:op(A * B) static inline overload function op_Multiply(array:cs.NativeArray<godot.Vector2>, transform:godot.Transform2D):cs.NativeArray<godot.Vector2> {
		return cs.Syntax.code("{0} * {1}", array, transform);
	}

	/**
		Operator overload for `godot.Transform2D` == `godot.Transform2D`.
	**/
	@:op(A == B) static inline function op_Equality(left:godot.Transform2D, right:godot.Transform2D):Bool {
		return cs.Syntax.code("{0} == {1}", left, right);
	}

	/**
		Operator overload for `godot.Transform2D` != `godot.Transform2D`.
	**/
	@:op(A != B) static inline function op_Inequality(left:godot.Transform2D, right:godot.Transform2D):Bool {
		return cs.Syntax.code("{0} != {1}", left, right);
	}
#if !doc_gen
}

@:struct
@:libType
@:csNative
@:native("Godot.Transform2D")
@:autoBuild(godot.Godot.buildUserClass())
extern class Transform2D_ extends cs.system.ValueType implements cs.system.IEquatable_1<godot.Transform2D> {
#end
	/**		
		The transform that will flip something along the Y axis.
		
		Value: Equivalent to `new Transform2D(Vector2.Right, Vector2.Up, Vector2.Zero)`.
	**/
	@:native("FlipY")
	public static var FLIP_Y(default, never):godot.Transform2D;

	/**		
		The transform that will flip something along the X axis.
		
		Value: Equivalent to `new Transform2D(Vector2.Left, Vector2.Down, Vector2.Zero)`.
	**/
	@:native("FlipX")
	public static var FLIP_X(default, never):godot.Transform2D;

	/**		
		The identity transform, with no translation, rotation, or scaling applied.
		This is used as a replacement for `Transform2D()` in GDScript.
		Do not use `new Transform2D()` with no arguments in C#, because it sets all values to zero.
		
		Value: Equivalent to `new Transform2D(Vector2.Right, Vector2.Down, Vector2.Zero)`.
	**/
	@:native("Identity")
	public static var IDENTITY(default, never):godot.Transform2D;

	/**		
		The scale of this transformation matrix.
		
		Value: Equivalent to the lengths of each column vector, but Y is negative if the determinant is negative.
	**/
	@:native("Scale")
	public var scale:godot.Vector2;

	/**		
		The rotation of this transformation matrix.
		
		Value: Getting is equivalent to calling `godot.Mathf.atan2` with the values of `godot.Transform2D.x`.
	**/
	@:native("Rotation")
	public var rotation:Single;

	/**		
		The origin vector (column 2, the third column). Equivalent to array index `[2]`.
		The origin vector represents translation.
	**/
	@:native("origin")
	public var origin:godot.Vector2;

	/**		
		The basis matrix's Y vector (column 1). Equivalent to array index `[1]`.
	**/
	@:native("y")
	public var y:godot.Vector2;

	/**		
		The basis matrix's X vector (column 0). Equivalent to array index `[0]`.
		
		Value:
	**/
	@:native("x")
	public var x:godot.Vector2;

	/**		
		Returns the inverse of the transform, under the assumption that
		the transformation is composed of rotation, scaling, and translation.
		@see `godot.Transform2D.inverse`
		@returns The inverse transformation matrix.
	**/
	@:native("AffineInverse")
	public function affineInverse():godot.Transform2D;

	/**		
		Returns a vector transformed (multiplied) by the basis matrix.
		This method does not account for translation (the `godot.Transform2D.origin` vector).
		@see `godot.Transform2D.basisXformInv`
		@param v A vector to transform.
		@returns The transformed vector.
	**/
	@:native("BasisXform")
	public function basisXform(v:godot.Vector2):godot.Vector2;

	/**		
		Returns a vector transformed (multiplied) by the inverse basis matrix.
		This method does not account for translation (the `godot.Transform2D.origin` vector).
		
		Note: This results in a multiplication by the inverse of the
		basis matrix only if it represents a rotation-reflection.
		@see `godot.Transform2D.basisXform`
		@param v A vector to inversely transform.
		@returns The inversely transformed vector.
	**/
	@:native("BasisXformInv")
	public function basisXformInv(v:godot.Vector2):godot.Vector2;

	/**		
		Interpolates this transform to the other `transform` by `weight`.
		
		@param transform The other transform.
		@param weight A value on the range of 0.0 to 1.0, representing the amount of interpolation.
		@returns The interpolated transform.
	**/
	@:native("InterpolateWith")
	public function interpolateWith(transform:godot.Transform2D, weight:Single):godot.Transform2D;

	/**		
		Returns the inverse of the transform, under the assumption that
		the transformation is composed of rotation and translation
		(no scaling, use `godot.Transform2D.affineInverse` for transforms with scaling).
		
		@returns The inverse matrix.
	**/
	@:native("Inverse")
	public function inverse():godot.Transform2D;

	/**		
		Returns the transform with the basis orthogonal (90 degrees),
		and normalized axis vectors (scale of 1 or -1).
		
		@returns The orthonormalized transform.
	**/
	@:native("Orthonormalized")
	public function orthonormalized():godot.Transform2D;

	/**		
		Rotates the transform by `phi` (in radians), using matrix multiplication.
		
		@param phi The angle to rotate, in radians.
		@returns The rotated transformation matrix.
	**/
	@:native("Rotated")
	public function rotated(phi:Single):godot.Transform2D;

	/**		
		Scales the transform by the given scaling factor, using matrix multiplication.
		
		@param scale The scale to introduce.
		@returns The scaled transformation matrix.
	**/
	@:native("Scaled")
	public function scaled(scale:godot.Vector2):godot.Transform2D;

	/**		
		Translates the transform by the given `offset`,
		relative to the transform's basis vectors.
		
		Unlike `godot.Transform2D.rotated` and `godot.Transform2D.scaled`,
		this does not use matrix multiplication.
		
		@param offset The offset to translate by.
		@returns The translated matrix.
	**/
	@:native("Translated")
	public function translated(offset:godot.Vector2):godot.Transform2D;

	/**		
		Returns a vector transformed (multiplied) by this transformation matrix.
		@see `godot.Transform2D.xformInv`
		@param v A vector to transform.
		@returns The transformed vector.
	**/
	@:native("Xform")
	public function xform(v:godot.Vector2):godot.Vector2;

	/**		
		Returns a vector transformed (multiplied) by the inverse transformation matrix.
		@see `godot.Transform2D.xform`
		@param v A vector to inversely transform.
		@returns The inversely transformed vector.
	**/
	@:native("XformInv")
	public function xformInv(v:godot.Vector2):godot.Vector2;

	/**		
		Constructs a transformation matrix from 3 vectors (matrix columns).
		
		@param xAxis The X vector, or column index 0.
		@param yAxis The Y vector, or column index 1.
		@param originPos The origin vector, or column index 2.
	**/
	@:native("new")
	public overload function new(xAxis:godot.Vector2, yAxis:godot.Vector2, originPos:godot.Vector2):Void;

	/**		
		Constructs a transformation matrix from the given components.
		Arguments are named such that xy is equal to calling x.y
		
		@param xx The X component of the X column vector, accessed via `t.x.x` or `[0][0]`
		@param xy The Y component of the X column vector, accessed via `t.x.y` or `[0][1]`
		@param yx The X component of the Y column vector, accessed via `t.y.x` or `[1][0]`
		@param yy The Y component of the Y column vector, accessed via `t.y.y` or `[1][1]`
		@param ox The X component of the origin vector, accessed via `t.origin.x` or `[2][0]`
		@param oy The Y component of the origin vector, accessed via `t.origin.y` or `[2][1]`
	**/
	@:native("new")
	public overload function new(xx:Single, xy:Single, yx:Single, yy:Single, ox:Single, oy:Single):Void;

	/**		
		Constructs a transformation matrix from a `rotation` value and
		`origin` vector.
		
		@param rotation The rotation of the new transform, in radians.
		@param origin The origin vector, or column index 2.
	**/
	@:native("new")
	public overload function new(rotation:Single, origin:godot.Vector2):Void;

	/**		
		Returns `true` if this transform and `other` are approximately equal,
		by running `godot.Vector2.isEqualApprox` on each component.
		
		@param other The other transform to compare.
		@returns Whether or not the matrices are approximately equal.
	**/
	@:native("IsEqualApprox")
	public function isEqualApprox(other:godot.Transform2D):Bool;

	/**		
		Converts this `godot.Transform2D` to a string.
		
		@returns A string representation of this transform.
	**/
	@:native("ToString")
	public overload function toString():std.String;

	/**		
		Converts this `godot.Transform2D` to a string with the given `format`.
		
		@returns A string representation of this transform.
	**/
	@:native("ToString")
	public overload function toString(format:std.String):std.String;
}
