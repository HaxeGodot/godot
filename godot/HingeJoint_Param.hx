// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.HingeJoint.Param")
@:csNative
extern enum HingeJoint_Param {
	/**		
		The speed with which the two bodies get pulled together when they move in different directions.
	**/
	Bias;

	/**		
		The maximum rotation. Only active if `godot.HingeJoint.angularLimit__enable` is `true`.
	**/
	LimitUpper;

	/**		
		The minimum rotation. Only active if `godot.HingeJoint.angularLimit__enable` is `true`.
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

	/**		
		Represents the size of the `godot.HingeJoint_Param` enum.
	**/
	Max;
}
