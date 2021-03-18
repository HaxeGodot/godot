// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A built-in function used inside a `godot.VisualScript`. It is usually a math function or an utility function.

See also `@GDScript`, for the same functions in the GDScript language.
**/
@:libType
@:csNative
@:native("Godot.VisualScriptBuiltinFunc")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualScriptBuiltinFunc extends godot.VisualScriptNode {
	/**		
		The function to be executed.
	**/
	@:native("Function")
	public var function_:godot.VisualScriptBuiltinFunc_BuiltinFunc;

	@:native("new")
	public function new():Void;

	@:native("SetFunc")
	public function setFunc(which:godot.VisualScriptBuiltinFunc_BuiltinFunc):Void;

	@:native("GetFunc")
	public function getFunc():godot.VisualScriptBuiltinFunc_BuiltinFunc;
}
