// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.Animation.TrackType")
@:csNative
extern enum Animation_TrackType {
	/**		
		Value tracks set values in node properties, but only those which can be Interpolated.
	**/
	Value;

	/**		
		Transform tracks are used to change node local transforms or skeleton pose bones. Transitions are interpolated.
	**/
	Transform;

	/**		
		Method tracks call functions with given arguments per key.
	**/
	Method;

	/**		
		Bezier tracks are used to interpolate a value using custom curves. They can also be used to animate sub-properties of vectors and colors (e.g. alpha value of a `godot.Color`).
	**/
	Bezier;

	/**		
		Audio tracks are used to play an audio stream with either type of `godot.AudioStreamPlayer`. The stream can be trimmed and previewed in the animation.
	**/
	Audio;

	/**		
		Animation tracks play animations in other `godot.AnimationPlayer` nodes.
	**/
	Animation;
}
