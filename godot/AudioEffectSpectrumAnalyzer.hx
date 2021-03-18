// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.AudioEffectSpectrumAnalyzer")
@:autoBuild(godot.Godot.buildUserClass())
extern class AudioEffectSpectrumAnalyzer extends godot.AudioEffect {
	@:native("FftSize")
	public var fftSize:godot.AudioEffectSpectrumAnalyzer_FFT_Size;

	@:native("TapBackPos")
	public var tapBackPos:Single;

	@:native("BufferLength")
	public var bufferLength:Single;

	@:native("new")
	public function new():Void;

	@:native("SetBufferLength")
	public function setBufferLength(seconds:Single):Void;

	@:native("GetBufferLength")
	public function getBufferLength():Single;

	@:native("SetTapBackPos")
	public function setTapBackPos(seconds:Single):Void;

	@:native("GetTapBackPos")
	public function getTapBackPos():Single;

	@:native("SetFftSize")
	public function setFftSize(size:godot.AudioEffectSpectrumAnalyzer_FFT_Size):Void;

	@:native("GetFftSize")
	public function getFftSize():godot.AudioEffectSpectrumAnalyzer_FFT_Size;
}
