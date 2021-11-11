// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.OmniLight.ShadowMode")
@:csNative
extern enum OmniLight_ShadowMode {
	/**		
		Shadows are rendered to a dual-paraboloid texture. Faster than `godot.OmniLight_ShadowMode.cube`, but lower-quality.
	**/
	DualParaboloid;

	/**		
		Shadows are rendered to a cubemap. Slower than `godot.OmniLight_ShadowMode.dualParaboloid`, but higher-quality.
	**/
	Cube;
}
