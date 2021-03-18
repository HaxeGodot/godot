// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Custom Godot Shader Language expression, which is placed on top of the generated shader. You can place various function definitions inside to call later in `godot.VisualShaderNodeExpression`s (which are injected in the main shader functions). You can also declare varyings, uniforms and global constants.
**/
@:libType
@:csNative
@:native("Godot.VisualShaderNodeGlobalExpression")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualShaderNodeGlobalExpression extends godot.VisualShaderNodeExpression {
	@:native("new")
	public function new():Void;
}
