// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Different types are available: clip, tan, lo-fi (bit crushing), overdrive, or waveshape.

By distorting the waveform the frequency content change, which will often make the sound "crunchy" or "abrasive". For games, it can simulate sound coming from some saturated device or speaker very efficiently.
**/
@:libType
@:csNative
@:native("Godot.AudioEffectDistortion")
@:autoBuild(godot.Godot.buildUserClass())
extern class AudioEffectDistortion extends godot.AudioEffect {
	/**		
		Increases or decreases the volume after the effect. Value can range from -80 to 24.
	**/
	@:native("PostGain")
	public var postGain:Single;

	/**		
		Distortion power. Value can range from 0 to 1.
	**/
	@:native("Drive")
	public var drive:Single;

	/**		
		High-pass filter, in Hz. Frequencies higher than this value will not be affected by the distortion. Value can range from 1 to 20000.
	**/
	@:native("KeepHfHz")
	public var keepHfHz:Single;

	/**		
		Increases or decreases the volume before the effect. Value can range from -60 to 60.
	**/
	@:native("PreGain")
	public var preGain:Single;

	/**		
		Distortion type.
	**/
	@:native("Mode")
	public var mode:godot.AudioEffectDistortion_ModeEnum;

	@:native("new")
	public function new():Void;

	@:native("SetMode")
	public function setMode(mode:godot.AudioEffectDistortion_ModeEnum):Void;

	@:native("GetMode")
	public function getMode():godot.AudioEffectDistortion_ModeEnum;

	@:native("SetPreGain")
	public function setPreGain(preGain:Single):Void;

	@:native("GetPreGain")
	public function getPreGain():Single;

	@:native("SetKeepHfHz")
	public function setKeepHfHz(keepHfHz:Single):Void;

	@:native("GetKeepHfHz")
	public function getKeepHfHz():Single;

	@:native("SetDrive")
	public function setDrive(drive:Single):Void;

	@:native("GetDrive")
	public function getDrive():Single;

	@:native("SetPostGain")
	public function setPostGain(postGain:Single):Void;

	@:native("GetPostGain")
	public function getPostGain():Single;
}
