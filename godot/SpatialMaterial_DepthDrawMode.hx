// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.SpatialMaterial.DepthDrawMode")
@:csNative
extern enum SpatialMaterial_DepthDrawMode {
	/**		
		Default depth draw mode. Depth is drawn only for opaque objects.
	**/
	OpaqueOnly;

	/**		
		Depth draw is calculated for both opaque and transparent objects.
	**/
	Always;

	/**		
		No depth draw.
	**/
	Disabled;

	/**		
		For transparent objects, an opaque pass is made first with the opaque parts, then transparency is drawn.
	**/
	AlphaOpaquePrepass;
}
