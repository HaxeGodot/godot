// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A Visual Script node that checks a `Bool` input port. If `true`, it will exit via the "true" sequence port. If `false`, it will exit via the "false" sequence port. After exiting either, it exits via the "done" port. Sequence ports may be left disconnected.

Input Ports:

- Sequence: `if (cond) is`

- Data (boolean): `cond`

Output Ports:

- Sequence: `true`

- Sequence: `false`

- Sequence: `done`
**/
@:libType
@:csNative
@:native("Godot.VisualScriptCondition")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualScriptCondition extends godot.VisualScriptNode {
	@:native("new")
	public function new():Void;
}
