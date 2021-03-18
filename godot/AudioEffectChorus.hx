// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Adds a chorus audio effect. The effect applies a filter with voices to duplicate the audio source and manipulate it through the filter.
**/
@:libType
@:csNative
@:native("Godot.AudioEffectChorus")
@:autoBuild(godot.Godot.buildUserClass())
extern class AudioEffectChorus extends godot.AudioEffect {
	/**		
		The voice's pan level.
	**/
	@:native("Voice__4__pan")
	public var voice__4__pan:Single;

	/**		
		The voice's cutoff frequency.
	**/
	@:native("Voice__4__cutoffHz")
	public var voice__4__cutoffHz:Single;

	/**		
		The voice's volume.
	**/
	@:native("Voice__4__levelDb")
	public var voice__4__levelDb:Single;

	/**		
		The voice filter's depth.
	**/
	@:native("Voice__4__depthMs")
	public var voice__4__depthMs:Single;

	/**		
		The voice's filter rate.
	**/
	@:native("Voice__4__rateHz")
	public var voice__4__rateHz:Single;

	/**		
		The voice's signal delay.
	**/
	@:native("Voice__4__delayMs")
	public var voice__4__delayMs:Single;

	/**		
		The voice's pan level.
	**/
	@:native("Voice__3__pan")
	public var voice__3__pan:Single;

	/**		
		The voice's cutoff frequency.
	**/
	@:native("Voice__3__cutoffHz")
	public var voice__3__cutoffHz:Single;

	/**		
		The voice's volume.
	**/
	@:native("Voice__3__levelDb")
	public var voice__3__levelDb:Single;

	/**		
		The voice filter's depth.
	**/
	@:native("Voice__3__depthMs")
	public var voice__3__depthMs:Single;

	/**		
		The voice's filter rate.
	**/
	@:native("Voice__3__rateHz")
	public var voice__3__rateHz:Single;

	/**		
		The voice's signal delay.
	**/
	@:native("Voice__3__delayMs")
	public var voice__3__delayMs:Single;

	/**		
		The voice's pan level.
	**/
	@:native("Voice__2__pan")
	public var voice__2__pan:Single;

	/**		
		The voice's cutoff frequency.
	**/
	@:native("Voice__2__cutoffHz")
	public var voice__2__cutoffHz:Single;

	/**		
		The voice's volume.
	**/
	@:native("Voice__2__levelDb")
	public var voice__2__levelDb:Single;

	/**		
		The voice filter's depth.
	**/
	@:native("Voice__2__depthMs")
	public var voice__2__depthMs:Single;

	/**		
		The voice's filter rate.
	**/
	@:native("Voice__2__rateHz")
	public var voice__2__rateHz:Single;

	/**		
		The voice's signal delay.
	**/
	@:native("Voice__2__delayMs")
	public var voice__2__delayMs:Single;

	/**		
		The voice's pan level.
	**/
	@:native("Voice__1__pan")
	public var voice__1__pan:Single;

	/**		
		The voice's cutoff frequency.
	**/
	@:native("Voice__1__cutoffHz")
	public var voice__1__cutoffHz:Single;

	/**		
		The voice's volume.
	**/
	@:native("Voice__1__levelDb")
	public var voice__1__levelDb:Single;

	/**		
		The voice filter's depth.
	**/
	@:native("Voice__1__depthMs")
	public var voice__1__depthMs:Single;

	/**		
		The voice's filter rate.
	**/
	@:native("Voice__1__rateHz")
	public var voice__1__rateHz:Single;

	/**		
		The voice's signal delay.
	**/
	@:native("Voice__1__delayMs")
	public var voice__1__delayMs:Single;

	/**		
		The effect's processed signal.
	**/
	@:native("Wet")
	public var wet:Single;

	/**		
		The effect's raw signal.
	**/
	@:native("Dry")
	public var dry:Single;

	/**		
		The amount of voices in the effect.
	**/
	@:native("VoiceCount")
	public var voiceCount:Int;

	@:native("new")
	public function new():Void;

	@:native("SetVoiceCount")
	public function setVoiceCount(voices:Int):Void;

	@:native("GetVoiceCount")
	public function getVoiceCount():Int;

	@:native("SetVoiceDelayMs")
	public function setVoiceDelayMs(voiceIdx:Int, delayMs:Single):Void;

	@:native("GetVoiceDelayMs")
	public function getVoiceDelayMs(voiceIdx:Int):Single;

	@:native("SetVoiceRateHz")
	public function setVoiceRateHz(voiceIdx:Int, rateHz:Single):Void;

	@:native("GetVoiceRateHz")
	public function getVoiceRateHz(voiceIdx:Int):Single;

	@:native("SetVoiceDepthMs")
	public function setVoiceDepthMs(voiceIdx:Int, depthMs:Single):Void;

	@:native("GetVoiceDepthMs")
	public function getVoiceDepthMs(voiceIdx:Int):Single;

	@:native("SetVoiceLevelDb")
	public function setVoiceLevelDb(voiceIdx:Int, levelDb:Single):Void;

	@:native("GetVoiceLevelDb")
	public function getVoiceLevelDb(voiceIdx:Int):Single;

	@:native("SetVoiceCutoffHz")
	public function setVoiceCutoffHz(voiceIdx:Int, cutoffHz:Single):Void;

	@:native("GetVoiceCutoffHz")
	public function getVoiceCutoffHz(voiceIdx:Int):Single;

	@:native("SetVoicePan")
	public function setVoicePan(voiceIdx:Int, pan:Single):Void;

	@:native("GetVoicePan")
	public function getVoicePan(voiceIdx:Int):Single;

	@:native("SetWet")
	public function setWet(amount:Single):Void;

	@:native("GetWet")
	public function getWet():Single;

	@:native("SetDry")
	public function setDry(amount:Single):Void;

	@:native("GetDry")
	public function getDry():Single;
}
