// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Although `godot.Room` behaviour can be specified individually, sometimes it is faster and more convenient to write functionality for a group of rooms.

`godot.RoomGroup`s should be placed as children of the room list (the parent `godot.Node` of your `godot.Room`s), and `godot.Room`s should be placed in turn as children of a `godot.RoomGroup` in order to assign them to the RoomGroup.

A `godot.RoomGroup` can for example be used to specify `godot.Room`s that are outside, and switch on or off a directional light, sky, or rain effect as the player enters / exits the area.

`godot.RoomGroup`s receive gameplay callbacks when the `gameplay_monitor` is switched on, as `signal`s or `notification`s as they enter and exit the gameplay area (see `godot.RoomManager` for details).
**/
@:libType
@:csNative
@:native("Godot.RoomGroup")
@:autoBuild(godot.Godot.buildUserClass())
extern class RoomGroup extends godot.Spatial {
	/**		
		This priority will be applied to `godot.Room`s within the group. The `godot.Room` priority allows the use of internal rooms, rooms within another room or rooms.
		
		When the `godot.Camera` is within more than one room (regular and internal), the higher priority room will take precedence. So with for example, a house inside a terrain 'room', you would make the house higher priority, so that when the camera is within the house, the house is used as the source room, but outside the house, the terrain room would be used instead.
	**/
	@:native("RoomgroupPriority")
	public var roomgroupPriority:Int;

	@:native("new")
	public function new():Void;

	@:native("SetRoomgroupPriority")
	public function setRoomgroupPriority(pPriority:Int):Void;

	@:native("GetRoomgroupPriority")
	public function getRoomgroupPriority():Int;
}
