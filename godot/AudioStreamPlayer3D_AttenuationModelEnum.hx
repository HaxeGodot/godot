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
		No dampening of loudness according to distance. The sound will still be heard positionally, unlike an `godot.AudioStreamPlayer`. `godot.AudioStreamPlayer3D_AttenuationModelEnum.disabled` can be combined with a `godot.AudioStreamPlayer3D.maxDistance` value greater than `0.0` to achieve linear attenuation clamped to a sphere of a defined size.
	**/
	Disabled;
}
