// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.VisualShaderNodeCubeMap.TextureTypeEnum")
@:csNative
extern enum VisualShaderNodeCubeMap_TextureTypeEnum {
	/**		
		No hints are added to the uniform declaration.
	**/
	Data;

	/**		
		Adds `hint_albedo` as hint to the uniform declaration for proper sRGB to linear conversion.
	**/
	Color;

	/**		
		Adds `hint_normal` as hint to the uniform declaration, which internally converts the texture for proper usage as normal map.
	**/
	Normalmap;
}
