// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Randomly varies pitch on each start.
**/
@:libType
@:csNative
@:native("Godot.AudioStreamRandomPitch")
@:autoBuild(godot.Godot.buildUserClass())
extern class AudioStreamRandomPitch extends godot.AudioStream {
	/**		
		The intensity of random pitch variation.
	**/
	@:native("RandomPitch")
	public var randomPitch:Single;

	/**		
		The current `godot.AudioStream`.
	**/
	@:native("AudioStream")
	public var audioStream:godot.AudioStream;

	@:native("new")
	public function new():Void;

	@:native("SetAudioStream")
	public function setAudioStream(stream:godot.AudioStream):Void;

	@:native("GetAudioStream")
	public function getAudioStream():godot.AudioStream;

	@:native("SetRandomPitch")
	public function setRandomPitch(scale:Single):Void;

	@:native("GetRandomPitch")
	public function getRandomPitch():Single;
}
