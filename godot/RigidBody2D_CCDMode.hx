// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.RigidBody2D.CCDMode")
@:csNative
extern enum RigidBody2D_CCDMode {
	/**		
		Continuous collision detection disabled. This is the fastest way to detect body collisions, but can miss small, fast-moving objects.
	**/
	Disabled;

	/**		
		Continuous collision detection enabled using raycasting. This is faster than shapecasting but less precise.
	**/
	CastRay;

	/**		
		Continuous collision detection enabled using shapecasting. This is the slowest CCD method and the most precise.
	**/
	CastShape;
}
