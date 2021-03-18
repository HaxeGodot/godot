// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A uniform represents a variable in the shader which is set externally, i.e. from the `godot.ShaderMaterial`. Uniforms are exposed as properties in the `godot.ShaderMaterial` and can be assigned from the inspector or from a script.
**/
@:libType
@:csNative
@:native("Godot.VisualShaderNodeUniform")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class VisualShaderNodeUniform extends godot.VisualShaderNode {
	/**		
		Name of the uniform, by which it can be accessed through the `godot.ShaderMaterial` properties.
	**/
	@:native("UniformName")
	public var uniformName:std.String;

	@:native("SetUniformName")
	public function setUniformName(name:std.String):Void;

	@:native("GetUniformName")
	public function getUniformName():std.String;
}
