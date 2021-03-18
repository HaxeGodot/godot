// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Creates a 4x4 transform matrix using four vectors of type `vec3`. Each vector is one row in the matrix and the last column is a `vec4(0, 0, 0, 1)`.
**/
@:libType
@:csNative
@:native("Godot.VisualShaderNodeTransformCompose")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualShaderNodeTransformCompose extends godot.VisualShaderNode {
	@:native("new")
	public function new():Void;
}
