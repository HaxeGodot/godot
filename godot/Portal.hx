// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
`godot.Portal`s are a special type of `godot.MeshInstance` that allow the portal culling system to 'see' from one room to the next. They often correspond to doors and windows in level geometry. By only allowing `godot.Camera`s to see through portals, this allows the system to cull out all the objects in rooms that cannot be seen through portals. This is a form of occlusion culling, and can greatly increase performance.

There are some limitations to the form of portals:

They must be single sided convex polygons, and usually you would orientate their front faces outward from the `godot.Room` they are placed in. The vertices should be positioned on a single plane (although their positioning does not have to be perfect).

There is no need to place an opposite portal in an adjacent room, links are made two-way automatically.
**/
@:libType
@:csNative
@:native("Godot.Portal")
@:autoBuild(godot.Godot.buildUserClass())
extern class Portal extends godot.Spatial {
	/**		
		The points defining the shape of the `godot.Portal` polygon (which should be convex).
		
		These are defined in 2D, with `0,0` being the origin of the `godot.Portal` node's `godot.Spatial.globalTransform`.
		
		Note: These raw points are sanitized for winding order internally.
	**/
	@:native("Points")
	public var points:cs.NativeArray<godot.Vector2>;

	/**		
		Some objects are so big that they may be present in more than one `godot.Room` ('sprawling'). As we often don't want objects that *just* breach the edges to be assigned to neighbouring rooms, you can assign an extra margin through the `godot.Portal` to allow objects to breach without sprawling.
	**/
	@:native("PortalMargin")
	public var portalMargin:Single;

	/**		
		In most cases you will want to use the default `godot.Portal` margin in your portals (this is set in the `godot.RoomManager`).
		
		If you want to override this default, set this value to `false`, and the local `godot.Portal.portalMargin` will take effect.
	**/
	@:native("UseDefaultMargin")
	public var useDefaultMargin:Bool;

	/**		
		This is a shortcut for setting the linked `godot.Room` in the name of the `godot.Portal` (the name is used during conversion).
	**/
	@:native("LinkedRoom")
	public var linkedRoom:godot.NodePath;

	/**		
		Portals default to being two way - see through in both directions, however you can make them one way, visible from the source room only.
	**/
	@:native("TwoWay")
	public var twoWay:Bool;

	/**		
		Visibility through `godot.Portal`s can be turned on and off at runtime - this is useful for having closable doors.
	**/
	@:native("PortalActive")
	public var portalActive:Bool;

	@:native("new")
	public function new():Void;

	@:native("SetPortalActive")
	public function setPortalActive(pActive:Bool):Void;

	@:native("GetPortalActive")
	public function getPortalActive():Bool;

	@:native("SetTwoWay")
	public function setTwoWay(pTwoWay:Bool):Void;

	@:native("IsTwoWay")
	public function isTwoWay():Bool;

	@:native("SetUseDefaultMargin")
	public function setUseDefaultMargin(pUse:Bool):Void;

	@:native("GetUseDefaultMargin")
	public function getUseDefaultMargin():Bool;

	@:native("SetPortalMargin")
	public function setPortalMargin(pMargin:Single):Void;

	@:native("GetPortalMargin")
	public function getPortalMargin():Single;

	@:native("SetLinkedRoom")
	public function setLinkedRoom(pRoom:godot.NodePath):Void;

	@:native("GetLinkedRoom")
	public function getLinkedRoom():godot.NodePath;

	@:native("SetPoints")
	public function setPoints(points:HaxeArray<godot.Vector2>):Void;

	public extern inline function getPoints():std.Array<godot.Vector2> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetPoints()", this));
	}

	/**		
		Sets individual points. Primarily for use by the editor.
	**/
	@:native("SetPoint")
	public function setPoint(index:Int, position:godot.Vector2):Void;
}
