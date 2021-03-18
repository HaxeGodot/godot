// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.Curve.TangentMode")
@:csNative
extern enum Curve_TangentMode {
	/**		
		The tangent on this side of the point is user-defined.
	**/
	Free;

	/**		
		The curve calculates the tangent on this side of the point as the slope halfway towards the adjacent point.
	**/
	Linear;

	/**		
		The total number of available tangent modes.
	**/
	ModeCount;
}
