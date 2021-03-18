// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.Physics2DServer.BodyState")
@:csNative
extern enum Physics2DServer_BodyState {
	/**		
		Constant to set/get the current transform matrix of the body.
	**/
	Transform;

	/**		
		Constant to set/get the current linear velocity of the body.
	**/
	LinearVelocity;

	/**		
		Constant to set/get the current angular velocity of the body.
	**/
	AngularVelocity;

	/**		
		Constant to sleep/wake up a body, or to get whether it is sleeping.
	**/
	Sleeping;

	/**		
		Constant to set/get whether the body can sleep.
	**/
	CanSleep;
}
