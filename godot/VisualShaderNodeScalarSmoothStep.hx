// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Translates to `smoothstep(edge0, edge1, x)` in the shader language.

Returns `0.0` if `x` is smaller than `edge0` and `1.0` if `x` is larger than `edge1`. Otherwise the return value is interpolated between `0.0` and `1.0` using Hermite polynomials.
**/
@:libType
@:csNative
@:native("Godot.VisualShaderNodeScalarSmoothStep")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualShaderNodeScalarSmoothStep extends godot.VisualShaderNode {
	@:native("new")
	public function new():Void;
}
