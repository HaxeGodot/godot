// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Emits a specified signal when it is executed.

Input Ports:

- Sequence: `emit`

Output Ports:

- Sequence
**/
@:libType
@:csNative
@:native("Godot.VisualScriptEmitSignal")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualScriptEmitSignal extends godot.VisualScriptNode {
	/**		
		The signal to emit.
	**/
	@:native("Signal")
	public var signal:std.String;

	@:native("new")
	public function new():Void;

	@:native("SetSignal")
	public function setSignal(name:std.String):Void;

	@:native("GetSignal")
	public function getSignal():std.String;
}
