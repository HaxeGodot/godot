// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Creating a reference to a `godot.VisualShaderNodeUniform` allows you to reuse this uniform in different shaders or shader stages easily.
**/
@:libType
@:csNative
@:native("Godot.VisualShaderNodeUniformRef")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualShaderNodeUniformRef extends godot.VisualShaderNode {
	/**		
		The name of the uniform which this reference points to.
	**/
	@:native("UniformName")
	public var uniformName:std.String;

	@:native("new")
	public function new():Void;

	@:native("SetUniformName")
	public function setUniformName(name:std.String):Void;

	@:native("GetUniformName")
	public function getUniformName():std.String;
}
