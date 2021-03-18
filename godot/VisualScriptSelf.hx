// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Provides a reference to the node running the visual script.

Input Ports:

none

Output Ports:

- Data (object): `instance`
**/
@:libType
@:csNative
@:native("Godot.VisualScriptSelf")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualScriptSelf extends godot.VisualScriptNode {
	@:native("new")
	public function new():Void;
}
