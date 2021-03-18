// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.Tween.TransitionType")
@:csNative
extern enum Tween_TransitionType {
	/**		
		The animation is interpolated linearly.
	**/
	Linear;

	/**		
		The animation is interpolated using a sine function.
	**/
	Sine;

	/**		
		The animation is interpolated with a quintic (to the power of 5) function.
	**/
	Quint;

	/**		
		The animation is interpolated with a quartic (to the power of 4) function.
	**/
	Quart;

	/**		
		The animation is interpolated with a quadratic (to the power of 2) function.
	**/
	Quad;

	/**		
		The animation is interpolated with an exponential (to the power of x) function.
	**/
	Expo;

	/**		
		The animation is interpolated with elasticity, wiggling around the edges.
	**/
	Elastic;

	/**		
		The animation is interpolated with a cubic (to the power of 3) function.
	**/
	Cubic;

	/**		
		The animation is interpolated with a function using square roots.
	**/
	Circ;

	/**		
		The animation is interpolated by bouncing at the end.
	**/
	Bounce;

	/**		
		The animation is interpolated backing out at ends.
	**/
	Back;
}
