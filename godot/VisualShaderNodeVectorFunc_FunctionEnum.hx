// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.VisualShaderNodeVectorFunc.FunctionEnum")
@:csNative
extern enum VisualShaderNodeVectorFunc_FunctionEnum {
	/**		
		Normalizes the vector so that it has a length of `1` but points in the same direction.
	**/
	Normalize;

	/**		
		Clamps the value between `0.0` and `1.0`.
	**/
	Saturate;

	/**		
		Returns the opposite value of the parameter.
	**/
	Negate;

	/**		
		Returns `1/vector`.
	**/
	Reciprocal;

	/**		
		Converts RGB vector to HSV equivalent.
	**/
	Rgb2hsv;

	/**		
		Converts HSV vector to RGB equivalent.
	**/
	Hsv2rgb;

	/**		
		Returns the absolute value of the parameter.
	**/
	Abs;

	/**		
		Returns the arc-cosine of the parameter.
	**/
	Acos;

	/**		
		Returns the inverse hyperbolic cosine of the parameter.
	**/
	Acosh;

	/**		
		Returns the arc-sine of the parameter.
	**/
	Asin;

	/**		
		Returns the inverse hyperbolic sine of the parameter.
	**/
	Asinh;

	/**		
		Returns the arc-tangent of the parameter.
	**/
	Atan;

	/**		
		Returns the inverse hyperbolic tangent of the parameter.
	**/
	Atanh;

	/**		
		Finds the nearest integer that is greater than or equal to the parameter.
	**/
	Ceil;

	/**		
		Returns the cosine of the parameter.
	**/
	Cos;

	/**		
		Returns the hyperbolic cosine of the parameter.
	**/
	Cosh;

	/**		
		Converts a quantity in radians to degrees.
	**/
	Degrees;

	/**		
		Base-e Exponential.
	**/
	Exp;

	/**		
		Base-2 Exponential.
	**/
	Exp2;

	/**		
		Finds the nearest integer less than or equal to the parameter.
	**/
	Floor;

	/**		
		Computes the fractional part of the argument.
	**/
	Frac;

	/**		
		Returns the inverse of the square root of the parameter.
	**/
	InverseSqrt;

	/**		
		Natural logarithm.
	**/
	Log;

	/**		
		Base-2 logarithm.
	**/
	Log2;

	/**		
		Converts a quantity in degrees to radians.
	**/
	Radians;

	/**		
		Finds the nearest integer to the parameter.
	**/
	Round;

	/**		
		Finds the nearest even integer to the parameter.
	**/
	Roundeven;

	/**		
		Extracts the sign of the parameter, i.e. returns `-1` if the parameter is negative, `1` if it's positive and `0` otherwise.
	**/
	Sign;

	/**		
		Returns the sine of the parameter.
	**/
	Sin;

	/**		
		Returns the hyperbolic sine of the parameter.
	**/
	Sinh;

	/**		
		Returns the square root of the parameter.
	**/
	Sqrt;

	/**		
		Returns the tangent of the parameter.
	**/
	Tan;

	/**		
		Returns the hyperbolic tangent of the parameter.
	**/
	Tanh;

	/**		
		Returns a value equal to the nearest integer to the parameter whose absolute value is not larger than the absolute value of the parameter.
	**/
	Trunc;

	/**		
		Returns `1.0 - vector`.
	**/
	Oneminus;
}
