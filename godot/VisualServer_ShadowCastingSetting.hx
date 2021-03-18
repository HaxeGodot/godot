// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.VisualServer.ShadowCastingSetting")
@:csNative
extern enum VisualServer_ShadowCastingSetting {
	/**		
		Disable shadows from this instance.
	**/
	Off;

	/**		
		Cast shadows from this instance.
	**/
	On;

	/**		
		Disable backface culling when rendering the shadow of the object. This is slightly slower but may result in more correct shadows.
	**/
	DoubleSided;

	/**		
		Only render the shadows from the object. The object itself will not be drawn.
	**/
	ShadowsOnly;
}
