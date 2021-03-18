// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Returns a variable's value. "Var Name" must be supplied, with an optional type.

Input Ports:

none

Output Ports:

- Data (variant): `value`
**/
@:libType
@:csNative
@:native("Godot.VisualScriptVariableGet")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualScriptVariableGet extends godot.VisualScriptNode {
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
