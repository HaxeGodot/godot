// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.Physics2DServer.SpaceParameter")
@:csNative
extern enum Physics2DServer_SpaceParameter {
	/**		
		Constant to set/get the maximum distance a pair of bodies has to move before their collision status has to be recalculated.
	**/
	ContactRecycleRadius;

	/**		
		Constant to set/get the maximum distance a shape can be from another before they are considered separated.
	**/
	ContactMaxSeparation;

	/**		
		Constant to set/get the maximum distance a shape can penetrate another shape before it is considered a collision.
	**/
	BodyMaxAllowedPenetration;

	/**		
		Constant to set/get the threshold linear velocity of activity. A body marked as potentially inactive for both linear and angular velocity will be put to sleep after the time given.
	**/
	BodyLinearVelocitySleepThreshold;

	/**		
		Constant to set/get the threshold angular velocity of activity. A body marked as potentially inactive for both linear and angular velocity will be put to sleep after the time given.
	**/
	BodyAngularVelocitySleepThreshold;

	/**		
		Constant to set/get the maximum time of activity. A body marked as potentially inactive for both linear and angular velocity will be put to sleep after this time.
	**/
	BodyTimeToSleep;

	/**		
		Constant to set/get the default solver bias for all physics constraints. A solver bias is a factor controlling how much two objects "rebound", after violating a constraint, to avoid leaving them in that state because of numerical imprecision.
	**/
	ConstraintDefaultBias;
}
