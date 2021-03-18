// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.SpatialMaterial.SpecularMode")
@:csNative
extern enum SpatialMaterial_SpecularMode {
	/**		
		Default specular blob.
	**/
	SchlickGgx;

	/**		
		Older specular algorithm, included for compatibility.
	**/
	Blinn;

	/**		
		Older specular algorithm, included for compatibility.
	**/
	Phong;

	/**		
		Toon blob which changes size based on roughness.
	**/
	Toon;

	/**		
		No specular blob.
	**/
	Disabled;
}
