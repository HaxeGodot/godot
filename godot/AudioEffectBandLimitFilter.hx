// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Limits the frequencies in a range around the `godot.AudioEffectFilter.cutoffHz` and allows frequencies outside of this range to pass.
**/
@:libType
@:csNative
@:native("Godot.AudioEffectBandLimitFilter")
@:autoBuild(godot.Godot.buildUserClass())
extern class AudioEffectBandLimitFilter extends godot.AudioEffectFilter {
	@:native("new")
	public function new():Void;
}
