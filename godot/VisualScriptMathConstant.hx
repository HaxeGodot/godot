// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Provides common math constants, such as Pi, on an output Data port.

Input Ports:

none

Output Ports:

- Data (variant): `get`
**/
@:libType
@:csNative
@:native("Godot.VisualScriptMathConstant")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualScriptMathConstant extends godot.VisualScriptNode {
	/**		
		The math constant.
	**/
	@:native("Constant")
	public var constant:godot.VisualScriptMathConstant_MathConstant;

	@:native("new")
	public function new():Void;

	@:native("SetMathConstant")
	public function setMathConstant(which:godot.VisualScriptMathConstant_MathConstant):Void;

	@:native("GetMathConstant")
	public function getMathConstant():godot.VisualScriptMathConstant_MathConstant;
}
