// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.SpatialMaterial.BlendMode")
@:csNative
extern enum SpatialMaterial_BlendMode {
	/**		
		Default blend mode. The color of the object is blended over the background based on the object's alpha value.
	**/
	Mix;

	/**		
		The color of the object is added to the background.
	**/
	Add;

	/**		
		The color of the object is subtracted from the background.
	**/
	Sub;

	/**		
		The color of the object is multiplied by the background.
	**/
	Mul;
}
