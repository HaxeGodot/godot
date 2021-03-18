// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Performs a lookup operation on the provided texture, with support for multiple texture sources to choose from.
**/
@:libType
@:csNative
@:native("Godot.VisualShaderNodeTexture")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualShaderNodeTexture extends godot.VisualShaderNode {
	/**		
		Specifies the type of the texture if `godot.VisualShaderNodeTexture.source` is set to . See `godot.VisualShaderNodeTexture_TextureTypeEnum` for options.
	**/
	@:native("TextureType")
	public var textureType:godot.VisualShaderNodeTexture_TextureTypeEnum;

	/**		
		The source texture, if needed for the selected `godot.VisualShaderNodeTexture.source`.
	**/
	@:native("Texture")
	public var texture:godot.Texture;

	/**		
		Determines the source for the lookup. See `godot.VisualShaderNodeTexture_SourceEnum` for options.
	**/
	@:native("Source")
	public var source:godot.VisualShaderNodeTexture_SourceEnum;

	@:native("new")
	public function new():Void;

	@:native("SetSource")
	public function setSource(value:godot.VisualShaderNodeTexture_SourceEnum):Void;

	@:native("GetSource")
	public function getSource():godot.VisualShaderNodeTexture_SourceEnum;

	@:native("SetTexture")
	public function setTexture(value:godot.Texture):Void;

	@:native("GetTexture")
	public function getTexture():godot.Texture;

	@:native("SetTextureType")
	public function setTextureType(value:godot.VisualShaderNodeTexture_TextureTypeEnum):Void;

	@:native("GetTextureType")
	public function getTextureType():godot.VisualShaderNodeTexture_TextureTypeEnum;
}
