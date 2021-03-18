// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.Environment.GlowBlendModeEnum")
@:csNative
extern enum Environment_GlowBlendModeEnum {
	/**		
		Additive glow blending mode. Mostly used for particles, glows (bloom), lens flare, bright sources.
	**/
	Additive;

	/**		
		Screen glow blending mode. Increases brightness, used frequently with bloom.
	**/
	Screen;

	/**		
		Soft light glow blending mode. Modifies contrast, exposes shadows and highlights (vivid bloom).
	**/
	Softlight;

	/**		
		Replace glow blending mode. Replaces all pixels' color by the glow value. This can be used to simulate a full-screen blur effect by tweaking the glow parameters to match the original image's brightness.
	**/
	Replace;
}
