// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.Generic6DOFJoint.Flag")
@:csNative
extern enum Generic6DOFJoint_Flag {
	/**		
		If enabled, linear motion is possible within the given limits.
	**/
	EnableLinearLimit;

	/**		
		If enabled, rotational motion is possible within the given limits.
	**/
	EnableAngularLimit;

	EnableAngularSpring;

	EnableLinearSpring;

	/**		
		If enabled, there is a rotational motor across these axes.
	**/
	EnableMotor;

	/**		
		If enabled, there is a linear motor across these axes.
	**/
	EnableLinearMotor;

	/**		
		Represents the size of the `godot.Generic6DOFJoint_Flag` enum.
	**/
	Max;
}
