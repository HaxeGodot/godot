// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This class allows you to define a custom shader program that can be used by a `godot.ShaderMaterial`. Shaders allow you to write your own custom behavior for rendering objects or updating particle information. For a detailed explanation and usage, please see the tutorials linked below.
**/
@:libType
@:csNative
@:native("Godot.Shader")
@:autoBuild(godot.Godot.buildUserClass())
extern class Shader extends godot.Resource {
	/**		
		Returns the shader's custom defines. Custom defines can be used in Godot to add GLSL preprocessor directives (e.g: extensions) required for the shader logic.
		
		Note: Custom defines are not validated by the Godot shader parser, so care should be taken when using them.
	**/
	@:native("CustomDefines")
	public var customDefines:std.String;

	/**		
		Returns the shader's code as the user has written it, not the full generated code used internally.
	**/
	@:native("Code")
	public var code:std.String;

	@:native("new")
	public function new():Void;

	/**		
		Returns the shader mode for the shader, either ,  or .
	**/
	@:native("GetMode")
	public function getMode():godot.Shader_Mode;

	@:native("SetCode")
	public function setCode(code:std.String):Void;

	@:native("GetCode")
	public function getCode():std.String;

	/**		
		Sets the default texture to be used with a texture uniform. The default is used if a texture is not set in the `godot.ShaderMaterial`.
		
		Note: `param` must match the name of the uniform in the code exactly.
	**/
	@:native("SetDefaultTextureParam")
	public function setDefaultTextureParam(param:std.String, texture:godot.Texture):Void;

	/**		
		Returns the texture that is set as default for the specified parameter.
		
		Note: `param` must match the name of the uniform in the code exactly.
	**/
	@:native("GetDefaultTextureParam")
	public function getDefaultTextureParam(param:std.String):godot.Texture;

	@:native("SetCustomDefines")
	public function setCustomDefines(customDefines:std.String):Void;

	@:native("GetCustomDefines")
	public function getCustomDefines():std.String;

	/**		
		Returns `true` if the shader has this param defined as a uniform in its code.
		
		Note: `param` must match the name of the uniform in the code exactly.
	**/
	@:native("HasParam")
	public function hasParam(name:std.String):Bool;
}
