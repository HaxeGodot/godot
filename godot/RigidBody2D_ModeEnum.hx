// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.RigidBody2D.ModeEnum")
@:csNative
extern enum RigidBody2D_ModeEnum {
	/**		
		Rigid mode. The body behaves as a physical object. It collides with other bodies and responds to forces applied to it. This is the default mode.
	**/
	Rigid;

	/**		
		Static mode. The body behaves like a `godot.StaticBody2D` and does not move.
	**/
	Static;

	/**		
		Character mode. Similar to , but the body can not rotate.
	**/
	Character;

	/**		
		Kinematic mode. The body behaves like a `godot.KinematicBody2D`, and must be moved by code.
	**/
	Kinematic;
}
