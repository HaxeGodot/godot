// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.CanvasItemMaterial.BlendModeEnum")
@:csNative
extern enum CanvasItemMaterial_BlendModeEnum {
	/**		
		Mix blending mode. Colors are assumed to be independent of the alpha (opacity) value.
	**/
	Mix;

	/**		
		Additive blending mode.
	**/
	Add;

	/**		
		Subtractive blending mode.
	**/
	Sub;

	/**		
		Multiplicative blending mode.
	**/
	Mul;

	/**		
		Mix blending mode. Colors are assumed to be premultiplied by the alpha (opacity) value.
	**/
	PremultAlpha;
}
