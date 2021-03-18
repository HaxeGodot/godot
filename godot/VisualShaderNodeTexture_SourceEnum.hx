// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.VisualShaderNodeTexture.SourceEnum")
@:csNative
extern enum VisualShaderNodeTexture_SourceEnum {
	/**		
		Use the texture given as an argument for this function.
	**/
	Texture;

	/**		
		Use the current viewport's texture as the source.
	**/
	Screen;

	/**		
		Use the texture from this shader's texture built-in (e.g. a texture of a `godot.Sprite`).
	**/
	Source2dTexture;

	/**		
		Use the texture from this shader's normal map built-in.
	**/
	Source2dNormal;

	/**		
		Use the depth texture available for this shader.
	**/
	Depth;

	/**		
		Use the texture provided in the input port for this function.
	**/
	Port;
}
