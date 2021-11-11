// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.AudioStreamPlayer3D.DopplerTrackingEnum")
@:csNative
extern enum AudioStreamPlayer3D_DopplerTrackingEnum {
	/**		
		Disables doppler tracking.
	**/
	Disabled;

	/**		
		Executes doppler tracking in idle step (every rendered frame).
	**/
	IdleStep;

	/**		
		Executes doppler tracking in physics step (every simulated physics frame).
	**/
	PhysicsStep;
}
