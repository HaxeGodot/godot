// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.AudioStreamPlayer3D.AttenuationModelEnum")
@:csNative
extern enum AudioStreamPlayer3D_AttenuationModelEnum {
	/**		
		Linear dampening of loudness according to distance.
	**/
	InverseDistance;

	/**		
		Squared dampening of loudness according to distance.
	**/
	InverseSquareDistance;

	/**		
		Logarithmic dampening of loudness according to distance.
	**/
	Logarithmic;

	/**		
		No dampening of loudness according to distance.
	**/
	Disabled;
}
