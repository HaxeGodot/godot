// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
3×3 matrix used for 3D rotation and scale.
Almost always used as an orthogonal basis for a Transform.

Contains 3 vector fields X, Y and Z as its columns, which are typically
interpreted as the local basis vectors of a 3D transformation. For such use,
it is composed of a scaling and a rotation matrix, in that order (M = R.S).

Can also be accessed as array of 3D vectors. These vectors are normally
orthogonal to each other, but are not necessarily normalized (due to scaling).

For more information, read this documentation article:
https://docs.godotengine.org/en/3.3/tutorials/math/matrices_and_transforms.html
**/
#if doc_gen
@:struct
@:libType
@:csNative
@:native("Godot.Basis")
@:autoBuild(godot.Godot.buildUserClass())
extern class Basis extends cs.system.ValueType implements cs.system.IEquatable_1<godot.Basis> {
#else
@:forward
@:forwardStatics
extern abstract Basis(Basis_) from Basis_ to Basis_ {
#end
	#if !doc_gen
	/**		
		Constructs a pure rotation basis matrix from the given quaternion.
		
		@param quat The quaternion to create the basis from.
	**/
	public overload inline function new(quat:godot.Quat) {
		this = new Basis_(quat);
	}
	#end

	#if !doc_gen
	/**		
		Constructs a pure rotation basis matrix from the given Euler angles
		(in the YXZ convention: when *composing*, first Y, then X, and Z last),
		given in the vector format as (X angle, Y angle, Z angle).
		
		Consider using the `godot.Basis.#ctor` constructor instead, which
		uses a `godot.Quat` quaternion instead of Euler angles.
		
		@param eulerYXZ The Euler angles to create the basis from.
	**/
	public overload inline function new(eulerYXZ:godot.Vector3) {
		this = new Basis_(eulerYXZ);
	}
	#end

	#if !doc_gen
	/**		
		Constructs a pure rotation basis matrix, rotated around the given `axis`
		by `phi` (in radians). The axis must be a normalized vector.
		
		@param axis The axis to rotate around. Must be normalized.
		@param phi The angle to rotate, in radians.
	**/
	public overload inline function new(axis:godot.Vector3, phi:Single) {
		this = new Basis_(axis, phi);
	}
	#end

	#if !doc_gen
	/**		
		Constructs a basis matrix from 3 axis vectors (matrix columns).
		
		@param column0 The X vector, or Column0.
		@param column1 The Y vector, or Column1.
		@param column2 The Z vector, or Column2.
	**/
	public overload inline function new(column0:godot.Vector3, column1:godot.Vector3, column2:godot.Vector3) {
		this = new Basis_(column0, column1, column2);
	}
	#end

	/**
		Operator overload for `godot.Basis` * `godot.Basis`.
	**/
	@:op(A * B) static inline function op_Multiply(left:godot.Basis, right:godot.Basis):godot.Basis {
		return cs.Syntax.code("{0} * {1}", left, right);
	}

	/**
		Operator overload for `godot.Basis` == `godot.Basis`.
	**/
	@:op(A == B) static inline function op_Equality(left:godot.Basis, right:godot.Basis):Bool {
		return cs.Syntax.code("{0} == {1}", left, right);
	}

	/**
		Operator overload for `godot.Basis` != `godot.Basis`.
	**/
	@:op(A != B) static inline function op_Inequality(left:godot.Basis, right:godot.Basis):Bool {
		return cs.Syntax.code("{0} != {1}", left, right);
	}
#if !doc_gen
}

@:struct
@:libType
@:csNative
@:native("Godot.Basis")
@:autoBuild(godot.Godot.buildUserClass())
extern class Basis_ extends cs.system.ValueType implements cs.system.IEquatable_1<godot.Basis> {
#end
	/**		
		The basis that will flip something along the Z axis when used in a transformation.
		
		Value: Equivalent to `new Basis(Vector3.Right, Vector3.Up, Vector3.Forward)`.
	**/
	@:native("FlipZ")
	public static var FLIP_Z(default, never):godot.Basis;

	/**		
		The basis that will flip something along the Y axis when used in a transformation.
		
		Value: Equivalent to `new Basis(Vector3.Right, Vector3.Down, Vector3.Back)`.
	**/
	@:native("FlipY")
	public static var FLIP_Y(default, never):godot.Basis;

	/**		
		The basis that will flip something along the X axis when used in a transformation.
		
		Value: Equivalent to `new Basis(Vector3.Left, Vector3.Up, Vector3.Back)`.
	**/
	@:native("FlipX")
	public static var FLIP_X(default, never):godot.Basis;

	/**		
		The identity basis, with no rotation or scaling applied.
		This is used as a replacement for `Basis()` in GDScript.
		Do not use `new Basis()` with no arguments in C#, because it sets all values to zero.
		
		Value: Equivalent to `new Basis(Vector3.Right, Vector3.Up, Vector3.Back)`.
	**/
	@:native("Identity")
	public static var IDENTITY(default, never):godot.Basis;

	/**		
		The scale of this basis.
		
		Value: Equivalent to the lengths of each column vector, but negative if the determinant is negative.
	**/
	@:native("Scale")
	public var scale:godot.Vector3;

	/**		
		Column 2 of the basis matrix (the Z vector).
		
		Value: Equivalent to `godot.Basis.z` and array index `[2]`.
	**/
	@:native("Column2")
	public var column2:godot.Vector3;

	/**		
		Column 1 of the basis matrix (the Y vector).
		
		Value: Equivalent to `godot.Basis.y` and array index `[1]`.
	**/
	@:native("Column1")
	public var column1:godot.Vector3;

	/**		
		Column 0 of the basis matrix (the X vector).
		
		Value: Equivalent to `godot.Basis.x` and array index `[0]`.
	**/
	@:native("Column0")
	public var column0:godot.Vector3;

	/**		
		The basis matrix's Z vector (column 2).
		
		Value: Equivalent to `godot.Basis.column2` and array index `[2]`.
	**/
	@:native("z")
	public var z:godot.Vector3;

	/**		
		The basis matrix's Y vector (column 1).
		
		Value: Equivalent to `godot.Basis.column1` and array index `[1]`.
	**/
	@:native("y")
	public var y:godot.Vector3;

	/**		
		The basis matrix's X vector (column 0).
		
		Value: Equivalent to `godot.Basis.column0` and array index `[0]`.
	**/
	@:native("x")
	public var x:godot.Vector3;

	/**		
		Row 2 of the basis matrix. Shows which vectors contribute
		to the Z direction. Rows are not very useful for user code,
		but are more efficient for some internal calculations.
	**/
	@:native("Row2")
	public var row2:godot.Vector3;

	/**		
		Row 1 of the basis matrix. Shows which vectors contribute
		to the Y direction. Rows are not very useful for user code,
		but are more efficient for some internal calculations.
	**/
	@:native("Row1")
	public var row1:godot.Vector3;

	/**		
		Row 0 of the basis matrix. Shows which vectors contribute
		to the X direction. Rows are not very useful for user code,
		but are more efficient for some internal calculations.
	**/
	@:native("Row0")
	public var row0:godot.Vector3;

	@:native("RotationQuat")
	public function rotationQuat():godot.Quat;

	/**		
		Returns the determinant of the basis matrix. If the basis is
		uniformly scaled, its determinant is the square of the scale.
		
		A negative determinant means the basis has a negative scale.
		A zero determinant means the basis isn't invertible,
		and is usually considered invalid.
		
		@returns The determinant of the basis matrix.
	**/
	@:native("Determinant")
	public function determinant():Single;

	/**		
		Returns the basis's rotation in the form of Euler angles
		(in the YXZ convention: when *decomposing*, first Z, then X, and Y last).
		The returned vector contains the rotation angles in
		the format (X angle, Y angle, Z angle).
		
		Consider using the `godot.Basis.quat` method instead, which
		returns a `godot.Quat` quaternion instead of Euler angles.
		
		@returns A Vector3 representing the basis rotation in Euler angles.
	**/
	@:native("GetEuler")
	public function getEuler():godot.Vector3;

	/**		
		Get rows by index. Rows are not very useful for user code,
		but are more efficient for some internal calculations.
		
		@param index Which row.
		@returns One of `Row0`, `Row1`, or `Row2`.
	**/
	@:native("GetRow")
	public function getRow(index:Int):godot.Vector3;

	/**		
		Sets rows by index. Rows are not very useful for user code,
		but are more efficient for some internal calculations.
		
		@param index Which row.
		@param value The vector to set the row to.
	**/
	@:native("SetRow")
	public function setRow(index:Int, value:godot.Vector3):Void;

	/**		
		Deprecated, please use the array operator instead.
		
		@param index Which column.
		@returns One of `Column0`, `Column1`, or `Column2`.
	**/
	@:native("GetColumn")
	public function getColumn(index:Int):godot.Vector3;

	/**		
		Deprecated, please use the array operator instead.
		
		@param index Which column.
		@param value The vector to set the column to.
	**/
	@:native("SetColumn")
	public function setColumn(index:Int, value:godot.Vector3):Void;

	/**		
		Deprecated, please use the array operator instead.
		
		@param axis Which column.
		@returns One of `Column0`, `Column1`, or `Column2`.
	**/
	@:native("GetAxis")
	public function getAxis(axis:Int):godot.Vector3;

	/**		
		This function considers a discretization of rotations into
		24 points on unit sphere, lying along the vectors (x, y, z) with
		each component being either -1, 0, or 1, and returns the index
		of the point best representing the orientation of the object.
		It is mainly used by the `godot.GridMap` editor.
		
		For further details, refer to the Godot source code.
		
		@returns The orthogonal index.
	**/
	@:native("GetOrthogonalIndex")
	public function getOrthogonalIndex():Int;

	/**		
		Returns the inverse of the matrix.
		
		@returns The inverse matrix.
	**/
	@:native("Inverse")
	public function inverse():godot.Basis;

	/**		
		Returns the orthonormalized version of the basis matrix (useful to
		call occasionally to avoid rounding errors for orthogonal matrices).
		This performs a Gram-Schmidt orthonormalization on the basis of the matrix.
		
		@returns An orthonormalized basis matrix.
	**/
	@:native("Orthonormalized")
	public function orthonormalized():godot.Basis;

	/**		
		Introduce an additional rotation around the given `axis`
		by `phi` (in radians). The axis must be a normalized vector.
		
		@param axis The axis to rotate around. Must be normalized.
		@param phi The angle to rotate, in radians.
		@returns The rotated basis matrix.
	**/
	@:native("Rotated")
	public function rotated(axis:godot.Vector3, phi:Single):godot.Basis;

	/**		
		Introduce an additional scaling specified by the given 3D scaling factor.
		
		@param scale The scale to introduce.
		@returns The scaled basis matrix.
	**/
	@:native("Scaled")
	public function scaled(scale:godot.Vector3):godot.Basis;

	/**		
		Assuming that the matrix is a proper rotation matrix, slerp performs
		a spherical-linear interpolation with another rotation matrix.
		
		@param target The destination basis for interpolation.
		@param weight A value on the range of 0.0 to 1.0, representing the amount of interpolation.
		@returns The resulting basis matrix of the interpolation.
	**/
	@:native("Slerp")
	public function slerp(target:godot.Basis, weight:Single):godot.Basis;

	/**		
		Transposed dot product with the X axis of the matrix.
		
		@param with A vector to calculate the dot product with.
		@returns The resulting dot product.
	**/
	@:native("Tdotx")
	public function tdotx(with:godot.Vector3):Single;

	/**		
		Transposed dot product with the Y axis of the matrix.
		
		@param with A vector to calculate the dot product with.
		@returns The resulting dot product.
	**/
	@:native("Tdoty")
	public function tdoty(with:godot.Vector3):Single;

	/**		
		Transposed dot product with the Z axis of the matrix.
		
		@param with A vector to calculate the dot product with.
		@returns The resulting dot product.
	**/
	@:native("Tdotz")
	public function tdotz(with:godot.Vector3):Single;

	/**		
		Returns the transposed version of the basis matrix.
		
		@returns The transposed basis matrix.
	**/
	@:native("Transposed")
	public function transposed():godot.Basis;

	/**		
		Returns a vector transformed (multiplied) by the basis matrix.
		
		@param v A vector to transform.
		@returns The transformed vector.
	**/
	@:native("Xform")
	public function xform(v:godot.Vector3):godot.Vector3;

	/**		
		Returns a vector transformed (multiplied) by the transposed basis matrix.
		
		Note: This results in a multiplication by the inverse of the
		basis matrix only if it represents a rotation-reflection.
		
		@param v A vector to inversely transform.
		@returns The inversely transformed vector.
	**/
	@:native("XformInv")
	public function xformInv(v:godot.Vector3):godot.Vector3;

	/**		
		Returns the basis's rotation in the form of a quaternion.
		See `godot.Basis.getEuler` if you need Euler angles, but keep in
		mind that quaternions should generally be preferred to Euler angles.
		
		@returns A `godot.Quat` representing the basis's rotation.
	**/
	@:native("Quat")
	public function quat():godot.Quat;

	/**		
		Constructs a pure rotation basis matrix from the given quaternion.
		
		@param quat The quaternion to create the basis from.
	**/
	@:native("new")
	public overload function new(quat:godot.Quat):Void;

	/**		
		Constructs a pure rotation basis matrix from the given Euler angles
		(in the YXZ convention: when *composing*, first Y, then X, and Z last),
		given in the vector format as (X angle, Y angle, Z angle).
		
		Consider using the `godot.Basis.#ctor` constructor instead, which
		uses a `godot.Quat` quaternion instead of Euler angles.
		
		@param eulerYXZ The Euler angles to create the basis from.
	**/
	@:native("new")
	public overload function new(eulerYXZ:godot.Vector3):Void;

	/**		
		Constructs a pure rotation basis matrix, rotated around the given `axis`
		by `phi` (in radians). The axis must be a normalized vector.
		
		@param axis The axis to rotate around. Must be normalized.
		@param phi The angle to rotate, in radians.
	**/
	@:native("new")
	public overload function new(axis:godot.Vector3, phi:Single):Void;

	/**		
		Constructs a basis matrix from 3 axis vectors (matrix columns).
		
		@param column0 The X vector, or Column0.
		@param column1 The Y vector, or Column1.
		@param column2 The Z vector, or Column2.
	**/
	@:native("new")
	public overload function new(column0:godot.Vector3, column1:godot.Vector3, column2:godot.Vector3):Void;

	/**		
		Returns true if this basis and `other` are approximately equal, by running
		`godot.Vector3.isEqualApprox` on each component.
		
		@param other The other basis to compare.
		@returns Whether or not the matrices are approximately equal.
	**/
	@:native("IsEqualApprox")
	public function isEqualApprox(other:godot.Basis):Bool;

	@:native("ToString")
	public overload function toString():std.String;

	@:native("ToString")
	public overload function toString(format:std.String):std.String;
}
