// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Class that has everything pertaining to a 2D world. A physics space, a visual scenario and a sound space. 2D nodes register their resources into the current 2D world.
**/
@:libType
@:csNative
@:native("Godot.World2D")
@:autoBuild(godot.Godot.buildUserClass())
extern class World2D extends godot.Resource {
	/**		
		Direct access to the world's physics 2D space state. Used for querying current and potential collisions. When using multi-threaded physics, access is limited to `_physics_process(delta)` in the main thread.
	**/
	@:native("DirectSpaceState") @:readOnly
	public var directSpaceState(default, never):godot.Physics2DDirectSpaceState;

	/**		
		The `godot.RID` of this world's physics space resource. Used by the `godot.Physics2DServer` for 2D physics, treating it as both a space and an area.
	**/
	@:native("Space") @:readOnly
	public var space(default, never):godot.RID;

	/**		
		The `godot.RID` of this world's canvas resource. Used by the `godot.VisualServer` for 2D drawing.
	**/
	@:native("Canvas") @:readOnly
	public var canvas(default, never):godot.RID;

	@:native("new")
	public function new():Void;

	@:native("GetCanvas")
	public function getCanvas():godot.RID;

	@:native("GetSpace")
	public function getSpace():godot.RID;

	@:native("GetDirectSpaceState")
	public function getDirectSpaceState():godot.Physics2DDirectSpaceState;
}
