// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.PinJoint.Param")
@:csNative
extern enum PinJoint_Param {
	/**		
		The force with which the pinned objects stay in positional relation to each other. The higher, the stronger.
	**/
	Bias;

	/**		
		The force with which the pinned objects stay in velocity relation to each other. The higher, the stronger.
	**/
	Damping;

	/**		
		If above 0, this value is the maximum value for an impulse that this Joint produces.
	**/
	ImpulseClamp;
}
