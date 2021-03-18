// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.VisualServer.TextureType")
@:csNative
extern enum VisualServer_TextureType {
	/**		
		Normal texture with 2 dimensions, width and height.
	**/
	Type2d;

	/**		
		Texture made up of six faces, can be looked up with a `vec3` in shader.
	**/
	Cubemap;

	/**		
		An array of 2-dimensional textures.
	**/
	Type2dArray;

	/**		
		A 3-dimensional texture with width, height, and depth.
	**/
	Type3d;
}
