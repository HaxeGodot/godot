// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.VisualShaderNodeVectorOp.OperatorEnum")
@:csNative
extern enum VisualShaderNodeVectorOp_OperatorEnum {
	/**		
		Adds two vectors.
	**/
	Add;

	/**		
		Subtracts a vector from a vector.
	**/
	Sub;

	/**		
		Multiplies two vectors.
	**/
	Mul;

	/**		
		Divides vector by vector.
	**/
	Div;

	/**		
		Returns the remainder of the two vectors.
	**/
	Mod;

	/**		
		Returns the value of the first parameter raised to the power of the second, for each component of the vectors.
	**/
	Pow;

	/**		
		Returns the greater of two values, for each component of the vectors.
	**/
	Max;

	/**		
		Returns the lesser of two values, for each component of the vectors.
	**/
	Min;

	/**		
		Calculates the cross product of two vectors.
	**/
	Cross;

	/**		
		Returns the arc-tangent of the parameters.
	**/
	Atan2;

	/**		
		Returns the vector that points in the direction of reflection. `a` is incident vector and `b` is the normal vector.
	**/
	Reflect;

	/**		
		Vector step operator. Returns `0.0` if `a` is smaller than `b` and `1.0` otherwise.
	**/
	Step;
}
