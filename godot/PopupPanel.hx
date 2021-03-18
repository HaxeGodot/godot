// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Class for displaying popups with a panel background. In some cases it might be simpler to use than `godot.Popup`, since it provides a configurable background. If you are making windows, better check `godot.WindowDialog`.
**/
@:libType
@:csNative
@:native("Godot.PopupPanel")
@:autoBuild(godot.Godot.buildUserClass())
extern class PopupPanel extends godot.Popup {
	@:native("new")
	public function new():Void;
}
