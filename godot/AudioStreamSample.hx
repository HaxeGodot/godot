// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
AudioStreamSample stores sound samples loaded from WAV files. To play the stored sound, use an `godot.AudioStreamPlayer` (for non-positional audio) or `godot.AudioStreamPlayer2D`/`godot.AudioStreamPlayer3D` (for positional audio). The sound can be looped.

This class can also be used to store dynamically-generated PCM audio data.
**/
@:libType
@:csNative
@:native("Godot.AudioStreamSample")
@:autoBuild(godot.Godot.buildUserClass())
extern class AudioStreamSample extends godot.AudioStream {
	/**		
		If `true`, audio is stereo.
	**/
	@:native("Stereo")
	public var stereo:Bool;

	/**		
		The sample rate for mixing this audio.
	**/
	@:native("MixRate")
	public var mixRate:Int;

	/**		
		The loop end point (in number of samples, relative to the beginning of the sample). This information will be imported automatically from the WAV file if present.
	**/
	@:native("LoopEnd")
	public var loopEnd:Int;

	/**		
		The loop start point (in number of samples, relative to the beginning of the sample). This information will be imported automatically from the WAV file if present.
	**/
	@:native("LoopBegin")
	public var loopBegin:Int;

	/**		
		The loop mode. This information will be imported automatically from the WAV file if present. See `godot.AudioStreamSample_LoopModeEnum` constants for values.
	**/
	@:native("LoopMode")
	public var loopMode:godot.AudioStreamSample_LoopModeEnum;

	/**		
		Audio format. See `godot.AudioStreamSample_FormatEnum` constants for values.
	**/
	@:native("Format")
	public var format:godot.AudioStreamSample_FormatEnum;

	/**		
		Contains the audio data in bytes.
		
		Note: This property expects signed PCM8 data. To convert unsigned PCM8 to signed PCM8, subtract 128 from each byte.
	**/
	@:native("Data")
	public var data:cs.NativeArray<cs.types.UInt8>;

	@:native("new")
	public function new():Void;

	@:native("SetData")
	public function setData(data:HaxeArray<cs.types.UInt8>):Void;

	public extern inline function getData():std.Array<cs.types.UInt8> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetData()", this));
	}

	@:native("SetFormat")
	public function setFormat(format:godot.AudioStreamSample_FormatEnum):Void;

	@:native("GetFormat")
	public function getFormat():godot.AudioStreamSample_FormatEnum;

	@:native("SetLoopMode")
	public function setLoopMode(loopMode:godot.AudioStreamSample_LoopModeEnum):Void;

	@:native("GetLoopMode")
	public function getLoopMode():godot.AudioStreamSample_LoopModeEnum;

	@:native("SetLoopBegin")
	public function setLoopBegin(loopBegin:Int):Void;

	@:native("GetLoopBegin")
	public function getLoopBegin():Int;

	@:native("SetLoopEnd")
	public function setLoopEnd(loopEnd:Int):Void;

	@:native("GetLoopEnd")
	public function getLoopEnd():Int;

	@:native("SetMixRate")
	public function setMixRate(mixRate:Int):Void;

	@:native("GetMixRate")
	public function getMixRate():Int;

	@:native("SetStereo")
	public function setStereo(stereo:Bool):Void;

	@:native("IsStereo")
	public function isStereo():Bool;

	/**		
		Saves the AudioStreamSample as a WAV file to `path`. Samples with IMA ADPCM format can't be saved.
		
		Note: A `.wav` extension is automatically appended to `path` if it is missing.
	**/
	@:native("SaveToWav")
	public function saveToWav(path:std.String):godot.Error;
}
