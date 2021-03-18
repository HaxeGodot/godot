// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.ParticlesMaterial.EmissionShapeEnum")
@:csNative
extern enum ParticlesMaterial_EmissionShapeEnum {
	/**		
		All particles will be emitted from a single point.
	**/
	Point;

	/**		
		Particles will be emitted in the volume of a sphere.
	**/
	Sphere;

	/**		
		Particles will be emitted in the volume of a box.
	**/
	Box;

	/**		
		Particles will be emitted at a position determined by sampling a random point on the `godot.ParticlesMaterial.emissionPointTexture`. Particle color will be modulated by `godot.ParticlesMaterial.emissionColorTexture`.
	**/
	Points;

	/**		
		Particles will be emitted at a position determined by sampling a random point on the `godot.ParticlesMaterial.emissionPointTexture`. Particle velocity and rotation will be set based on `godot.ParticlesMaterial.emissionNormalTexture`. Particle color will be modulated by `godot.ParticlesMaterial.emissionColorTexture`.
	**/
	DirectedPoints;

	/**		
		Represents the size of the `godot.ParticlesMaterial_EmissionShapeEnum` enum.
	**/
	Max;
}
