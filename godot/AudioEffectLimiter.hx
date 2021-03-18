// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A limiter is similar to a compressor, but it's less flexible and designed to disallow sound going over a given dB threshold. Adding one in the Master bus is always recommended to reduce the effects of clipping.

Soft clipping starts to reduce the peaks a little below the threshold level and progressively increases its effect as the input level increases such that the threshold is never exceeded.
**/
@:libType
@:csNative
@:native("Godot.AudioEffectLimiter")
@:autoBuild(godot.Godot.buildUserClass())
extern class AudioEffectLimiter extends godot.AudioEffect {
	@:native("SoftClipRatio")
	public var softClipRatio:Single;

	/**		
		Applies a gain to the limited waves, in decibels. Value can range from 0 to 6.
	**/
	@:native("SoftClipDb")
	public var softClipDb:Single;

	/**		
		Threshold from which the limiter begins to be active, in decibels. Value can range from -30 to 0.
	**/
	@:native("ThresholdDb")
	public var thresholdDb:Single;

	/**		
		The waveform's maximum allowed value, in decibels. Value can range from -20 to -0.1.
	**/
	@:native("CeilingDb")
	public var ceilingDb:Single;

	@:native("new")
	public function new():Void;

	@:native("SetCeilingDb")
	public function setCeilingDb(ceiling:Single):Void;

	@:native("GetCeilingDb")
	public function getCeilingDb():Single;

	@:native("SetThresholdDb")
	public function setThresholdDb(threshold:Single):Void;

	@:native("GetThresholdDb")
	public function getThresholdDb():Single;

	@:native("SetSoftClipDb")
	public function setSoftClipDb(softClip:Single):Void;

	@:native("GetSoftClipDb")
	public function getSoftClipDb():Single;

	@:native("SetSoftClipRatio")
	public function setSoftClipRatio(softClip:Single):Void;

	@:native("GetSoftClipRatio")
	public function getSoftClipRatio():Single;
}
