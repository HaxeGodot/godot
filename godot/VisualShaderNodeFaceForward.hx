// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Translates to `faceforward(N, I, Nref)` in the shader language. The function has three vector parameters: `N`, the vector to orient, `I`, the incident vector, and `Nref`, the reference vector. If the dot product of `I` and `Nref` is smaller than zero the return value is `N`. Otherwise, `-N` is returned.
**/
@:libType
@:csNative
@:native("Godot.VisualShaderNodeFaceForward")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualShaderNodeFaceForward extends godot.VisualShaderNode {
	@:native("new")
	public function new():Void;
}
