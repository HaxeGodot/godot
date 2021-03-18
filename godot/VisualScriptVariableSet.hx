// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Changes a variable's value to the given input.

Input Ports:

- Sequence

- Data (variant): `set`

Output Ports:

- Sequence
**/
@:libType
@:csNative
@:native("Godot.VisualScriptVariableSet")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualScriptVariableSet extends godot.VisualScriptNode {
	/**		
		The variable's name.
	**/
	@:native("VarName")
	public var varName:std.String;

	@:native("new")
	public function new():Void;

	@:native("SetVariable")
	public function setVariable(name:std.String):Void;

	@:native("GetVariable")
	public function getVariable():std.String;
}
