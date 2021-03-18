// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.PhysicsServer.G6DOFJointAxisFlag")
@:csNative
extern enum PhysicsServer_G6DOFJointAxisFlag {
	/**		
		If `set` there is linear motion possible within the given limits.
	**/
	LinearLimit;

	/**		
		If `set` there is rotational motion possible.
	**/
	AngularLimit;

	/**		
		If `set` there is a rotational motor across these axes.
	**/
	Motor;

	/**		
		If `set` there is a linear motor on this axis that targets a specific velocity.
	**/
	LinearMotor;
}
