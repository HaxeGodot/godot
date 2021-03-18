// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.Physics2DServer.DampedStringParam")
@:csNative
extern enum Physics2DServer_DampedStringParam {
	/**		
		Sets the resting length of the spring joint. The joint will always try to go to back this length when pulled apart.
	**/
	RestLength;

	/**		
		Sets the stiffness of the spring joint. The joint applies a force equal to the stiffness times the distance from its resting length.
	**/
	Stiffness;

	/**		
		Sets the damping ratio of the spring joint. A value of 0 indicates an undamped spring, while 1 causes the system to reach equilibrium as fast as possible (critical damping).
	**/
	Damping;
}
