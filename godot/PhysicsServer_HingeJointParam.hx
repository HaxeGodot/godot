// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.PhysicsServer.HingeJointParam")
@:csNative
extern enum PhysicsServer_HingeJointParam {
	/**		
		The speed with which the two bodies get pulled together when they move in different directions.
	**/
	Bias;

	/**		
		The maximum rotation across the Hinge.
	**/
	LimitUpper;

	/**		
		The minimum rotation across the Hinge.
	**/
	LimitLower;

	/**		
		The speed with which the rotation across the axis perpendicular to the hinge gets corrected.
	**/
	LimitBias;

	LimitSoftness;

	/**		
		The lower this value, the more the rotation gets slowed down.
	**/
	LimitRelaxation;

	/**		
		Target speed for the motor.
	**/
	MotorTargetVelocity;

	/**		
		Maximum acceleration for the motor.
	**/
	MotorMaxImpulse;
}
