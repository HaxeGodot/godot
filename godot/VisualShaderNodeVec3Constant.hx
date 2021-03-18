// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A constant `godot.Vector3`, which can be used as an input node.
**/
@:libType
@:csNative
@:native("Godot.VisualShaderNodeVec3Constant")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualShaderNodeVec3Constant extends godot.VisualShaderNode {
	/**		
		A `godot.Vector3` constant which represents the state of this node.
	**/
	@:native("Constant")
	public var constant:godot.Vector3;

	@:native("new")
	public function new():Void;

	@:native("SetConstant")
	public function setConstant(value:godot.Vector3):Void;

	@:native("GetConstant")
	public function getConstant():godot.Vector3;
}
