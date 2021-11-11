// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Provides common functionality to nodes that can be culled by the `godot.Portal` system.

`Static` and `Dynamic` objects are the most efficiently managed objects in the system, but there are some caveats. They are expected to be present initially when `godot.Room`s are converted using the `godot.RoomManager` `rooms_convert` function, and their lifetime should be the same as the game level (i.e. present until you call `rooms_clear` on the `godot.RoomManager`. Although you shouldn't create / delete these objects during gameplay, you can manage their visibility with the standard `hide` and `show` commands.

`Roaming` objects on the other hand, require extra processing to keep track of which `godot.Room` they are within. This enables them to be culled effectively, wherever they are.

`Global` objects are not culled by the portal system, and use view frustum culling only.

Objects that are not `Static` or `Dynamic` can be freely created and deleted during the lifetime of the game level.
**/
@:libType
@:csNative
@:native("Godot.CullInstance")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class CullInstance extends godot.Spatial {
	/**		
		When set to `0`, `godot.CullInstance`s will be autoplaced in the `godot.Room` with the highest priority.
		
		When set to a value other than `0`, the system will attempt to autoplace in a `godot.Room` with the `autoplace_priority`, if it is present.
		
		This can be used to control autoplacement of building exteriors in an outer `godot.RoomGroup`.
	**/
	@:native("AutoplacePriority")
	public var autoplacePriority:Int;

	/**		
		When a manual bound has not been explicitly specified for a `godot.Room`, the convex hull bound will be estimated from the geometry of the objects within the room. This setting determines whether the geometry of an object is included in this estimate of the room bound.
		
		Note: This setting is only relevant when the object is set to `PORTAL_MODE_STATIC` or `PORTAL_MODE_DYNAMIC`, and for `godot.Portal`s.
	**/
	@:native("IncludeInBound")
	public var includeInBound:Bool;

	/**		
		When using `godot.Room`s and `godot.Portal`s, this specifies how the `godot.CullInstance` is processed in the system.
	**/
	@:native("PortalMode")
	public var portalMode:godot.CullInstance_PortalModeEnum;

	@:native("SetPortalMode")
	public function setPortalMode(mode:godot.CullInstance_PortalModeEnum):Void;

	@:native("GetPortalMode")
	public function getPortalMode():godot.CullInstance_PortalModeEnum;

	@:native("SetIncludeInBound")
	public function setIncludeInBound(arg0:Bool):Void;

	@:native("GetIncludeInBound")
	public function getIncludeInBound():Bool;

	@:native("SetPortalAutoplacePriority")
	public function setPortalAutoplacePriority(priority:Int):Void;

	@:native("GetPortalAutoplacePriority")
	public function getPortalAutoplacePriority():Int;
}
