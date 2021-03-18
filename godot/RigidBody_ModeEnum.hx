// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.RigidBody.ModeEnum")
@:csNative
extern enum RigidBody_ModeEnum {
	/**		
		Rigid body mode. This is the "natural" state of a rigid body. It is affected by forces, and can move, rotate, and be affected by user code.
	**/
	Rigid;

	/**		
		Static mode. The body behaves like a `godot.StaticBody`, and can only move by user code.
	**/
	Static;

	/**		
		Character body mode. This behaves like a rigid body, but can not rotate.
	**/
	Character;

	/**		
		Kinematic body mode. The body behaves like a `godot.KinematicBody`, and can only move by user code.
	**/
	Kinematic;
}
