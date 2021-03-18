// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.CanvasItem.BlendMode")
@:csNative
extern enum CanvasItem_BlendMode {
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

	/**		
		Disables blending mode. Colors including alpha are written as-is. Only applicable for render targets with a transparent background. No lighting will be applied.
	**/
	Disabled;
}
