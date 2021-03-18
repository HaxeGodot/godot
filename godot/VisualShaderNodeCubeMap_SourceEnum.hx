// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.VisualShaderNodeCubeMap.SourceEnum")
@:csNative
extern enum VisualShaderNodeCubeMap_SourceEnum {
	/**		
		Use the `godot.CubeMap` set via `godot.VisualShaderNodeCubeMap.cubeMap`. If this is set to `godot.VisualShaderNodeCubeMap.source`, the `samplerCube` port is ignored.
	**/
	Texture;

	/**		
		Use the `godot.CubeMap` sampler reference passed via the `samplerCube` port. If this is set to `godot.VisualShaderNodeCubeMap.source`, the `godot.VisualShaderNodeCubeMap.cubeMap` texture is ignored.
	**/
	Port;
}
