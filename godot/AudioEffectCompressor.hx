// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Dynamic range compressor reduces the level of the sound when the amplitude goes over a certain threshold in Decibels. One of the main uses of a compressor is to increase the dynamic range by clipping as little as possible (when sound goes over 0dB).

Compressor has many uses in the mix:

- In the Master bus to compress the whole output (although an `godot.AudioEffectLimiter` is probably better).

- In voice channels to ensure they sound as balanced as possible.

- Sidechained. This can reduce the sound level sidechained with another audio bus for threshold detection. This technique is common in video game mixing to the level of music and SFX while voices are being heard.

- Accentuates transients by using a wider attack, making effects sound more punchy.
**/
@:libType
@:csNative
@:native("Godot.AudioEffectCompressor")
@:autoBuild(godot.Godot.buildUserClass())
extern class AudioEffectCompressor extends godot.AudioEffect {
	/**		
		Reduce the sound level using another audio bus for threshold detection.
	**/
	@:native("Sidechain")
	public var sidechain:std.String;

	/**		
		Balance between original signal and effect signal. Value can range from 0 (totally dry) to 1 (totally wet).
	**/
	@:native("Mix")
	public var mix:Single;

	/**		
		Compressor's delay time to stop reducing the signal after the signal level falls below the threshold, in milliseconds. Value can range from 20 to 2000.
	**/
	@:native("ReleaseMs")
	public var releaseMs:Single;

	/**		
		Compressor's reaction time when the signal exceeds the threshold, in microseconds. Value can range from 20 to 2000.
	**/
	@:native("AttackUs")
	public var attackUs:Single;

	/**		
		Gain applied to the output signal.
	**/
	@:native("Gain")
	public var gain:Single;

	/**		
		Amount of compression applied to the audio once it passes the threshold level. The higher the ratio, the more the loud parts of the audio will be compressed. Value can range from 1 to 48.
	**/
	@:native("Ratio")
	public var ratio:Single;

	/**		
		The level above which compression is applied to the audio. Value can range from -60 to 0.
	**/
	@:native("Threshold")
	public var threshold:Single;

	@:native("new")
	public function new():Void;

	@:native("SetThreshold")
	public function setThreshold(threshold:Single):Void;

	@:native("GetThreshold")
	public function getThreshold():Single;

	@:native("SetRatio")
	public function setRatio(ratio:Single):Void;

	@:native("GetRatio")
	public function getRatio():Single;

	@:native("SetGain")
	public function setGain(gain:Single):Void;

	@:native("GetGain")
	public function getGain():Single;

	@:native("SetAttackUs")
	public function setAttackUs(attackUs:Single):Void;

	@:native("GetAttackUs")
	public function getAttackUs():Single;

	@:native("SetReleaseMs")
	public function setReleaseMs(releaseMs:Single):Void;

	@:native("GetReleaseMs")
	public function getReleaseMs():Single;

	@:native("SetMix")
	public function setMix(mix:Single):Void;

	@:native("GetMix")
	public function getMix():Single;

	@:native("SetSidechain")
	public function setSidechain(sidechain:std.String):Void;

	@:native("GetSidechain")
	public function getSidechain():std.String;
}
