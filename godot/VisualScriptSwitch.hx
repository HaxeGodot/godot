// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Branches the flow based on an input's value. Use Case Count in the Inspector to set the number of branches and each comparison's optional type.

Input Ports:

- Sequence: `'input' is`

- Data (variant): `=`

- Data (variant): `=` (optional)

- Data (variant): `input`

Output Ports:

- Sequence

- Sequence (optional)

- Sequence: `done`
**/
@:libType
@:csNative
@:native("Godot.VisualScriptSwitch")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualScriptSwitch extends godot.VisualScriptNode {
	@:native("new")
	public function new():Void;
}
