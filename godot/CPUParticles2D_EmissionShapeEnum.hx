// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.CPUParticles2D.EmissionShapeEnum")
@:csNative
extern enum CPUParticles2D_EmissionShapeEnum {
	/**		
		All particles will be emitted from a single point.
	**/
	Point;

	/**		
		Particles will be emitted on the surface of a sphere flattened to two dimensions.
	**/
	Sphere;

	/**		
		Particles will be emitted in the area of a rectangle.
	**/
	Rectangle;

	/**		
		Particles will be emitted at a position chosen randomly among `godot.CPUParticles2D.emissionPoints`. Particle color will be modulated by `godot.CPUParticles2D.emissionColors`.
	**/
	Points;

	/**		
		Particles will be emitted at a position chosen randomly among `godot.CPUParticles2D.emissionPoints`. Particle velocity and rotation will be set based on `godot.CPUParticles2D.emissionNormals`. Particle color will be modulated by `godot.CPUParticles2D.emissionColors`.
	**/
	DirectedPoints;

	/**		
		Represents the size of the `godot.CPUParticles2D_EmissionShapeEnum` enum.
	**/
	Max;
}
