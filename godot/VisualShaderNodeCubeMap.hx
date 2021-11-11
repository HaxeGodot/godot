// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Translated to `texture(cubemap, vec3)` in the shader language. Returns a color vector and alpha channel as scalar.
**/
@:libType
@:csNative
@:native("Godot.VisualShaderNodeCubeMap")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualShaderNodeCubeMap extends godot.VisualShaderNode {
	/**		
		Defines the type of data provided by the source texture. See `godot.VisualShaderNodeCubeMap_TextureTypeEnum` for options.
	**/
	@:native("TextureType")
	public var textureType:godot.VisualShaderNodeCubeMap_TextureTypeEnum;

	/**		
		The `godot.CubeMap` texture to sample when using `godot.VisualShaderNodeCubeMap_SourceEnum.texture` as `godot.VisualShaderNodeCubeMap.source`.
	**/
	@:native("CubeMap")
	public var cubeMap:godot.CubeMap;

	/**		
		Defines which source should be used for the sampling. See `godot.VisualShaderNodeCubeMap_SourceEnum` for options.
	**/
	@:native("Source")
	public var source:godot.VisualShaderNodeCubeMap_SourceEnum;

	@:native("new")
	public function new():Void;

	@:native("SetSource")
	public function setSource(value:godot.VisualShaderNodeCubeMap_SourceEnum):Void;

	@:native("GetSource")
	public function getSource():godot.VisualShaderNodeCubeMap_SourceEnum;

	@:native("SetCubeMap")
	public function setCubeMap(value:godot.CubeMap):Void;

	@:native("GetCubeMap")
	public function getCubeMap():godot.CubeMap;

	@:native("SetTextureType")
	public function setTextureType(value:godot.VisualShaderNodeCubeMap_TextureTypeEnum):Void;

	@:native("GetTextureType")
	public function getTextureType():godot.VisualShaderNodeCubeMap_TextureTypeEnum;
}
