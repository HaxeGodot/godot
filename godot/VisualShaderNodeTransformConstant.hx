// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A constant `godot.Transform`, which can be used as an input node.
**/
@:libType
@:csNative
@:native("Godot.VisualShaderNodeTransformConstant")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualShaderNodeTransformConstant extends godot.VisualShaderNode {
	/**		
		A `godot.Transform` constant which represents the state of this node.
	**/
	@:native("Constant")
	public var constant:godot.Transform;

	@:native("new")
	public function new():Void;

	@:native("SetConstant")
	public function setConstant(value:godot.Transform):Void;

	@:native("GetConstant")
	public function getConstant():godot.Transform;
}
