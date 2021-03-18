// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Adds a top, left, bottom, and right margin to all `godot.Control` nodes that are direct children of the container. To control the `godot.MarginContainer`'s margin, use the `margin_*` theme properties listed below.

Note: Be careful, `godot.Control` margin values are different than the constant margin values. If you want to change the custom margin values of the `godot.MarginContainer` by code, you should use the following examples:

```

var margin_value = 100
set("custom_constants/margin_top", margin_value)
set("custom_constants/margin_left", margin_value)
set("custom_constants/margin_bottom", margin_value)
set("custom_constants/margin_right", margin_value)

```
**/
@:libType
@:csNative
@:native("Godot.MarginContainer")
@:autoBuild(godot.Godot.buildUserClass())
extern class MarginContainer extends godot.Container {
	@:native("new")
	public function new():Void;
}
