// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This is a helper class to generate a flat `godot.Button` (see `godot.Button.flat`), creating a `godot.ToolButton` is equivalent to:

```

var btn = Button.new()
btn.flat = true

```
**/
@:libType
@:csNative
@:native("Godot.ToolButton")
@:autoBuild(godot.Godot.buildUserClass())
extern class ToolButton extends godot.Button {
	@:native("new")
	public function new():Void;
}
