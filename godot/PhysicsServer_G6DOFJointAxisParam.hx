// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.PhysicsServer.G6DOFJointAxisParam")
@:csNative
extern enum PhysicsServer_G6DOFJointAxisParam {
	/**		
		The minimum difference between the pivot points' axes.
	**/
	LinearLowerLimit;

	/**		
		The maximum difference between the pivot points' axes.
	**/
	LinearUpperLimit;

	/**		
		A factor that gets applied to the movement across the axes. The lower, the slower the movement.
	**/
	LinearLimitSoftness;

	/**		
		The amount of restitution on the axes movement. The lower, the more velocity-energy gets lost.
	**/
	LinearRestitution;

	/**		
		The amount of damping that happens at the linear motion across the axes.
	**/
	LinearDamping;

	/**		
		The velocity that the joint's linear motor will attempt to reach.
	**/
	LinearMotorTargetVelocity;

	/**		
		The maximum force that the linear motor can apply while trying to reach the target velocity.
	**/
	LinearMotorForceLimit;

	/**		
		The minimum rotation in negative direction to break loose and rotate around the axes.
	**/
	AngularLowerLimit;

	/**		
		The minimum rotation in positive direction to break loose and rotate around the axes.
	**/
	AngularUpperLimit;

	/**		
		A factor that gets multiplied onto all rotations across the axes.
	**/
	AngularLimitSoftness;

	/**		
		The amount of rotational damping across the axes. The lower, the more dampening occurs.
	**/
	AngularDamping;

	/**		
		The amount of rotational restitution across the axes. The lower, the more restitution occurs.
	**/
	AngularRestitution;

	/**		
		The maximum amount of force that can occur, when rotating around the axes.
	**/
	AngularForceLimit;

	/**		
		When correcting the crossing of limits in rotation across the axes, this error tolerance factor defines how much the correction gets slowed down. The lower, the slower.
	**/
	AngularErp;

	/**		
		Target speed for the motor at the axes.
	**/
	AngularMotorTargetVelocity;

	/**		
		Maximum acceleration for the motor at the axes.
	**/
	AngularMotorForceLimit;
}
