// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Ends the execution of a function and returns control to the calling function. Optionally, it can return a `Variant` value.

Input Ports:

- Sequence

- Data (variant): `result` (optional)

Output Ports:

none
**/
@:libType
@:csNative
@:native("Godot.VisualScriptReturn")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualScriptReturn extends godot.VisualScriptNode {
	/**		
		The return value's data type.
	**/
	@:native("ReturnType")
	public var returnType:godot.Variant_Type;

	/**		
		If `true`, the `return` input port is available.
	**/
	@:native("ReturnEnabled")
	public var returnEnabled:Bool;

	@:native("new")
	public function new():Void;

	@:native("SetReturnType")
	public function setReturnType(type:godot.Variant_Type):Void;

	@:native("GetReturnType")
	public function getReturnType():godot.Variant_Type;

	@:native("SetEnableReturnValue")
	public function setEnableReturnValue(enable:Bool):Void;

	@:native("IsReturnValueEnabled")
	public function isReturnValueEnabled():Bool;
}
