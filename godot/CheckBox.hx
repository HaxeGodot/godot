// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A checkbox allows the user to make a binary choice (choosing only one of two possible options). It's similar to `godot.CheckButton` in functionality, but it has a different appearance. To follow established UX patterns, it's recommended to use CheckBox when toggling it has no immediate effect on something. For instance, it should be used when toggling it will only do something once a confirmation button is pressed.

See also `godot.BaseButton` which contains common properties and methods associated with this node.
**/
@:libType
@:csNative
@:native("Godot.CheckBox")
@:autoBuild(godot.Godot.buildUserClass())
extern class CheckBox extends godot.Button {
	@:native("new")
	public function new():Void;
}
