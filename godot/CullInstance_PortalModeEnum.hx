// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.CullInstance.PortalModeEnum")
@:csNative
extern enum CullInstance_PortalModeEnum {
	/**		
		Use for instances within `godot.Room`s that will not move - e.g. walls, floors.
		
		Note: If you attempt to delete a `PORTAL_MODE_STATIC` instance while the room graph is loaded (converted), it will unload the room graph and deactivate portal culling. This is because the room graph data has been invalidated. You will need to reconvert the rooms using the `godot.RoomManager` to activate the system again.
	**/
	Static;

	/**		
		Use for instances within rooms that will move but not change room - e.g. moving platforms.
		
		Note: If you attempt to delete a `PORTAL_MODE_DYNAMIC` instance while the room graph is loaded (converted), it will unload the room graph and deactivate portal culling. This is because the room graph data has been invalidated. You will need to reconvert the rooms using the `godot.RoomManager` to activate the system again.
	**/
	Dynamic;

	/**		
		Use for instances that will move between `godot.Room`s - e.g. players.
	**/
	Roaming;

	/**		
		Use for instances that will be frustum culled only - e.g. first person weapon, debug.
	**/
	Global;

	/**		
		Use for instances that will not be shown at all - e.g. manual room bounds (specified by prefix 'Bound_').
	**/
	Ignore;
}
