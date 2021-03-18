// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.ConeTwistJoint.Param")
@:csNative
extern enum ConeTwistJoint_Param {
	/**		
		Swing is rotation from side to side, around the axis perpendicular to the twist axis.
		
		The swing span defines, how much rotation will not get corrected along the swing axis.
		
		Could be defined as looseness in the `godot.ConeTwistJoint`.
		
		If below 0.05, this behavior is locked.
	**/
	SwingSpan;

	/**		
		Twist is the rotation around the twist axis, this value defined how far the joint can twist.
		
		Twist is locked if below 0.05.
	**/
	TwistSpan;

	/**		
		The speed with which the swing or twist will take place.
		
		The higher, the faster.
	**/
	Bias;

	/**		
		The ease with which the joint starts to twist. If it's too low, it takes more force to start twisting the joint.
	**/
	Softness;

	/**		
		Defines, how fast the swing- and twist-speed-difference on both sides gets synced.
	**/
	Relaxation;

	/**		
		Represents the size of the `godot.ConeTwistJoint_Param` enum.
	**/
	Max;
}
