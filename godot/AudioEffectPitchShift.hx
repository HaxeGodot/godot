// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Allows modulation of pitch independently of tempo. All frequencies can be increased/decreased with minimal effect on transients.
**/
@:libType
@:csNative
@:native("Godot.AudioEffectPitchShift")
@:autoBuild(godot.Godot.buildUserClass())
extern class AudioEffectPitchShift extends godot.AudioEffect {
	/**		
		The size of the [https://en.wikipedia.org/wiki/Fast_Fourier_transform](Fast Fourier transform) buffer. Higher values smooth out the effect over time, but have greater latency. The effects of this higher latency are especially noticeable on sounds that have sudden amplitude changes.
	**/
	@:native("FftSize")
	public var fftSize:godot.AudioEffectPitchShift_FFT_Size;

	/**		
		The oversampling factor to use. Higher values result in better quality, but are more demanding on the CPU and may cause audio cracking if the CPU can't keep up.
	**/
	@:native("Oversampling")
	public var oversampling:Int;

	/**		
		The pitch scale to use. `1.0` is the default pitch and plays sounds unaltered. `godot.AudioEffectPitchShift.pitchScale` can range from `0.0` (infinitely low pitch, inaudible) to `16` (16 times higher than the initial pitch).
	**/
	@:native("PitchScale")
	public var pitchScale:Single;

	@:native("new")
	public function new():Void;

	@:native("SetPitchScale")
	public function setPitchScale(rate:Single):Void;

	@:native("GetPitchScale")
	public function getPitchScale():Single;

	@:native("SetOversampling")
	public function setOversampling(amount:Int):Void;

	@:native("GetOversampling")
	public function getOversampling():Int;

	@:native("SetFftSize")
	public function setFftSize(size:godot.AudioEffectPitchShift_FFT_Size):Void;

	@:native("GetFftSize")
	public function getFftSize():godot.AudioEffectPitchShift_FFT_Size;
}
