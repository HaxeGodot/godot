// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.DirectionalLight.ShadowMode")
@:csNative
extern enum DirectionalLight_ShadowMode {
	/**		
		Renders the entire scene's shadow map from an orthogonal point of view. This is the fastest directional shadow mode. May result in blurrier shadows on close objects.
	**/
	Orthogonal;

	/**		
		Splits the view frustum in 2 areas, each with its own shadow map. This shadow mode is a compromise between `godot.DirectionalLight_ShadowMode.orthogonal` and `godot.DirectionalLight_ShadowMode.parallel4Splits` in terms of performance.
	**/
	Parallel2Splits;

	/**		
		Splits the view frustum in 4 areas, each with its own shadow map. This is the slowest directional shadow mode.
	**/
	Parallel4Splits;
}
