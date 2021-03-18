// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Takes a 4x4 transform matrix and decomposes it into four `vec3` values, one from each row of the matrix.
**/
@:libType
@:csNative
@:native("Godot.VisualShaderNodeTransformDecompose")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualShaderNodeTransformDecompose extends godot.VisualShaderNode {
	@:native("new")
	public function new():Void;
}
