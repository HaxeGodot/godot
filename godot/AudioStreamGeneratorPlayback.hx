// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.AudioStreamGeneratorPlayback")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class AudioStreamGeneratorPlayback extends godot.AudioStreamPlaybackResampled {
	@:native("PushFrame")
	public function pushFrame(frame:godot.Vector2):Bool;

	@:native("CanPushBuffer")
	public function canPushBuffer(amount:Int):Bool;

	@:native("PushBuffer")
	public function pushBuffer(frames:HaxeArray<godot.Vector2>):Bool;

	@:native("GetFramesAvailable")
	public function getFramesAvailable():Int;

	@:native("GetSkips")
	public function getSkips():Int;

	@:native("ClearBuffer")
	public function clearBuffer():Void;
}
