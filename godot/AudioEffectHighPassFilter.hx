// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Cuts frequencies lower than the `godot.AudioEffectFilter.cutoffHz` and allows higher frequencies to pass.
**/
@:libType
@:csNative
@:native("Godot.AudioEffectHighPassFilter")
@:autoBuild(godot.Godot.buildUserClass())
extern class AudioEffectHighPassFilter extends godot.AudioEffectFilter {
	@:native("new")
	public function new():Void;
}
