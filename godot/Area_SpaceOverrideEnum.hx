// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.Area.SpaceOverrideEnum")
@:csNative
extern enum Area_SpaceOverrideEnum {
	/**		
		This area does not affect gravity/damping.
	**/
	Disabled;

	/**		
		This area adds its gravity/damping values to whatever has been calculated so far (in `godot.Area.priority` order).
	**/
	Combine;

	/**		
		This area adds its gravity/damping values to whatever has been calculated so far (in `godot.Area.priority` order), ignoring any lower priority areas.
	**/
	CombineReplace;

	/**		
		This area replaces any gravity/damping, even the defaults, ignoring any lower priority areas.
	**/
	Replace;

	/**		
		This area replaces any gravity/damping calculated so far (in `godot.Area.priority` order), but keeps calculating the rest of the areas.
	**/
	ReplaceCombine;
}
