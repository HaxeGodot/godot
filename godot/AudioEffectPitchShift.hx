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
	@:native("FftSize")
	public var fftSize:godot.AudioEffectPitchShift_FFT_Size;

	@:native("Oversampling")
	public var oversampling:Int;

	/**		
		Pitch value. Can range from 0 (-1 octave) to 16 (+16 octaves).
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
