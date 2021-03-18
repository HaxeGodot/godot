// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.SpatialMaterial.DiffuseMode")
@:csNative
extern enum SpatialMaterial_DiffuseMode {
	/**		
		Default diffuse scattering algorithm.
	**/
	Burley;

	/**		
		Diffuse scattering ignores roughness.
	**/
	Lambert;

	/**		
		Extends Lambert to cover more than 90 degrees when roughness increases.
	**/
	LambertWrap;

	/**		
		Attempts to use roughness to emulate microsurfacing.
	**/
	OrenNayar;

	/**		
		Uses a hard cut for lighting, with smoothing affected by roughness.
	**/
	Toon;
}
