// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Plays audio that dampens with distance from screen center.

See also `godot.AudioStreamPlayer` to play a sound non-positionally.

Note: Hiding an `godot.AudioStreamPlayer2D` node does not disable its audio output. To temporarily disable an `godot.AudioStreamPlayer2D`'s audio output, set `godot.AudioStreamPlayer2D.volumeDb` to a very low value like `-100` (which isn't audible to human hearing).
**/
@:libType
@:csNative
@:native("Godot.AudioStreamPlayer2D")
@:autoBuild(godot.Godot.buildUserClass())
extern class AudioStreamPlayer2D extends godot.Node2D {
	/**
		`finished` signal.
	**/
	public var onFinished(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onFinished():Signal<Void->Void> {
		return new Signal(this, "finished", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**		
		Determines which `godot.Area2D` layers affect the sound for reverb and audio bus effects. Areas can be used to redirect `godot.AudioStream`s so that they play in a certain audio bus. An example of how you might use this is making a "water" area so that sounds played in the water are redirected through an audio bus to make them sound like they are being played underwater.
	**/
	@:native("AreaMask")
	public var areaMask:UInt;

	/**		
		Bus on which this audio is playing.
	**/
	@:native("Bus")
	public var bus:std.String;

	/**		
		Dampens audio over distance with this as an exponent.
	**/
	@:native("Attenuation")
	public var attenuation:Single;

	/**		
		Maximum distance from which audio is still hearable.
	**/
	@:native("MaxDistance")
	public var maxDistance:Single;

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
		Base volume without dampening.
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
	public function setMaxDistance(pixels:Single):Void;

	@:native("GetMaxDistance")
	public function getMaxDistance():Single;

	@:native("SetAttenuation")
	public function setAttenuation(curve:Single):Void;

	@:native("GetAttenuation")
	public function getAttenuation():Single;

	@:native("SetAreaMask")
	public function setAreaMask(mask:UInt):Void;

	@:native("GetAreaMask")
	public function getAreaMask():UInt;

	@:native("SetStreamPaused")
	public function setStreamPaused(pause:Bool):Void;

	@:native("GetStreamPaused")
	public function getStreamPaused():Bool;

	/**		
		Returns the `godot.AudioStreamPlayback` object associated with this `godot.AudioStreamPlayer2D`.
	**/
	@:native("GetStreamPlayback")
	public function getStreamPlayback():godot.AudioStreamPlayback;
}
