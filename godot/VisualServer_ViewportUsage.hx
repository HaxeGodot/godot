// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.VisualServer.ViewportUsage")
@:csNative
extern enum VisualServer_ViewportUsage {
	/**		
		The Viewport does not render 3D but samples.
	**/
	Usage2d;

	/**		
		The Viewport does not render 3D and does not sample.
	**/
	Usage2dNoSampling;

	/**		
		The Viewport renders 3D with effects.
	**/
	Usage3d;

	/**		
		The Viewport renders 3D but without effects.
	**/
	Usage3dNoEffects;
}
