// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
MP3 audio stream driver.
**/
@:libType
@:csNative
@:native("Godot.AudioStreamMP3")
@:autoBuild(godot.Godot.buildUserClass())
extern class AudioStreamMP3 extends godot.AudioStream {
	/**		
		Time in seconds at which the stream starts after being looped.
	**/
	@:native("LoopOffset")
	public var loopOffset:Single;

	/**		
		If `true`, the stream will automatically loop when it reaches the end.
	**/
	@:native("Loop")
	public var loop:Bool;

	/**		
		Contains the audio data in bytes.
	**/
	@:native("Data")
	public var data:cs.NativeArray<cs.types.UInt8>;

	@:native("new")
	public function new():Void;

	@:native("SetData")
	public function setData(data:haxe.Rest<cs.types.UInt8>):Void;

	@:native("GetData")
	public function getData():cs.NativeArray<cs.types.UInt8>;

	@:native("SetLoop")
	public function setLoop(enable:Bool):Void;

	@:native("HasLoop")
	public function hasLoop():Bool;

	@:native("SetLoopOffset")
	public function setLoopOffset(seconds:Single):Void;

	@:native("GetLoopOffset")
	public function getLoopOffset():Single;
}
