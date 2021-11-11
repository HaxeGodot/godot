// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Provides constants and static methods for common mathematical functions.
**/
@:libType
@:csNative
@:native("Godot.Mathf")
@:autoBuild(godot.Godot.buildUserClass())
extern class Mathf {
	/**		
		A very small number used for float comparison with error tolerance.
		1e-06 with single-precision floats, but 1e-14 if `REAL_T_IS_DOUBLE`.
	**/
	@:native("Epsilon")
	public static var EPSILON(default, never):Single;

	/**		
		The square root of 2.
	**/
	@:native("Sqrt2")
	public static var SQRT_2(default, never):Single;

	/**		
		The natural number `e`.
	**/
	@:native("E")
	public static var E(default, never):Single;

	/**		
		"Not a Number", an invalid value. `NaN` has special properties, including
		that it is not equal to itself. It is output by some invalid operations,
		such as dividing zero by zero.
	**/
	@:native("NaN")
	public static var NA_N(default, never):Single;

	/**		
		Positive infinity. For negative infinity, use `-Mathf.Inf`.
	**/
	@:native("Inf")
	public static var INF(default, never):Single;

	/**		
		Constant that represents how many times the diameter of a circle
		fits around its perimeter. This is equivalent to `Mathf.Tau / 2`.
	**/
	@:native("Pi")
	public static var PI(default, never):Single;

	/**		
		The circle constant, the circumference of the unit circle in radians.
	**/
	@:native("Tau")
	public static var TAU(default, never):Single;

	/**		
		Returns the absolute value of `s` (i.e. positive value).
		
		@param s The input number.
		@returns The absolute value of `s`.
	**/
	@:native("Abs")
	public static overload function abs(s:Int):Int;

	/**		
		Returns the absolute value of `s` (i.e. positive value).
		
		@param s The input number.
		@returns The absolute value of `s`.
	**/
	@:native("Abs")
	public static overload function abs(s:Single):Single;

	/**		
		Returns the arc cosine of `s` in radians.
		Use to get the angle of cosine `s`.
		
		@param s The input cosine value. Must be on the range of -1.0 to 1.0.
		@returns
		An angle that would result in the given cosine value. On the range `0` to `Tau/2`.
	**/
	@:native("Acos")
	public static function acos(s:Single):Single;

	/**		
		Returns the arc sine of `s` in radians.
		Use to get the angle of sine `s`.
		
		@param s The input sine value. Must be on the range of -1.0 to 1.0.
		@returns
		An angle that would result in the given sine value. On the range `-Tau/4` to `Tau/4`.
	**/
	@:native("Asin")
	public static function asin(s:Single):Single;

	/**		
		Returns the arc tangent of `s` in radians.
		Use to get the angle of tangent `s`.
		
		The method cannot know in which quadrant the angle should fall.
		See `godot.Mathf.atan2` if you have both `y` and `x`.
		
		@param s The input tangent value.
		@returns
		An angle that would result in the given tangent value. On the range `-Tau/4` to `Tau/4`.
	**/
	@:native("Atan")
	public static function atan(s:Single):Single;

	/**		
		Returns the arc tangent of `y` and `x` in radians.
		Use to get the angle of the tangent of `y/x`. To compute the value, the method takes into
		account the sign of both arguments in order to determine the quadrant.
		
		Important note: The Y coordinate comes first, by convention.
		
		@param y The Y coordinate of the point to find the angle to.
		@param x The X coordinate of the point to find the angle to.
		@returns
		An angle that would result in the given tangent value. On the range `-Tau/2` to `Tau/2`.
	**/
	@:native("Atan2")
	public static function atan2(y:Single, x:Single):Single;

	/**		
		Converts a 2D point expressed in the cartesian coordinate
		system (X and Y axis) to the polar coordinate system
		(a distance from the origin and an angle).
		
		@param x The input X coordinate.
		@param y The input Y coordinate.
		@returns A `godot.Vector2` with X representing the distance and Y representing the angle.
	**/
	@:native("Cartesian2Polar")
	public static function cartesian2Polar(x:Single, y:Single):godot.Vector2;

	/**		
		Rounds `s` upward (towards positive infinity).
		
		@param s The number to ceil.
		@returns The smallest whole number that is not less than `s`.
	**/
	@:native("Ceil")
	public static function ceil(s:Single):Single;

	/**		
		Clamps a `value` so that it is not less than `min`
		and not more than `max`.
		
		@param value The value to clamp.
		@param min The minimum allowed value.
		@param max The maximum allowed value.
		@returns The clamped value.
	**/
	@:native("Clamp")
	public static overload function clamp(value:Int, min:Int, max:Int):Int;

	/**		
		Clamps a `value` so that it is not less than `min`
		and not more than `max`.
		
		@param value The value to clamp.
		@param min The minimum allowed value.
		@param max The maximum allowed value.
		@returns The clamped value.
	**/
	@:native("Clamp")
	public static overload function clamp(value:Single, min:Single, max:Single):Single;

	/**		
		Returns the cosine of angle `s` in radians.
		
		@param s The angle in radians.
		@returns The cosine of that angle.
	**/
	@:native("Cos")
	public static function cos(s:Single):Single;

	/**		
		Returns the hyperbolic cosine of angle `s` in radians.
		
		@param s The angle in radians.
		@returns The hyperbolic cosine of that angle.
	**/
	@:native("Cosh")
	public static function cosh(s:Single):Single;

	/**		
		Converts an angle expressed in degrees to radians.
		
		@param deg An angle expressed in degrees.
		@returns The same angle expressed in radians.
	**/
	@:native("Deg2Rad")
	public static function deg2Rad(deg:Single):Single;

	/**		
		Easing function, based on exponent. The `curve` values are:
		`0` is constant, `1` is linear, `0` to `1` is ease-in, `1` or more is ease-out.
		Negative values are in-out/out-in.
		
		@param s The value to ease.
		@param curve
		`0` is constant, `1` is linear, `0` to `1` is ease-in, `1` or more is ease-out.
		
		@returns The eased value.
	**/
	@:native("Ease")
	public static function ease(s:Single, curve:Single):Single;

	/**		
		The natural exponential function. It raises the mathematical
		constant `e` to the power of `s` and returns it.
		
		@param s The exponent to raise `e` to.
		@returns `e` raised to the power of `s`.
	**/
	@:native("Exp")
	public static function exp(s:Single):Single;

	/**		
		Rounds `s` downward (towards negative infinity).
		
		@param s The number to floor.
		@returns The largest whole number that is not more than `s`.
	**/
	@:native("Floor")
	public static function floor(s:Single):Single;

	/**		
		Returns a normalized value considering the given range.
		This is the opposite of `godot.Mathf.lerp`.
		
		@param from The interpolated value.
		@param to The destination value for interpolation.
		@param weight A value on the range of 0.0 to 1.0, representing the amount of interpolation.
		@returns The resulting value of the inverse interpolation.
	**/
	@:native("InverseLerp")
	public static function inverseLerp(from:Single, to:Single, weight:Single):Single;

	/**		
		Returns `true` if `a` and `b` are approximately equal
		to each other.
		The comparison is done using a tolerance calculation with `godot.Mathf.EPSILON`.
		
		@param a One of the values.
		@param b The other value.
		@returns A `bool` for whether or not the two values are approximately equal.
	**/
	@:native("IsEqualApprox")
	public static overload function isEqualApprox(a:Single, b:Single):Bool;

	/**		
		Returns whether `s` is an infinity value (either positive infinity or negative infinity).
		
		@param s The value to check.
		@returns A `bool` for whether or not the value is an infinity value.
	**/
	@:native("IsInf")
	public static function isInf(s:Single):Bool;

	/**		
		Returns whether `s` is a `NaN` ("Not a Number" or invalid) value.
		
		@param s The value to check.
		@returns A `bool` for whether or not the value is a `NaN` value.
	**/
	@:native("IsNaN")
	public static function isNaN(s:Single):Bool;

	/**		
		Returns `true` if `s` is approximately zero.
		The comparison is done using a tolerance calculation with `godot.Mathf.EPSILON`.
		
		This method is faster than using `godot.Mathf.isEqualApprox` with one value as zero.
		
		@param s The value to check.
		@returns A `bool` for whether or not the value is nearly zero.
	**/
	@:native("IsZeroApprox")
	public static function isZeroApprox(s:Single):Bool;

	/**		
		Linearly interpolates between two values by a normalized value.
		This is the opposite `godot.Mathf.inverseLerp`.
		
		@param from The start value for interpolation.
		@param to The destination value for interpolation.
		@param weight A value on the range of 0.0 to 1.0, representing the amount of interpolation.
		@returns The resulting value of the interpolation.
	**/
	@:native("Lerp")
	public static function lerp(from:Single, to:Single, weight:Single):Single;

	/**		
		Linearly interpolates between two angles (in radians) by a normalized value.
		
		Similar to `godot.Mathf.lerp`,
		but interpolates correctly when the angles wrap around `godot.Mathf.TAU`.
		
		@param from The start angle for interpolation.
		@param to The destination angle for interpolation.
		@param weight A value on the range of 0.0 to 1.0, representing the amount of interpolation.
		@returns The resulting angle of the interpolation.
	**/
	@:native("LerpAngle")
	public static function lerpAngle(from:Single, to:Single, weight:Single):Single;

	/**		
		Natural logarithm. The amount of time needed to reach a certain level of continuous growth.
		
		Note: This is not the same as the "log" function on most calculators, which uses a base 10 logarithm.
		
		@param s The input value.
		@returns The natural log of `s`.
	**/
	@:native("Log")
	public static function log(s:Single):Single;

	/**		
		Returns the maximum of two values.
		
		@param a One of the values.
		@param b The other value.
		@returns Whichever of the two values is higher.
	**/
	@:native("Max")
	public static overload function max(a:Int, b:Int):Int;

	/**		
		Returns the maximum of two values.
		
		@param a One of the values.
		@param b The other value.
		@returns Whichever of the two values is higher.
	**/
	@:native("Max")
	public static overload function max(a:Single, b:Single):Single;

	/**		
		Returns the minimum of two values.
		
		@param a One of the values.
		@param b The other value.
		@returns Whichever of the two values is lower.
	**/
	@:native("Min")
	public static overload function min(a:Int, b:Int):Int;

	/**		
		Returns the minimum of two values.
		
		@param a One of the values.
		@param b The other value.
		@returns Whichever of the two values is lower.
	**/
	@:native("Min")
	public static overload function min(a:Single, b:Single):Single;

	/**		
		Moves `from` toward `to` by the `delta` value.
		
		Use a negative `delta` value to move away.
		
		@param from The start value.
		@param to The value to move towards.
		@param delta The amount to move by.
		@returns The value after moving.
	**/
	@:native("MoveToward")
	public static function moveToward(from:Single, to:Single, delta:Single):Single;

	/**		
		Returns the nearest larger power of 2 for the integer `value`.
		
		@param value The input value.
		@returns The nearest larger power of 2.
	**/
	@:native("NearestPo2")
	public static function nearestPo2(value:Int):Int;

	/**		
		Converts a 2D point expressed in the polar coordinate
		system (a distance from the origin `r`
		and an angle `th`) to the cartesian
		coordinate system (X and Y axis).
		
		@param r The distance from the origin.
		@param th The angle of the point.
		@returns A `godot.Vector2` representing the cartesian coordinate.
	**/
	@:native("Polar2Cartesian")
	public static function polar2Cartesian(r:Single, th:Single):godot.Vector2;

	/**		
		Performs a canonical Modulus operation, where the output is on the range [0, `b`).
		
		@param a The dividend, the primary input.
		@param b The divisor. The output is on the range [0, `b`).
		@returns The resulting output.
	**/
	@:native("PosMod")
	public static overload function posMod(a:Int, b:Int):Int;

	/**		
		Performs a canonical Modulus operation, where the output is on the range [0, `b`).
		
		@param a The dividend, the primary input.
		@param b The divisor. The output is on the range [0, `b`).
		@returns The resulting output.
	**/
	@:native("PosMod")
	public static overload function posMod(a:Single, b:Single):Single;

	/**		
		Returns the result of `x` raised to the power of `y`.
		
		@param x The base.
		@param y The exponent.
		@returns `x` raised to the power of `y`.
	**/
	@:native("Pow")
	public static function pow(x:Single, y:Single):Single;

	/**		
		Converts an angle expressed in radians to degrees.
		
		@param rad An angle expressed in radians.
		@returns The same angle expressed in degrees.
	**/
	@:native("Rad2Deg")
	public static function rad2Deg(rad:Single):Single;

	/**		
		Rounds `s` to the nearest whole number,
		with halfway cases rounded towards the nearest multiple of two.
		
		@param s The number to round.
		@returns The rounded number.
	**/
	@:native("Round")
	public static function round(s:Single):Single;

	/**		
		Returns the sign of `s`: `-1` or `1`.
		Returns `0` if `s` is `0`.
		
		@param s The input number.
		@returns One of three possible values: `1`, `-1`, or `0`.
	**/
	@:native("Sign")
	public static overload function sign(s:Int):Int;

	/**		
		Returns the sign of `s`: `-1` or `1`.
		Returns `0` if `s` is `0`.
		
		@param s The input number.
		@returns One of three possible values: `1`, `-1`, or `0`.
	**/
	@:native("Sign")
	public static overload function sign(s:Single):Int;

	/**		
		Returns the sine of angle `s` in radians.
		
		@param s The angle in radians.
		@returns The sine of that angle.
	**/
	@:native("Sin")
	public static function sin(s:Single):Single;

	/**		
		Returns the hyperbolic sine of angle `s` in radians.
		
		@param s The angle in radians.
		@returns The hyperbolic sine of that angle.
	**/
	@:native("Sinh")
	public static function sinh(s:Single):Single;

	/**		
		Returns a number smoothly interpolated between `from` and `to`,
		based on the `weight`. Similar to `godot.Mathf.lerp`,
		but interpolates faster at the beginning and slower at the end.
		
		@param from The start value for interpolation.
		@param to The destination value for interpolation.
		@param weight A value representing the amount of interpolation.
		@returns The resulting value of the interpolation.
	**/
	@:native("SmoothStep")
	public static function smoothStep(from:Single, to:Single, weight:Single):Single;

	/**		
		Returns the square root of `s`, where `s` is a non-negative number.
		
		If you need negative inputs, use `cs.system.numerics.Complex`.
		
		@param s The input number. Must not be negative.
		@returns The square root of `s`.
	**/
	@:native("Sqrt")
	public static function sqrt(s:Single):Single;

	/**		
		Returns the position of the first non-zero digit, after the
		decimal point. Note that the maximum return value is 10,
		which is a design decision in the implementation.
		
		@param step The input value.
		@returns The position of the first non-zero digit.
	**/
	@:native("StepDecimals")
	public static function stepDecimals(step:Single):Int;

	/**		
		Snaps float value `s` to a given `step`.
		This can also be used to round a floating point number to an arbitrary number of decimals.
		
		@param s The value to stepify.
		@param step The step size to snap to.
		@returns
	**/
	@:native("Stepify")
	public static function stepify(s:Single, step:Single):Single;

	/**		
		Returns the tangent of angle `s` in radians.
		
		@param s The angle in radians.
		@returns The tangent of that angle.
	**/
	@:native("Tan")
	public static function tan(s:Single):Single;

	/**		
		Returns the hyperbolic tangent of angle `s` in radians.
		
		@param s The angle in radians.
		@returns The hyperbolic tangent of that angle.
	**/
	@:native("Tanh")
	public static function tanh(s:Single):Single;

	/**		
		Wraps `value` between `min` and `max`.
		Usable for creating loop-alike behavior or infinite surfaces.
		If `min` is `0`, this is equivalent
		to `godot.Mathf.posMod`, so prefer using that instead.
		
		@param value The value to wrap.
		@param min The minimum allowed value and lower bound of the range.
		@param max The maximum allowed value and upper bound of the range.
		@returns The wrapped value.
	**/
	@:native("Wrap")
	public static overload function wrap(value:Int, min:Int, max:Int):Int;

	/**		
		Wraps `value` between `min` and `max`.
		Usable for creating loop-alike behavior or infinite surfaces.
		If `min` is `0`, this is equivalent
		to `godot.Mathf.posMod`, so prefer using that instead.
		
		@param value The value to wrap.
		@param min The minimum allowed value and lower bound of the range.
		@param max The maximum allowed value and upper bound of the range.
		@returns The wrapped value.
	**/
	@:native("Wrap")
	public static overload function wrap(value:Single, min:Single, max:Single):Single;

	/**		
		Returns the amount of digits after the decimal place.
		
		@param s The input value.
		@returns The amount of digits.
	**/
	@:native("DecimalCount")
	public static overload function decimalCount(s:Single):Int;

	/**		
		Returns the amount of digits after the decimal place.
		
		@param s The input `cs.system.Decimal` value.
		@returns The amount of digits.
	**/
	@:native("DecimalCount")
	public static overload function decimalCount(s:cs.system.Decimal):Int;

	/**		
		Rounds `s` upward (towards positive infinity).
		
		This is the same as `godot.Mathf.ceil`, but returns an `int`.
		
		@param s The number to ceil.
		@returns The smallest whole number that is not less than `s`.
	**/
	@:native("CeilToInt")
	public static function ceilToInt(s:Single):Int;

	/**		
		Rounds `s` downward (towards negative infinity).
		
		This is the same as `godot.Mathf.floor`, but returns an `int`.
		
		@param s The number to floor.
		@returns The largest whole number that is not more than `s`.
	**/
	@:native("FloorToInt")
	public static function floorToInt(s:Single):Int;

	/**		
		Rounds `s` to the nearest whole number.
		
		This is the same as `godot.Mathf.round`, but returns an `int`.
		
		@param s The number to round.
		@returns The rounded number.
	**/
	@:native("RoundToInt")
	public static function roundToInt(s:Single):Int;

	/**		
		Returns `true` if `a` and `b` are approximately
		equal to each other.
		The comparison is done using the provided tolerance value.
		If you want the tolerance to be calculated for you, use `godot.Mathf.isEqualApprox`.
		
		@param a One of the values.
		@param b The other value.
		@param tolerance The pre-calculated tolerance value.
		@returns A `bool` for whether or not the two values are equal.
	**/
	@:native("IsEqualApprox")
	public static overload function isEqualApprox(a:Single, b:Single, tolerance:Single):Bool;
}
