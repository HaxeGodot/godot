// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.SpatialMaterial.BillboardMode")
@:csNative
extern enum SpatialMaterial_BillboardMode {
	/**		
		Billboard mode is disabled.
	**/
	Disabled;

	/**		
		The object's Z axis will always face the camera.
	**/
	Enabled;

	/**		
		The object's X axis will always face the camera.
	**/
	FixedY;

	/**		
		Used for particle systems when assigned to `godot.Particles` and `godot.CPUParticles` nodes. Enables `particles_anim_*` properties.
		
		The `godot.ParticlesMaterial.animSpeed` or `godot.CPUParticles.animSpeed` should also be set to a positive value for the animation to play.
	**/
	Particles;
}
