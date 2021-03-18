// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Increases or decreases the volume being routed through the audio bus.
**/
@:libType
@:csNative
@:native("Godot.AudioEffectAmplify")
@:autoBuild(godot.Godot.buildUserClass())
extern class AudioEffectAmplify extends godot.AudioEffect {
	/**		
		Amount of amplification in decibels. Positive values make the sound louder, negative values make it quieter. Value can range from -80 to 24.
	**/
	@:native("VolumeDb")
	public var volumeDb:Single;

	@:native("new")
	public function new():Void;

	@:native("SetVolumeDb")
	public function setVolumeDb(volume:Single):Void;

	@:native("GetVolumeDb")
	public function getVolumeDb():Single;
}
