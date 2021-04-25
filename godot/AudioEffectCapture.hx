// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
AudioEffectCapture is an AudioEffect which copies all audio frames from the attached audio effect bus into its internal ring buffer.

Application code should consume these audio frames from this ring buffer using `godot.AudioEffectCapture.getBuffer` and process it as needed, for example to capture data from a microphone, implement application defined effects, or to transmit audio over the network.
**/
@:libType
@:csNative
@:native("Godot.AudioEffectCapture")
@:autoBuild(godot.Godot.buildUserClass())
extern class AudioEffectCapture extends godot.AudioEffect {
	/**		
		Length of the internal ring buffer, in seconds. Setting the buffer length will have no effect if already initialized.
	**/
	@:native("BufferLength")
	public var bufferLength:Single;

	@:native("new")
	public function new():Void;

	/**		
		Returns `true` if at least `frames` audio frames are available to read in the internal ring buffer.
	**/
	@:native("CanGetBuffer")
	public function canGetBuffer(frames:Int):Bool;

	/**		
		Gets the next `frames` audio samples from the internal ring buffer.
		
		Returns a `godot.Vector2` containing exactly `frames` audio samples if available, or an empty `godot.Vector2` if insufficient data was available.
	**/
	@:native("GetBuffer")
	public function getBuffer(frames:Int):cs.NativeArray<godot.Vector2>;

	/**		
		Clears the internal ring buffer.
	**/
	@:native("ClearBuffer")
	public function clearBuffer():Void;

	@:native("SetBufferLength")
	public function setBufferLength(bufferLengthSeconds:Single):Void;

	@:native("GetBufferLength")
	public function getBufferLength():Single;

	/**		
		Returns the number of frames available to read using `godot.AudioEffectCapture.getBuffer`.
	**/
	@:native("GetFramesAvailable")
	public function getFramesAvailable():Int;

	/**		
		Returns the number of audio frames discarded from the audio bus due to full buffer.
	**/
	@:native("GetDiscardedFrames")
	public function getDiscardedFrames():haxe.Int64;

	/**		
		Returns the total size of the internal ring buffer in frames.
	**/
	@:native("GetBufferLengthFrames")
	public function getBufferLengthFrames():Int;

	/**		
		Returns the number of audio frames inserted from the audio bus.
	**/
	@:native("GetPushedFrames")
	public function getPushedFrames():haxe.Int64;
}
