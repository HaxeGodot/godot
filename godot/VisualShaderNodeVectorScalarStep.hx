// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Translates to `step(edge, x)` in the shader language.

Returns `0.0` if `x` is smaller than `edge` and `1.0` otherwise.
**/
@:libType
@:csNative
@:native("Godot.VisualShaderNodeVectorScalarStep")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualShaderNodeVectorScalarStep extends godot.VisualShaderNode {
	@:native("new")
	public function new():Void;
}
