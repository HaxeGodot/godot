// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.VisualServer.LightDirectionalShadowDepthRangeMode")
@:csNative
extern enum VisualServer_LightDirectionalShadowDepthRangeMode {
	/**		
		Keeps shadows stable as camera moves but has lower effective resolution.
	**/
	Stable;

	/**		
		Optimize use of shadow maps, increasing the effective resolution. But may result in shadows moving or flickering slightly.
	**/
	Optimized;
}
