// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Vertical slider. See `godot.Slider`. This one goes from bottom (min) to top (max).

Note: The `Range.changed` and `Range.value_changed` signals are part of the `godot.Range` class which this class inherits from.
**/
@:libType
@:csNative
@:native("Godot.VSlider")
@:autoBuild(godot.Godot.buildUserClass())
extern class VSlider extends godot.Slider {
	@:native("new")
	public function new():Void;
}
