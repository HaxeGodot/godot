// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Horizontal slider. See `godot.Slider`. This one goes from left (min) to right (max).

Note: The `Range.changed` and `Range.value_changed` signals are part of the `godot.Range` class which this class inherits from.
**/
@:libType
@:csNative
@:native("Godot.HSlider")
@:autoBuild(godot.Godot.buildUserClass())
extern class HSlider extends godot.Slider {
	@:native("new")
	public function new():Void;
}
