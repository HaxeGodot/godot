// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This class is meant to be used with `godot.AudioStreamGenerator` to play back the generated audio in real-time.
**/
@:libType
@:csNative
@:native("Godot.AudioStreamGeneratorPlayback")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class AudioStreamGeneratorPlayback extends godot.AudioStreamPlaybackResampled {
	/**		
		Pushes a single audio data frame to the buffer. This is usually less efficient than `godot.AudioStreamGeneratorPlayback.pushBuffer` in C# and compiled languages via GDNative, but `godot.AudioStreamGeneratorPlayback.pushFrame` may be more efficient in GDScript.
	**/
	@:native("PushFrame")
	public function pushFrame(frame:godot.Vector2):Bool;

	/**		
		Returns `true` if a buffer of the size `amount` can be pushed to the audio sample data buffer without overflowing it, `false` otherwise.
	**/
	@:native("CanPushBuffer")
	public function canPushBuffer(amount:Int):Bool;

	/**		
		Pushes several audio data frames to the buffer. This is usually more efficient than `godot.AudioStreamGeneratorPlayback.pushFrame` in C# and compiled languages via GDNative, but `godot.AudioStreamGeneratorPlayback.pushBuffer` may be less efficient in GDScript.
	**/
	@:native("PushBuffer")
	public function pushBuffer(frames:HaxeArray<godot.Vector2>):Bool;

	/**		
		Returns the number of audio data frames left to play. If this returned number reaches `0`, the audio will stop playing until frames are added again. Therefore, make sure your script can always generate and push new audio frames fast enough to avoid audio cracking.
	**/
	@:native("GetFramesAvailable")
	public function getFramesAvailable():Int;

	@:native("GetSkips")
	public function getSkips():Int;

	/**		
		Clears the audio sample data buffer.
	**/
	@:native("ClearBuffer")
	public function clearBuffer():Void;
}
