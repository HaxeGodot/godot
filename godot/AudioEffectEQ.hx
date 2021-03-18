// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
AudioEffectEQ gives you control over frequencies. Use it to compensate for existing deficiencies in audio. AudioEffectEQs are useful on the Master bus to completely master a mix and give it more character. They are also useful when a game is run on a mobile device, to adjust the mix to that kind of speakers (it can be added but disabled when headphones are plugged).
**/
@:libType
@:csNative
@:native("Godot.AudioEffectEQ")
@:autoBuild(godot.Godot.buildUserClass())
extern class AudioEffectEQ extends godot.AudioEffect {
	@:native("new")
	public function new():Void;

	/**		
		Sets band's gain at the specified index, in dB.
	**/
	@:native("SetBandGainDb")
	public function setBandGainDb(bandIdx:Int, volumeDb:Single):Void;

	/**		
		Returns the band's gain at the specified index, in dB.
	**/
	@:native("GetBandGainDb")
	public function getBandGainDb(bandIdx:Int):Single;

	/**		
		Returns the number of bands of the equalizer.
	**/
	@:native("GetBandCount")
	public function getBandCount():Int;
}
