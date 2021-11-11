// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This audio effect does not affect sound output, but can be used for real-time audio visualizations.

See also `godot.AudioStreamGenerator` for procedurally generating sounds.
**/
@:libType
@:csNative
@:native("Godot.AudioEffectSpectrumAnalyzer")
@:autoBuild(godot.Godot.buildUserClass())
extern class AudioEffectSpectrumAnalyzer extends godot.AudioEffect {
	/**		
		The size of the [https://en.wikipedia.org/wiki/Fast_Fourier_transform](Fast Fourier transform) buffer. Higher values smooth out the spectrum analysis over time, but have greater latency. The effects of this higher latency are especially noticeable with sudden amplitude changes.
	**/
	@:native("FftSize")
	public var fftSize:godot.AudioEffectSpectrumAnalyzer_FFT_Size;

	@:native("TapBackPos")
	public var tapBackPos:Single;

	/**		
		The length of the buffer to keep (in seconds). Higher values keep data around for longer, but require more memory.
	**/
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
