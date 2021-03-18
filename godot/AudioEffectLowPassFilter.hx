// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Cuts frequencies higher than the `godot.AudioEffectFilter.cutoffHz` and allows lower frequencies to pass.
**/
@:libType
@:csNative
@:native("Godot.AudioEffectLowPassFilter")
@:autoBuild(godot.Godot.buildUserClass())
extern class AudioEffectLowPassFilter extends godot.AudioEffectFilter {
	@:native("new")
	public function new():Void;
}
