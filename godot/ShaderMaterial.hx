// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A material that uses a custom `godot.Shader` program to render either items to screen or process particles. You can create multiple materials for the same shader but configure different values for the uniforms defined in the shader.

Note: Due to a renderer limitation, emissive `godot.ShaderMaterial`s cannot emit light when used in a `godot.GIProbe`. Only emissive `godot.SpatialMaterial`s can emit light in a `godot.GIProbe`.
**/
@:libType
@:csNative
@:native("Godot.ShaderMaterial")
@:autoBuild(godot.Godot.buildUserClass())
extern class ShaderMaterial extends godot.Material {
	/**		
		The `godot.Shader` program used to render this material.
	**/
	@:native("Shader")
	public var shader:godot.Shader;

	@:native("new")
	public function new():Void;

	@:native("SetShader")
	public function setShader(shader:godot.Shader):Void;

	@:native("GetShader")
	public function getShader():godot.Shader;

	/**		
		Changes the value set for this material of a uniform in the shader. Note: `param` must match the name of the uniform in the code exactly.
	**/
	@:native("SetShaderParam")
	public function setShaderParam(param:std.String, value:Dynamic):Void;

	/**		
		Returns the current value set for this material of a uniform in the shader.
	**/
	@:native("GetShaderParam")
	public function getShaderParam(param:std.String):Dynamic;

	/**		
		Returns `true` if the property identified by `name` can be reverted to a default value.
	**/
	@:native("PropertyCanRevert")
	public function propertyCanRevert(name:std.String):Bool;

	/**		
		Returns the default value of the material property with given `name`.
	**/
	@:native("PropertyGetRevert")
	public function propertyGetRevert(name:std.String):Dynamic;
}
