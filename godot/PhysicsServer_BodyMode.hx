// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.PhysicsServer.BodyMode")
@:csNative
extern enum PhysicsServer_BodyMode {
	/**		
		Constant for static bodies.
	**/
	Static;

	/**		
		Constant for kinematic bodies.
	**/
	Kinematic;

	/**		
		Constant for rigid bodies.
	**/
	Rigid;

	/**		
		Constant for rigid bodies in character mode. In this mode, a body can not rotate, and only its linear velocity is affected by physics.
	**/
	Character;
}
