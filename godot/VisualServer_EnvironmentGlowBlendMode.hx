// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.VisualServer.EnvironmentGlowBlendMode")
@:csNative
extern enum VisualServer_EnvironmentGlowBlendMode {
	/**		
		Add the effect of the glow on top of the scene.
	**/
	Additive;

	/**		
		Blends the glow effect with the screen. Does not get as bright as additive.
	**/
	Screen;

	/**		
		Produces a subtle color disturbance around objects.
	**/
	Softlight;

	/**		
		Shows the glow effect by itself without the underlying scene.
	**/
	Replace;
}
