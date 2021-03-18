// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Translates to `mix(a, b, weight)` in the shader language, where `weight` is a `godot.Vector3` with weights for each component.
**/
@:libType
@:csNative
@:native("Godot.VisualShaderNodeVectorInterp")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualShaderNodeVectorInterp extends godot.VisualShaderNode {
	@:native("new")
	public function new():Void;
}
