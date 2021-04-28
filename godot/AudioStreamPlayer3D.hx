// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Plays a sound effect with directed sound effects, dampens with distance if needed, generates effect of hearable position in space. For greater realism, a low-pass filter is automatically applied to distant sounds. This can be disabled by setting `godot.AudioStreamPlayer3D.attenuationFilterCutoffHz` to `20500`.

By default, audio is heard from the camera position. This can be changed by adding a `godot.Listener` node to the scene and enabling it by calling `godot.Listener.makeCurrent` on it.
**/
@:libType
@:csNative
@:native("Godot.AudioStreamPlayer3D")
@:autoBuild(godot.Godot.buildUserClass())
extern class AudioStreamPlayer3D extends godot.Spatial {
	/**
		`finished` signal.
		
		Emitted when the audio stops playing.
	**/
	public var onFinished(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onFinished():Signal<Void->Void> {
		return new Signal(this, "finished", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**		
		Decides in which step the Doppler effect should be calculated.
	**/
	@:native("DopplerTracking")
	public var dopplerTracking:godot.AudioStreamPlayer3D_DopplerTrackingEnum;

	/**		
		Amount how much the filter affects the loudness, in decibels.
	**/
	@:native("AttenuationFilterDb")
	public var attenuationFilterDb:Single;

	/**		
		Dampens audio using a low-pass filter above this frequency, in Hz. To disable the dampening effect entirely, set this to `20500` as this frequency is above the human hearing limit.
	**/
	@:native("AttenuationFilterCutoffHz")
	public var attenuationFilterCutoffHz:Single;

	/**		
		Dampens audio if camera is outside of `godot.AudioStreamPlayer3D.emissionAngleDegrees` and `godot.AudioStreamPlayer3D.emissionAngleEnabled` is set by this factor, in decibels.
	**/
	@:native("EmissionAngleFilterAttenuationDb")
	public var emissionAngleFilterAttenuationDb:Single;

	/**		
		The angle in which the audio reaches cameras undampened.
	**/
	@:native("EmissionAngleDegrees")
	public var emissionAngleDegrees:Single;

	/**		
		If `true`, the audio should be dampened according to the direction of the sound.
	**/
	@:native("EmissionAngleEnabled")
	public var emissionAngleEnabled:Bool;

	/**		
		Areas in which this sound plays.
	**/
	@:native("AreaMask")
	public var areaMask:UInt;

	/**		
		The bus on which this audio is playing.
	**/
	@:native("Bus")
	public var bus:std.String;

	/**		
		Decides if audio should pause when source is outside of `godot.AudioStreamPlayer3D.maxDistance` range.
	**/
	@:native("OutOfRangeMode")
	public var outOfRangeMode:godot.AudioStreamPlayer3D_OutOfRangeModeEnum;

	/**		
		Sets the distance from which the `godot.AudioStreamPlayer3D.outOfRangeMode` takes effect. Has no effect if set to 0.
	**/
	@:native("MaxDistance")
	public var maxDistance:Single;

	/**		
		If `true`, the playback is paused. You can resume it by setting `godot.AudioStreamPlayer3D.streamPaused` to `false`.
	**/
	@:native("StreamPaused")
	public var streamPaused:Bool;

	/**		
		If `true`, audio plays when the AudioStreamPlayer3D node is added to scene tree.
	**/
	@:native("Autoplay")
	public var autoplay:Bool;

	/**		
		If `true`, audio is playing.
	**/
	@:native("Playing")
	public var playing:Bool;

	/**		
		The pitch and the tempo of the audio, as a multiplier of the audio sample's sample rate.
	**/
	@:native("PitchScale")
	public var pitchScale:Single;

	/**		
		Sets the absolute maximum of the soundlevel, in decibels.
	**/
	@:native("MaxDb")
	public var maxDb:Single;

	/**		
		The factor for the attenuation effect. Higher values make the sound audible over a larger distance.
	**/
	@:native("UnitSize")
	public var unitSize:Single;

	/**		
		The base sound level unaffected by dampening, in decibels.
	**/
	@:native("UnitDb")
	public var unitDb:Single;

	/**		
		Decides if audio should get quieter with distance linearly, quadratically, logarithmically, or not be affected by distance, effectively disabling attenuation.
	**/
	@:native("AttenuationModel")
	public var attenuationModel:godot.AudioStreamPlayer3D_AttenuationModelEnum;

	/**		
		The `godot.AudioStream` resource to be played.
	**/
	@:native("Stream")
	public var stream:godot.AudioStream;

	@:native("new")
	public function new():Void;

	@:native("SetStream")
	public function setStream(stream:godot.AudioStream):Void;

	@:native("GetStream")
	public function getStream():godot.AudioStream;

	@:native("SetUnitDb")
	public function setUnitDb(unitDb:Single):Void;

	@:native("GetUnitDb")
	public function getUnitDb():Single;

	@:native("SetUnitSize")
	public function setUnitSize(unitSize:Single):Void;

	@:native("GetUnitSize")
	public function getUnitSize():Single;

	@:native("SetMaxDb")
	public function setMaxDb(maxDb:Single):Void;

	@:native("GetMaxDb")
	public function getMaxDb():Single;

	@:native("SetPitchScale")
	public function setPitchScale(pitchScale:Single):Void;

	@:native("GetPitchScale")
	public function getPitchScale():Single;

	#if doc_gen
	/**		
		Plays the audio from the given position `from_position`, in seconds.
	**/
	@:native("Play")
	public function play(?fromPosition:Single):Void;
	#else
	/**		
		Plays the audio from the given position `from_position`, in seconds.
	**/
	@:native("Play")
	public overload function play():Void;

	/**		
		Plays the audio from the given position `from_position`, in seconds.
	**/
	@:native("Play")
	public overload function play(fromPosition:Single):Void;
	#end

	/**		
		Sets the position from which audio will be played, in seconds.
	**/
	@:native("Seek")
	public function seek(toPosition:Single):Void;

	/**		
		Stops the audio.
	**/
	@:native("Stop")
	public function stop():Void;

	@:native("IsPlaying")
	public function isPlaying():Bool;

	/**		
		Returns the position in the `godot.AudioStream`.
	**/
	@:native("GetPlaybackPosition")
	public function getPlaybackPosition():Single;

	@:native("SetBus")
	public function setBus(bus:std.String):Void;

	@:native("GetBus")
	public function getBus():std.String;

	@:native("SetAutoplay")
	public function setAutoplay(enable:Bool):Void;

	@:native("IsAutoplayEnabled")
	public function isAutoplayEnabled():Bool;

	@:native("SetMaxDistance")
	public function setMaxDistance(metres:Single):Void;

	@:native("GetMaxDistance")
	public function getMaxDistance():Single;

	@:native("SetAreaMask")
	public function setAreaMask(mask:UInt):Void;

	@:native("GetAreaMask")
	public function getAreaMask():UInt;

	@:native("SetEmissionAngle")
	public function setEmissionAngle(degrees:Single):Void;

	@:native("GetEmissionAngle")
	public function getEmissionAngle():Single;

	@:native("SetEmissionAngleEnabled")
	public function setEmissionAngleEnabled(enabled:Bool):Void;

	@:native("IsEmissionAngleEnabled")
	public function isEmissionAngleEnabled():Bool;

	@:native("SetEmissionAngleFilterAttenuationDb")
	public function setEmissionAngleFilterAttenuationDb(db:Single):Void;

	@:native("GetEmissionAngleFilterAttenuationDb")
	public function getEmissionAngleFilterAttenuationDb():Single;

	@:native("SetAttenuationFilterCutoffHz")
	public function setAttenuationFilterCutoffHz(degrees:Single):Void;

	@:native("GetAttenuationFilterCutoffHz")
	public function getAttenuationFilterCutoffHz():Single;

	@:native("SetAttenuationFilterDb")
	public function setAttenuationFilterDb(db:Single):Void;

	@:native("GetAttenuationFilterDb")
	public function getAttenuationFilterDb():Single;

	@:native("SetAttenuationModel")
	public function setAttenuationModel(model:godot.AudioStreamPlayer3D_AttenuationModelEnum):Void;

	@:native("GetAttenuationModel")
	public function getAttenuationModel():godot.AudioStreamPlayer3D_AttenuationModelEnum;

	@:native("SetOutOfRangeMode")
	public function setOutOfRangeMode(mode:godot.AudioStreamPlayer3D_OutOfRangeModeEnum):Void;

	@:native("GetOutOfRangeMode")
	public function getOutOfRangeMode():godot.AudioStreamPlayer3D_OutOfRangeModeEnum;

	@:native("SetDopplerTracking")
	public function setDopplerTracking(mode:godot.AudioStreamPlayer3D_DopplerTrackingEnum):Void;

	@:native("GetDopplerTracking")
	public function getDopplerTracking():godot.AudioStreamPlayer3D_DopplerTrackingEnum;

	@:native("SetStreamPaused")
	public function setStreamPaused(pause:Bool):Void;

	@:native("GetStreamPaused")
	public function getStreamPaused():Bool;

	/**		
		Returns the `godot.AudioStreamPlayback` object associated with this `godot.AudioStreamPlayer3D`.
	**/
	@:native("GetStreamPlayback")
	public function getStreamPlayback():godot.AudioStreamPlayback;
}
