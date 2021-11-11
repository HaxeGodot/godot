// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.RoomManager.PVSMode")
@:csNative
extern enum RoomManager_PVSMode {
	/**		
		Use only `godot.Portal`s at runtime to determine visibility. PVS will not be generated at `godot.Room`s conversion, and gameplay notifications cannot be used.
	**/
	Disabled;

	/**		
		Use a combination of PVS and `godot.Portal`s to determine visibility (this is usually fastest and most accurate).
	**/
	Partial;

	/**		
		Use only the PVS (potentially visible set) of `godot.Room`s to determine visibility.
	**/
	Full;
}
