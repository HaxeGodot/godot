// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Attenuates the frequencies inside of a range around the `godot.AudioEffectFilter.cutoffHz` and cuts frequencies outside of this band.
**/
@:libType
@:csNative
@:native("Godot.AudioEffectBandPassFilter")
@:autoBuild(godot.Godot.buildUserClass())
extern class AudioEffectBandPassFilter extends godot.AudioEffectFilter {
	@:native("new")
	public function new():Void;
}
