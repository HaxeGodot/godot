// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Has only one output port and no inputs.

Translated to `bool` in the shader language.
**/
@:libType
@:csNative
@:native("Godot.VisualShaderNodeBooleanConstant")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualShaderNodeBooleanConstant extends godot.VisualShaderNode {
	/**		
		A boolean constant which represents a state of this node.
	**/
	@:native("Constant")
	public var constant:Bool;

	@:native("new")
	public function new():Void;

	@:native("SetConstant")
	public function setConstant(value:Bool):Void;

	@:native("GetConstant")
	public function getConstant():Bool;
}
