// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
CheckButton is a toggle button displayed as a check field. It's similar to `godot.CheckBox` in functionality, but it has a different apperance. To follow established UX patterns, it's recommended to use CheckButton when toggling it has an immediate effect on something. For instance, it should be used if toggling it enables/disables a setting without requiring the user to press a confirmation button.
**/
@:libType
@:csNative
@:native("Godot.CheckButton")
@:autoBuild(godot.Godot.buildUserClass())
extern class CheckButton extends godot.Button {
	@:native("new")
	public function new():Void;
}
