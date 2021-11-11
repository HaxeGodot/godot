// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.CPUParticles.EmissionShapeEnum")
@:csNative
extern enum CPUParticles_EmissionShapeEnum {
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
		Particles will be emitted at a position chosen randomly among `godot.CPUParticles.emissionPoints`. Particle color will be modulated by `godot.CPUParticles.emissionColors`.
	**/
	Points;

	/**		
		Particles will be emitted at a position chosen randomly among `godot.CPUParticles.emissionPoints`. Particle velocity and rotation will be set based on `godot.CPUParticles.emissionNormals`. Particle color will be modulated by `godot.CPUParticles.emissionColors`.
	**/
	DirectedPoints;

	/**		
		Particles will be emitted in a ring or cylinder.
	**/
	Ring;

	/**		
		Represents the size of the `godot.CPUParticles_EmissionShapeEnum` enum.
	**/
	Max;
}
