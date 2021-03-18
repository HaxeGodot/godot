// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.AudioStreamGenerator")
@:autoBuild(godot.Godot.buildUserClass())
extern class AudioStreamGenerator extends godot.AudioStream {
	@:native("BufferLength")
	public var bufferLength:Single;

	@:native("MixRate")
	public var mixRate:Single;

	@:native("new")
	public function new():Void;

	@:native("SetMixRate")
	public function setMixRate(hz:Single):Void;

	@:native("GetMixRate")
	public function getMixRate():Single;

	@:native("SetBufferLength")
	public function setBufferLength(seconds:Single):Void;

	@:native("GetBufferLength")
	public function getBufferLength():Single;
}
