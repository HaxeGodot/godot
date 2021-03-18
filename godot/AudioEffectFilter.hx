// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Allows frequencies other than the `godot.AudioEffectFilter.cutoffHz` to pass.
**/
@:libType
@:csNative
@:native("Godot.AudioEffectFilter")
@:autoBuild(godot.Godot.buildUserClass())
extern class AudioEffectFilter extends godot.AudioEffect {
	@:native("Db")
	public var db:godot.AudioEffectFilter_FilterDB;

	/**		
		Gain amount of the frequencies after the filter.
	**/
	@:native("Gain")
	public var gain:Single;

	/**		
		Amount of boost in the frequency range near the cutoff frequency.
	**/
	@:native("Resonance")
	public var resonance:Single;

	/**		
		Threshold frequency for the filter, in Hz.
	**/
	@:native("CutoffHz")
	public var cutoffHz:Single;

	@:native("new")
	public function new():Void;

	@:native("SetCutoff")
	public function setCutoff(freq:Single):Void;

	@:native("GetCutoff")
	public function getCutoff():Single;

	@:native("SetResonance")
	public function setResonance(amount:Single):Void;

	@:native("GetResonance")
	public function getResonance():Single;

	@:native("SetGain")
	public function setGain(amount:Single):Void;

	@:native("GetGain")
	public function getGain():Single;

	@:native("SetDb")
	public function setDb(amount:godot.AudioEffectFilter_FilterDB):Void;

	@:native("GetDb")
	public function getDb():godot.AudioEffectFilter_FilterDB;
}
