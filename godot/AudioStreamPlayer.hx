// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Plays an audio stream non-positionally.

To play audio positionally, use `godot.AudioStreamPlayer2D` or `godot.AudioStreamPlayer3D` instead of `godot.AudioStreamPlayer`.
**/
@:libType
@:csNative
@:native("Godot.AudioStreamPlayer")
@:autoBuild(godot.Godot.buildUserClass())
extern class AudioStreamPlayer extends godot.Node {
	/**
		`finished` signal.
	**/
	public var onFinished(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onFinished():Signal<Void->Void> {
		return new Signal(this, "finished", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**		
		Bus on which this audio is playing.
	**/
	@:native("Bus")
	public var bus:std.String;

	/**		
		If the audio configuration has more than two speakers, this sets the target channels. See `godot.AudioStreamPlayer_MixTargetEnum` constants.
	**/
	@:native("MixTarget")
	public var mixTarget:godot.AudioStreamPlayer_MixTargetEnum;

	/**		
		If `true`, the playback is paused. You can resume it by setting `stream_paused` to `false`.
	**/
	@:native("StreamPaused")
	public var streamPaused:Bool;

	/**		
		If `true`, audio plays when added to scene tree.
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
		Volume of sound, in dB.
	**/
	@:native("VolumeDb")
	public var volumeDb:Single;

	/**		
		The `godot.AudioStream` object to be played.
	**/
	@:native("Stream")
	public var stream:godot.AudioStream;

	@:native("new")
	public function new():Void;

	@:native("SetStream")
	public function setStream(stream:godot.AudioStream):Void;

	@:native("GetStream")
	public function getStream():godot.AudioStream;

	@:native("SetVolumeDb")
	public function setVolumeDb(volumeDb:Single):Void;

	@:native("GetVolumeDb")
	public function getVolumeDb():Single;

	@:native("SetPitchScale")
	public function setPitchScale(pitchScale:Single):Void;

	@:native("GetPitchScale")
	public function getPitchScale():Single;

	#if doc_gen
	/**		
		Plays the audio from the given `from_position`, in seconds.
	**/
	@:native("Play")
	public function play(?fromPosition:Single):Void;
	#else
	/**		
		Plays the audio from the given `from_position`, in seconds.
	**/
	@:native("Play")
	public overload function play():Void;

	/**		
		Plays the audio from the given `from_position`, in seconds.
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
		Returns the position in the `godot.AudioStream` in seconds.
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

	@:native("SetMixTarget")
	public function setMixTarget(mixTarget:godot.AudioStreamPlayer_MixTargetEnum):Void;

	@:native("GetMixTarget")
	public function getMixTarget():godot.AudioStreamPlayer_MixTargetEnum;

	@:native("SetStreamPaused")
	public function setStreamPaused(pause:Bool):Void;

	@:native("GetStreamPaused")
	public function getStreamPaused():Bool;

	/**		
		Returns the `godot.AudioStreamPlayback` object associated with this `godot.AudioStreamPlayer`.
	**/
	@:native("GetStreamPlayback")
	public function getStreamPlayback():godot.AudioStreamPlayback;
}
