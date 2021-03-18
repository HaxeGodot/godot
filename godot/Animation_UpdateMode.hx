// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.Animation.UpdateMode")
@:csNative
extern enum Animation_UpdateMode {
	/**		
		Update between keyframes.
	**/
	Continuous;

	/**		
		Update at the keyframes and hold the value.
	**/
	Discrete;

	/**		
		Update at the keyframes.
	**/
	Trigger;

	/**		
		Same as linear interpolation, but also interpolates from the current value (i.e. dynamically at runtime) if the first key isn't at 0 seconds.
	**/
	Capture;
}
