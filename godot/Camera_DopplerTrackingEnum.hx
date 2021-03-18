// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.Camera.DopplerTrackingEnum")
@:csNative
extern enum Camera_DopplerTrackingEnum {
	/**		
		Disables [https://en.wikipedia.org/wiki/Doppler_effect](Doppler effect) simulation (default).
	**/
	Disabled;

	/**		
		Simulate [https://en.wikipedia.org/wiki/Doppler_effect](Doppler effect) by tracking positions of objects that are changed in `_process`. Changes in the relative velocity of this camera compared to those objects affect how Audio is perceived (changing the Audio's `pitch shift`).
	**/
	IdleStep;

	/**		
		Simulate [https://en.wikipedia.org/wiki/Doppler_effect](Doppler effect) by tracking positions of objects that are changed in `_physics_process`. Changes in the relative velocity of this camera compared to those objects affect how Audio is perceived (changing the Audio's `pitch shift`).
	**/
	PhysicsStep;
}
