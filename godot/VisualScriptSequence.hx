// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Steps through a series of one or more output Sequence ports. The `current` data port outputs the currently executing item.

Input Ports:

- Sequence: `in order`

Output Ports:

- Sequence: `1`

- Sequence: `2 - n` (optional)

- Data (int): `current`
**/
@:libType
@:csNative
@:native("Godot.VisualScriptSequence")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualScriptSequence extends godot.VisualScriptNode {
	/**		
		The number of steps in the sequence.
	**/
	@:native("Steps")
	public var steps:Int;

	@:native("new")
	public function new():Void;

	@:native("SetSteps")
	public function setSteps(steps:Int):Void;

	@:native("GetSteps")
	public function getSteps():Int;
}
