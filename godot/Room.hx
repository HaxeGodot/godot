// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
The `godot.Portal` culling system requires levels to be built using objects grouped together by location in areas called `godot.Room`s. In many cases these will correspond to actual rooms in buildings, but not necessarily (a canyon area may be treated as a room).

Any `godot.VisualInstance` that is a child or grandchild of a `godot.Room` will be assigned to that room, if the `portal_mode` of that `godot.VisualInstance` is set to `STATIC` (does not move) or `DYNAMIC` (moves only within the room).

Internally the room boundary must form a convex hull, and by default this is determined automatically by the geometry of the objects you place within the room.

You can alternatively precisely specify a manual bound. If you place a `godot.MeshInstance` with a name prefixed by `Bound_`, it will turn off the bound generation from geometry, and instead use the vertices of this MeshInstance to directly calculate a convex hull during the conversion stage (see `godot.RoomManager`).

In order to see from one room into an adjacent room, `godot.Portal`s must be placed over non-occluded openings between rooms. These will often be placed over doors and windows.
**/
@:libType
@:csNative
@:native("Godot.Room")
@:autoBuild(godot.Godot.buildUserClass())
extern class Room extends godot.Spatial {
	/**		
		If `points` are set, the `godot.Room` bounding convex hull will be built from these points. If no points are set, the room bound will either be derived from a manual bound (`godot.MeshInstance` with name prefix `Bound_`), or from the geometry within the room.
		
		Note that you can use the `Generate Points` editor button to get started. This will use either the geometry or manual bound to generate the room hull, and save the resulting points, allowing you to edit them to further refine the bound.
	**/
	@:native("Points")
	public var points:cs.NativeArray<godot.Vector3>;

	/**		
		The `simplify` value determines to what degree room hulls (bounds) are simplified, by removing similar planes. A value of 0 gives no simplification, 1 gives maximum simplification.
	**/
	@:native("RoomSimplify")
	public var roomSimplify:Single;

	/**		
		The room hull simplification can either use the default value set in the `godot.RoomManager`, or override this and use the per room setting.
	**/
	@:native("UseDefaultSimplify")
	public var useDefaultSimplify:Bool;

	@:native("new")
	public function new():Void;

	@:native("SetUseDefaultSimplify")
	public function setUseDefaultSimplify(pUse:Bool):Void;

	@:native("GetUseDefaultSimplify")
	public function getUseDefaultSimplify():Bool;

	@:native("SetRoomSimplify")
	public function setRoomSimplify(pValue:Single):Void;

	@:native("GetRoomSimplify")
	public function getRoomSimplify():Single;

	@:native("SetPoints")
	public function setPoints(points:HaxeArray<godot.Vector3>):Void;

	public extern inline function getPoints():std.Array<godot.Vector3> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetPoints()", this));
	}

	/**		
		Sets individual points. Primarily for use by the editor.
	**/
	@:native("SetPoint")
	public function setPoint(index:Int, position:godot.Vector3):Void;
}
