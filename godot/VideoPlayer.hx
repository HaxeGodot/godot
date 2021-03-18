// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Control node for playing video streams using `godot.VideoStream` resources.

Supported video formats are [https://www.webmproject.org/](WebM) (`godot.VideoStreamWebm`), [https://www.theora.org/](Ogg Theora) (`godot.VideoStreamTheora`), and any format exposed via a GDNative plugin using `godot.VideoStreamGDNative`.
**/
@:libType
@:csNative
@:native("Godot.VideoPlayer")
@:autoBuild(godot.Godot.buildUserClass())
extern class VideoPlayer extends godot.Control {
	/**		
		Audio bus to use for sound playback.
	**/
	@:native("Bus")
	public var bus:std.String;

	/**		
		The current position of the stream, in seconds.
	**/
	@:native("StreamPosition")
	public var streamPosition:Single;

	/**		
		Amount of time in milliseconds to store in buffer while playing.
	**/
	@:native("BufferingMsec")
	public var bufferingMsec:Int;

	/**		
		If `true`, the video scales to the control size. Otherwise, the control minimum size will be automatically adjusted to match the video stream's dimensions.
	**/
	@:native("Expand")
	public var expand:Bool;

	/**		
		If `true`, the video is paused.
	**/
	@:native("Paused")
	public var paused:Bool;

	/**		
		If `true`, playback starts when the scene loads.
	**/
	@:native("Autoplay")
	public var autoplay:Bool;

	/**		
		Audio volume as a linear value.
	**/
	@:native("Volume")
	public var volume:Single;

	/**		
		Audio volume in dB.
	**/
	@:native("VolumeDb")
	public var volumeDb:Single;

	/**		
		The assigned video stream. See description for supported formats.
	**/
	@:native("Stream")
	public var stream:godot.VideoStream;

	/**		
		The embedded audio track to play.
	**/
	@:native("AudioTrack")
	public var audioTrack:Int;

	@:native("new")
	public function new():Void;

	@:native("SetStream")
	public function setStream(stream:godot.VideoStream):Void;

	@:native("GetStream")
	public function getStream():godot.VideoStream;

	/**		
		Starts the video playback from the beginning. If the video is paused, this will not unpause the video.
	**/
	@:native("Play")
	public function play():Void;

	/**		
		Stops the video playback and sets the stream position to 0.
		
		Note: Although the stream position will be set to 0, the first frame of the video stream won't become the current frame.
	**/
	@:native("Stop")
	public function stop():Void;

	/**		
		Returns `true` if the video is playing.
		
		Note: The video is still considered playing if paused during playback.
	**/
	@:native("IsPlaying")
	public function isPlaying():Bool;

	@:native("SetPaused")
	public function setPaused(paused:Bool):Void;

	@:native("IsPaused")
	public function isPaused():Bool;

	@:native("SetVolume")
	public function setVolume(volume:Single):Void;

	@:native("GetVolume")
	public function getVolume():Single;

	@:native("SetVolumeDb")
	public function setVolumeDb(db:Single):Void;

	@:native("GetVolumeDb")
	public function getVolumeDb():Single;

	@:native("SetAudioTrack")
	public function setAudioTrack(track:Int):Void;

	@:native("GetAudioTrack")
	public function getAudioTrack():Int;

	/**		
		Returns the video stream's name, or `"&lt;No Stream&gt;"` if no video stream is assigned.
	**/
	@:native("GetStreamName")
	public function getStreamName():std.String;

	@:native("SetStreamPosition")
	public function setStreamPosition(position:Single):Void;

	@:native("GetStreamPosition")
	public function getStreamPosition():Single;

	@:native("SetAutoplay")
	public function setAutoplay(enabled:Bool):Void;

	@:native("HasAutoplay")
	public function hasAutoplay():Bool;

	@:native("SetExpand")
	public function setExpand(enable:Bool):Void;

	@:native("HasExpand")
	public function hasExpand():Bool;

	@:native("SetBufferingMsec")
	public function setBufferingMsec(msec:Int):Void;

	@:native("GetBufferingMsec")
	public function getBufferingMsec():Int;

	@:native("SetBus")
	public function setBus(bus:std.String):Void;

	@:native("GetBus")
	public function getBus():std.String;

	/**		
		Returns the current frame as a `godot.Texture`.
	**/
	@:native("GetVideoTexture")
	public function getVideoTexture():godot.Texture;
}
