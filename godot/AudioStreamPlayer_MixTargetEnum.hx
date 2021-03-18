// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.AudioStreamPlayer.MixTargetEnum")
@:csNative
extern enum AudioStreamPlayer_MixTargetEnum {
	/**		
		The audio will be played only on the first channel.
	**/
	Stereo;

	/**		
		The audio will be played on all surround channels.
	**/
	Surround;

	/**		
		The audio will be played on the second channel, which is usually the center.
	**/
	Center;
}
