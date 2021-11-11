// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Dialog for confirmation of actions. This dialog inherits from `godot.AcceptDialog`, but has by default an OK and Cancel button (in host OS order).

To get cancel action, you can use:

```

get_cancel().connect("pressed", self, "cancelled")

```.
**/
@:libType
@:csNative
@:native("Godot.ConfirmationDialog")
@:autoBuild(godot.Godot.buildUserClass())
extern class ConfirmationDialog extends godot.AcceptDialog {
	@:native("new")
	public function new():Void;

	/**		
		Returns the cancel button.
		
		Warning: This is a required internal node, removing and freeing it may cause a crash. If you wish to hide it or any of its children, use their `godot.CanvasItem.visible` property.
	**/
	@:native("GetCancel")
	public function getCancel():godot.Button;
}
