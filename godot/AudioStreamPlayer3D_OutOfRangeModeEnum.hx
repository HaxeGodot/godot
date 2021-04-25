// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.AudioStreamPlayer3D.OutOfRangeModeEnum")
@:csNative
extern enum AudioStreamPlayer3D_OutOfRangeModeEnum {
	/**		
		Mix this audio in, even when it's out of range. This increases CPU usage, but keeps the sound playing at the correct position if the camera leaves and enters the `godot.AudioStreamPlayer3D`'s `godot.AudioStreamPlayer3D.maxDistance` radius.
	**/
	Mix;

	/**		
		Pause this audio when it gets out of range. This decreases CPU usage, but will cause the sound to restart if the camera leaves and enters the `godot.AudioStreamPlayer3D`'s `godot.AudioStreamPlayer3D.maxDistance` radius.
	**/
	Pause;
}
