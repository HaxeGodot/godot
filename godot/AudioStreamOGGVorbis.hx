// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
OGG Vorbis audio stream driver.
**/
@:libType
@:csNative
@:native("Godot.AudioStreamOGGVorbis")
@:autoBuild(godot.Godot.buildUserClass())
extern class AudioStreamOGGVorbis extends godot.AudioStream {
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

	public extern inline function getData():std.Array<cs.types.UInt8> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetData()", this));
	}

	@:native("SetLoop")
	public function setLoop(enable:Bool):Void;

	@:native("HasLoop")
	public function hasLoop():Bool;

	@:native("SetLoopOffset")
	public function setLoopOffset(seconds:Single):Void;

	@:native("GetLoopOffset")
	public function getLoopOffset():Single;
}
