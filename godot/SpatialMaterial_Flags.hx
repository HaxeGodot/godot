// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.SpatialMaterial.Flags")
@:csNative
extern enum SpatialMaterial_Flags {
	/**		
		No lighting is used on the object. Color comes directly from `ALBEDO`.
	**/
	Unshaded;

	/**		
		Lighting is calculated per-vertex rather than per-pixel. This can be used to increase the speed of the shader at the cost of quality.
	**/
	UseVertexLighting;

	/**		
		Disables the depth test, so this object is drawn on top of all others. However, objects drawn after it in the draw order may cover it.
	**/
	DisableDepthTest;

	/**		
		Set `ALBEDO` to the per-vertex color specified in the mesh.
	**/
	AlbedoFromVertexColor;

	/**		
		Vertex color is in sRGB space and needs to be converted to linear. Only applies in the GLES3 renderer.
	**/
	SrgbVertexColor;

	/**		
		Uses point size to alter the size of primitive points. Also changes the albedo texture lookup to use `POINT_COORD` instead of `UV`.
	**/
	UsePointSize;

	/**		
		Object is scaled by depth so that it always appears the same size on screen.
	**/
	FixedSize;

	/**		
		Shader will keep the scale set for the mesh. Otherwise the scale is lost when billboarding. Only applies when `godot.SpatialMaterial.paramsBillboardMode` is `godot.SpatialMaterial_BillboardMode.enabled`.
	**/
	BillboardKeepScale;

	/**		
		Use triplanar texture lookup for all texture lookups that would normally use `UV`.
	**/
	Uv1UseTriplanar;

	/**		
		Use triplanar texture lookup for all texture lookups that would normally use `UV2`.
	**/
	Uv2UseTriplanar;

	/**		
		Use world coordinates in the triplanar texture lookup instead of local coordinates.
	**/
	TriplanarUseWorld;

	/**		
		Use `UV2` coordinates to look up from the `godot.SpatialMaterial.aoTexture`.
	**/
	AoOnUv2;

	/**		
		Use `UV2` coordinates to look up from the `godot.SpatialMaterial.emissionTexture`.
	**/
	EmissionOnUv2;

	/**		
		Use alpha scissor. Set by `godot.SpatialMaterial.paramsUseAlphaScissor`.
	**/
	UseAlphaScissor;

	/**		
		Forces the shader to convert albedo from sRGB space to linear space.
	**/
	AlbedoTextureForceSrgb;

	/**		
		Disables receiving shadows from other objects.
	**/
	DontReceiveShadows;

	/**		
		Ensures that normals appear correct, even with non-uniform scaling.
	**/
	EnsureCorrectNormals;

	/**		
		Disables receiving ambient light.
	**/
	DisableAmbientLight;

	/**		
		Enables the shadow to opacity feature.
	**/
	UseShadowToOpacity;

	/**		
		Represents the size of the `godot.SpatialMaterial_Flags` enum.
	**/
	Max;
}
