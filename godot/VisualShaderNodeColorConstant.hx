// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Has two output ports representing RGB and alpha channels of `godot.Color`.

Translated to `vec3 rgb` and `float alpha` in the shader language.
**/
@:libType
@:csNative
@:native("Godot.VisualShaderNodeColorConstant")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualShaderNodeColorConstant extends godot.VisualShaderNode {
	/**		
		A `godot.Color` constant which represents a state of this node.
	**/
	@:native("Constant")
	public var constant:godot.Color;

	@:native("new")
	public function new():Void;

	@:native("SetConstant")
	public function setConstant(value:godot.Color):Void;

	@:native("GetConstant")
	public function getConstant():godot.Color;
}
