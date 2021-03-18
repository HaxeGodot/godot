// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Performs a lookup operation on the texture provided as a uniform for the shader.
**/
@:libType
@:csNative
@:native("Godot.VisualShaderNodeTextureUniform")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualShaderNodeTextureUniform extends godot.VisualShaderNodeUniform {
	/**		
		Sets the default color if no texture is assigned to the uniform.
	**/
	@:native("ColorDefault")
	public var colorDefault:godot.VisualShaderNodeTextureUniform_ColorDefaultEnum;

	/**		
		Defines the type of data provided by the source texture. See `godot.VisualShaderNodeTextureUniform_TextureTypeEnum` for options.
	**/
	@:native("TextureType")
	public var textureType:godot.VisualShaderNodeTextureUniform_TextureTypeEnum;

	@:native("new")
	public function new():Void;

	@:native("SetTextureType")
	public function setTextureType(type:godot.VisualShaderNodeTextureUniform_TextureTypeEnum):Void;

	@:native("GetTextureType")
	public function getTextureType():godot.VisualShaderNodeTextureUniform_TextureTypeEnum;

	@:native("SetColorDefault")
	public function setColorDefault(type:godot.VisualShaderNodeTextureUniform_ColorDefaultEnum):Void;

	@:native("GetColorDefault")
	public function getColorDefault():godot.VisualShaderNodeTextureUniform_ColorDefaultEnum;
}
