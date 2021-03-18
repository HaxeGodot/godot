// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Combines phase-shifted signals with the original signal. The movement of the phase-shifted signals is controlled using a low-frequency oscillator.
**/
@:libType
@:csNative
@:native("Godot.AudioEffectPhaser")
@:autoBuild(godot.Godot.buildUserClass())
extern class AudioEffectPhaser extends godot.AudioEffect {
	/**		
		Governs how high the filter frequencies sweep. Low value will primarily affect bass frequencies. High value can sweep high into the treble. Value can range from 0.1 to 4.
	**/
	@:native("Depth")
	public var depth:Single;

	/**		
		Output percent of modified sound. Value can range from 0.1 to 0.9.
	**/
	@:native("Feedback")
	public var feedback:Single;

	/**		
		Adjusts the rate in Hz at which the effect sweeps up and down across the frequency range.
	**/
	@:native("RateHz")
	public var rateHz:Single;

	/**		
		Determines the maximum frequency affected by the LFO modulations, in Hz. Value can range from 10 to 10000.
	**/
	@:native("RangeMaxHz")
	public var rangeMaxHz:Single;

	/**		
		Determines the minimum frequency affected by the LFO modulations, in Hz. Value can range from 10 to 10000.
	**/
	@:native("RangeMinHz")
	public var rangeMinHz:Single;

	@:native("new")
	public function new():Void;

	@:native("SetRangeMinHz")
	public function setRangeMinHz(hz:Single):Void;

	@:native("GetRangeMinHz")
	public function getRangeMinHz():Single;

	@:native("SetRangeMaxHz")
	public function setRangeMaxHz(hz:Single):Void;

	@:native("GetRangeMaxHz")
	public function getRangeMaxHz():Single;

	@:native("SetRateHz")
	public function setRateHz(hz:Single):Void;

	@:native("GetRateHz")
	public function getRateHz():Single;

	@:native("SetFeedback")
	public function setFeedback(fbk:Single):Void;

	@:native("GetFeedback")
	public function getFeedback():Single;

	@:native("SetDepth")
	public function setDepth(depth:Single):Void;

	@:native("GetDepth")
	public function getDepth():Single;
}
