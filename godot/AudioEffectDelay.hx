// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Plays input signal back after a period of time. The delayed signal may be played back multiple times to create the sound of a repeating, decaying echo. Delay effects range from a subtle echo effect to a pronounced blending of previous sounds with new sounds.
**/
@:libType
@:csNative
@:native("Godot.AudioEffectDelay")
@:autoBuild(godot.Godot.buildUserClass())
extern class AudioEffectDelay extends godot.AudioEffect {
	/**		
		Low-pass filter for feedback, in Hz. Frequencies below this value are filtered out of the source signal.
	**/
	@:native("Feedback__lowpass")
	public var feedback__lowpass:Single;

	/**		
		Sound level for `tap1`.
	**/
	@:native("Feedback__levelDb")
	public var feedback__levelDb:Single;

	/**		
		Feedback delay time in milliseconds.
	**/
	@:native("Feedback__delayMs")
	public var feedback__delayMs:Single;

	/**		
		If `true`, feedback is enabled.
	**/
	@:native("Feedback__active")
	public var feedback__active:Bool;

	/**		
		Pan position for `tap2`. Value can range from -1 (fully left) to 1 (fully right).
	**/
	@:native("Tap2__pan")
	public var tap2__pan:Single;

	/**		
		Sound level for `tap2`.
	**/
	@:native("Tap2__levelDb")
	public var tap2__levelDb:Single;

	/**		
		Tap2 delay time in milliseconds.
	**/
	@:native("Tap2__delayMs")
	public var tap2__delayMs:Single;

	/**		
		If `true`, `tap2` will be enabled.
	**/
	@:native("Tap2__active")
	public var tap2__active:Bool;

	/**		
		Pan position for `tap1`. Value can range from -1 (fully left) to 1 (fully right).
	**/
	@:native("Tap1__pan")
	public var tap1__pan:Single;

	/**		
		Sound level for `tap1`.
	**/
	@:native("Tap1__levelDb")
	public var tap1__levelDb:Single;

	/**		
		`tap1` delay time in milliseconds.
	**/
	@:native("Tap1__delayMs")
	public var tap1__delayMs:Single;

	/**		
		If `true`, `tap1` will be enabled.
	**/
	@:native("Tap1__active")
	public var tap1__active:Bool;

	/**		
		Output percent of original sound. At 0, only delayed sounds are output. Value can range from 0 to 1.
	**/
	@:native("Dry")
	public var dry:Single;

	@:native("new")
	public function new():Void;

	@:native("SetDry")
	public function setDry(amount:Single):Void;

	@:native("GetDry")
	public function getDry():Single;

	@:native("SetTap1Active")
	public function setTap1Active(amount:Bool):Void;

	@:native("IsTap1Active")
	public function isTap1Active():Bool;

	@:native("SetTap1DelayMs")
	public function setTap1DelayMs(amount:Single):Void;

	@:native("GetTap1DelayMs")
	public function getTap1DelayMs():Single;

	@:native("SetTap1LevelDb")
	public function setTap1LevelDb(amount:Single):Void;

	@:native("GetTap1LevelDb")
	public function getTap1LevelDb():Single;

	@:native("SetTap1Pan")
	public function setTap1Pan(amount:Single):Void;

	@:native("GetTap1Pan")
	public function getTap1Pan():Single;

	@:native("SetTap2Active")
	public function setTap2Active(amount:Bool):Void;

	@:native("IsTap2Active")
	public function isTap2Active():Bool;

	@:native("SetTap2DelayMs")
	public function setTap2DelayMs(amount:Single):Void;

	@:native("GetTap2DelayMs")
	public function getTap2DelayMs():Single;

	@:native("SetTap2LevelDb")
	public function setTap2LevelDb(amount:Single):Void;

	@:native("GetTap2LevelDb")
	public function getTap2LevelDb():Single;

	@:native("SetTap2Pan")
	public function setTap2Pan(amount:Single):Void;

	@:native("GetTap2Pan")
	public function getTap2Pan():Single;

	@:native("SetFeedbackActive")
	public function setFeedbackActive(amount:Bool):Void;

	@:native("IsFeedbackActive")
	public function isFeedbackActive():Bool;

	@:native("SetFeedbackDelayMs")
	public function setFeedbackDelayMs(amount:Single):Void;

	@:native("GetFeedbackDelayMs")
	public function getFeedbackDelayMs():Single;

	@:native("SetFeedbackLevelDb")
	public function setFeedbackLevelDb(amount:Single):Void;

	@:native("GetFeedbackLevelDb")
	public function getFeedbackLevelDb():Single;

	@:native("SetFeedbackLowpass")
	public function setFeedbackLowpass(amount:Single):Void;

	@:native("GetFeedbackLowpass")
	public function getFeedbackLowpass():Single;
}
