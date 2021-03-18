// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Attenuates frequencies in a narrow band around the `godot.AudioEffectFilter.cutoffHz` and cuts frequencies outside of this range.
**/
@:libType
@:csNative
@:native("Godot.AudioEffectNotchFilter")
@:autoBuild(godot.Godot.buildUserClass())
extern class AudioEffectNotchFilter extends godot.AudioEffectFilter {
	@:native("new")
	public function new():Void;
}
