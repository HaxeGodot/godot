// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.Particles.DrawOrderEnum")
@:csNative
extern enum Particles_DrawOrderEnum {
	/**		
		Particles are drawn in the order emitted.
	**/
	Index;

	/**		
		Particles are drawn in order of remaining lifetime.
	**/
	Lifetime;

	/**		
		Particles are drawn in order of depth.
	**/
	ViewDepth;
}
