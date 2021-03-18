// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.PhysicsServer.AreaSpaceOverrideMode")
@:csNative
extern enum PhysicsServer_AreaSpaceOverrideMode {
	/**		
		This area does not affect gravity/damp. These are generally areas that exist only to detect collisions, and objects entering or exiting them.
	**/
	Disabled;

	/**		
		This area adds its gravity/damp values to whatever has been calculated so far. This way, many overlapping areas can combine their physics to make interesting effects.
	**/
	Combine;

	/**		
		This area adds its gravity/damp values to whatever has been calculated so far. Then stops taking into account the rest of the areas, even the default one.
	**/
	CombineReplace;

	/**		
		This area replaces any gravity/damp, even the default one, and stops taking into account the rest of the areas.
	**/
	Replace;

	/**		
		This area replaces any gravity/damp calculated so far, but keeps calculating the rest of the areas, down to the default one.
	**/
	ReplaceCombine;
}
