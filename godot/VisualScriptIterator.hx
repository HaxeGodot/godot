// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This node steps through each item in a given input. Input can be any sequence data type, such as an `godot.Collections_Array` or `String`. When each item has been processed, execution passed out the `exit` Sequence port.

Input Ports:

- Sequence: `for (elem) in (input)`

- Data (variant): `input`

Output Ports:

- Sequence: `each`

- Sequence: `exit`

- Data (variant): `elem`
**/
@:libType
@:csNative
@:native("Godot.VisualScriptIterator")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualScriptIterator extends godot.VisualScriptNode {
	@:native("new")
	public function new():Void;
}
