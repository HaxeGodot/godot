// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.VisualScriptBuiltinFunc.BuiltinFunc")
@:csNative
extern enum VisualScriptBuiltinFunc_BuiltinFunc {
	/**		
		Return the sine of the input.
	**/
	MathSin;

	/**		
		Return the cosine of the input.
	**/
	MathCos;

	/**		
		Return the tangent of the input.
	**/
	MathTan;

	/**		
		Return the hyperbolic sine of the input.
	**/
	MathSinh;

	/**		
		Return the hyperbolic cosine of the input.
	**/
	MathCosh;

	/**		
		Return the hyperbolic tangent of the input.
	**/
	MathTanh;

	/**		
		Return the arc sine of the input.
	**/
	MathAsin;

	/**		
		Return the arc cosine of the input.
	**/
	MathAcos;

	/**		
		Return the arc tangent of the input.
	**/
	MathAtan;

	/**		
		Return the arc tangent of the input, using the signs of both parameters to determine the exact angle.
	**/
	MathAtan2;

	/**		
		Return the square root of the input.
	**/
	MathSqrt;

	/**		
		Return the remainder of one input divided by the other, using floating-point numbers.
	**/
	MathFmod;

	/**		
		Return the positive remainder of one input divided by the other, using floating-point numbers.
	**/
	MathFposmod;

	/**		
		Return the input rounded down.
	**/
	MathFloor;

	/**		
		Return the input rounded up.
	**/
	MathCeil;

	/**		
		Return the input rounded to the nearest integer.
	**/
	MathRound;

	/**		
		Return the absolute value of the input.
	**/
	MathAbs;

	/**		
		Return the sign of the input, turning it into 1, -1, or 0. Useful to determine if the input is positive or negative.
	**/
	MathSign;

	/**		
		Return the input raised to a given power.
	**/
	MathPow;

	/**		
		Return the natural logarithm of the input. Note that this is not the typical base-10 logarithm function calculators use.
	**/
	MathLog;

	/**		
		Return the mathematical constant e raised to the specified power of the input. e has an approximate value of 2.71828.
	**/
	MathExp;

	/**		
		Return whether the input is NaN (Not a Number) or not. NaN is usually produced by dividing 0 by 0, though other ways exist.
	**/
	MathIsnan;

	/**		
		Return whether the input is an infinite floating-point number or not. Infinity is usually produced by dividing a number by 0, though other ways exist.
	**/
	MathIsinf;

	/**		
		Easing function, based on exponent. 0 is constant, 1 is linear, 0 to 1 is ease-in, 1+ is ease out. Negative values are in-out/out in.
	**/
	MathEase;

	/**		
		Return the number of digit places after the decimal that the first non-zero digit occurs.
	**/
	MathDecimals;

	/**		
		Return the input snapped to a given step.
	**/
	MathStepify;

	/**		
		Return a number linearly interpolated between the first two inputs, based on the third input. Uses the formula `a + (a - b) * t`.
	**/
	MathLerp;

	MathInverseLerp;

	MathRangeLerp;

	/**		
		Moves the number toward a value, based on the third input.
	**/
	MathMoveToward;

	/**		
		Return the result of `value` decreased by `step` * `amount`.
	**/
	MathDectime;

	/**		
		Randomize the seed (or the internal state) of the random number generator. Current implementation reseeds using a number based on time.
	**/
	MathRandomize;

	/**		
		Return a random 32 bits integer value. To obtain a random value between 0 to N (where N is smaller than 2^32 - 1), you can use it with the remainder function.
	**/
	MathRand;

	/**		
		Return a random floating-point value between 0 and 1. To obtain a random value between 0 to N, you can use it with multiplication.
	**/
	MathRandf;

	/**		
		Return a random floating-point value between the two inputs.
	**/
	MathRandom;

	/**		
		Set the seed for the random number generator.
	**/
	MathSeed;

	/**		
		Return a random value from the given seed, along with the new seed.
	**/
	MathRandseed;

	/**		
		Convert the input from degrees to radians.
	**/
	MathDeg2rad;

	/**		
		Convert the input from radians to degrees.
	**/
	MathRad2deg;

	/**		
		Convert the input from linear volume to decibel volume.
	**/
	MathLinear2db;

	/**		
		Convert the input from decibel volume to linear volume.
	**/
	MathDb2linear;

	/**		
		Converts a 2D point expressed in the polar coordinate system (a distance from the origin `r` and an angle `th`) to the cartesian coordinate system (X and Y axis).
	**/
	MathPolar2cartesian;

	/**		
		Converts a 2D point expressed in the cartesian coordinate system (X and Y axis) to the polar coordinate system (a distance from the origin and an angle).
	**/
	MathCartesian2polar;

	MathWrap;

	MathWrapf;

	/**		
		Return the greater of the two numbers, also known as their maximum.
	**/
	LogicMax;

	/**		
		Return the lesser of the two numbers, also known as their minimum.
	**/
	LogicMin;

	/**		
		Return the input clamped inside the given range, ensuring the result is never outside it. Equivalent to `min(max(input, range_low), range_high)`.
	**/
	LogicClamp;

	/**		
		Return the nearest power of 2 to the input.
	**/
	LogicNearestPo2;

	/**		
		Create a `godot.WeakRef` from the input.
	**/
	ObjWeakref;

	/**		
		Create a `godot.FuncRef` from the input.
	**/
	FuncFuncref;

	/**		
		Convert between types.
	**/
	TypeConvert;

	/**		
		Return the type of the input as an integer. Check `godot.Variant_Type` for the integers that might be returned.
	**/
	TypeOf;

	/**		
		Checks if a type is registered in the `godot.ClassDB`.
	**/
	TypeExists;

	/**		
		Return a character with the given ascii value.
	**/
	TextChar;

	/**		
		Convert the input to a string.
	**/
	TextStr;

	/**		
		Print the given string to the output window.
	**/
	TextPrint;

	/**		
		Print the given string to the standard error output.
	**/
	TextPrinterr;

	/**		
		Print the given string to the standard output, without adding a newline.
	**/
	TextPrintraw;

	/**		
		Serialize a `Variant` to a string.
	**/
	VarToStr;

	/**		
		Deserialize a `Variant` from a string serialized using .
	**/
	StrToVar;

	/**		
		Serialize a `Variant` to a `cs.UInt8`.
	**/
	VarToBytes;

	/**		
		Deserialize a `Variant` from a `cs.UInt8` serialized using .
	**/
	BytesToVar;

	/**		
		Return the `godot.Color` with the given name and alpha ranging from 0 to 1.
		
		Note: Names are defined in `color_names.inc`.
	**/
	Colorn;

	/**		
		Return a number smoothly interpolated between the first two inputs, based on the third input. Similar to , but interpolates faster at the beginning and slower at the end. Using Hermite interpolation formula:
		
		```
		
		var t = clamp((weight - from) / (to - from), 0.0, 1.0)
		return t * t * (3.0 - 2.0 * t)
		
		```
	**/
	MathSmoothstep;

	MathPosmod;

	MathLerpAngle;

	TextOrd;

	/**		
		Represents the size of the `godot.VisualScriptBuiltinFunc_BuiltinFunc` enum.
	**/
	FuncMax;
}
