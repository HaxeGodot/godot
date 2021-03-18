// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Loops while a condition is `true`. Execution continues out the `exit` Sequence port when the loop terminates.

Input Ports:

- Sequence: `while(cond)`

- Data (bool): `cond`

Output Ports:

- Sequence: `repeat`

- Sequence: `exit`
**/
@:libType
@:csNative
@:native("Godot.VisualScriptWhile")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualScriptWhile extends godot.VisualScriptNode {
	@:native("new")
	public function new():Void;
}
