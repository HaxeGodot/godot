// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.Generic6DOFJoint.Param")
@:csNative
extern enum Generic6DOFJoint_Param {
	/**		
		The minimum difference between the pivot points' axes.
	**/
	LinearLowerLimit;

	/**		
		The maximum difference between the pivot points' axes.
	**/
	LinearUpperLimit;

	/**		
		A factor applied to the movement across the axes. The lower, the slower the movement.
	**/
	LinearLimitSoftness;

	/**		
		The amount of restitution on the axes' movement. The lower, the more momentum gets lost.
	**/
	LinearRestitution;

	/**		
		The amount of damping that happens at the linear motion across the axes.
	**/
	LinearDamping;

	/**		
		The velocity the linear motor will try to reach.
	**/
	LinearMotorTargetVelocity;

	/**		
		The maximum force the linear motor will apply while trying to reach the velocity target.
	**/
	LinearMotorForceLimit;

	LinearSpringStiffness;

	LinearSpringDamping;

	LinearSpringEquilibriumPoint;

	/**		
		The minimum rotation in negative direction to break loose and rotate around the axes.
	**/
	AngularLowerLimit;

	/**		
		The minimum rotation in positive direction to break loose and rotate around the axes.
	**/
	AngularUpperLimit;

	/**		
		The speed of all rotations across the axes.
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
		When rotating across the axes, this error tolerance factor defines how much the correction gets slowed down. The lower, the slower.
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

	AngularSpringStiffness;

	AngularSpringDamping;

	AngularSpringEquilibriumPoint;

	/**		
		Represents the size of the `godot.Generic6DOFJoint_Param` enum.
	**/
	Max;
}
