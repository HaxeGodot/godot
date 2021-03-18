// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.PhysicsServer.PinJointParam")
@:csNative
extern enum PhysicsServer_PinJointParam {
	/**		
		The strength with which the pinned objects try to stay in positional relation to each other.
		
		The higher, the stronger.
	**/
	Bias;

	/**		
		The strength with which the pinned objects try to stay in velocity relation to each other.
		
		The higher, the stronger.
	**/
	Damping;

	/**		
		If above 0, this value is the maximum value for an impulse that this Joint puts on its ends.
	**/
	ImpulseClamp;
}
