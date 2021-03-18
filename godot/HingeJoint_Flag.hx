// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.HingeJoint.Flag")
@:csNative
extern enum HingeJoint_Flag {
	/**		
		If `true`, the hinges maximum and minimum rotation, defined by `godot.HingeJoint.angularLimit__lower` and `godot.HingeJoint.angularLimit__upper` has effects.
	**/
	UseLimit;

	/**		
		When activated, a motor turns the hinge.
	**/
	EnableMotor;

	/**		
		Represents the size of the `godot.HingeJoint_Flag` enum.
	**/
	Max;
}
