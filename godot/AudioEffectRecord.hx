// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Allows the user to record sound from a microphone. It sets and gets the format in which the audio file will be recorded (8-bit, 16-bit, or compressed). It checks whether or not the recording is active, and if it is, records the sound. It then returns the recorded sample.
**/
@:libType
@:csNative
@:native("Godot.AudioEffectRecord")
@:autoBuild(godot.Godot.buildUserClass())
extern class AudioEffectRecord extends godot.AudioEffect {
	/**		
		Specifies the format in which the sample will be recorded. See `godot.AudioStreamSample_FormatEnum` for available formats.
	**/
	@:native("Format")
	public var format:godot.AudioStreamSample_FormatEnum;

	@:native("new")
	public function new():Void;

	/**		
		If `true`, the sound will be recorded. Note that restarting the recording will remove the previously recorded sample.
	**/
	@:native("SetRecordingActive")
	public function setRecordingActive(record:Bool):Void;

	/**		
		Returns whether the recording is active or not.
	**/
	@:native("IsRecordingActive")
	public function isRecordingActive():Bool;

	@:native("SetFormat")
	public function setFormat(format:godot.AudioStreamSample_FormatEnum):Void;

	@:native("GetFormat")
	public function getFormat():godot.AudioStreamSample_FormatEnum;

	/**		
		Returns the recorded sample.
	**/
	@:native("GetRecording")
	public function getRecording():godot.AudioStreamSample;
}
