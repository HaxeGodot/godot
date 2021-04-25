// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
The `godot.ARVRAnchor` point is a spatial node that maps a real world location identified by the AR platform to a position within the game world. For example, as long as plane detection in ARKit is on, ARKit will identify and update the position of planes (tables, floors, etc) and create anchors for them.

This node is mapped to one of the anchors through its unique ID. When you receive a signal that a new anchor is available, you should add this node to your scene for that anchor. You can predefine nodes and set the ID; the nodes will simply remain on 0,0,0 until a plane is recognized.

Keep in mind that, as long as plane detection is enabled, the size, placing and orientation of an anchor will be updated as the detection logic learns more about the real world out there especially if only part of the surface is in view.
**/
@:libType
@:csNative
@:native("Godot.ARVRAnchor")
@:autoBuild(godot.Godot.buildUserClass())
extern class ARVRAnchor extends godot.Spatial {
	/**
		`mesh_updated` signal.
		
		Emitted when the mesh associated with the anchor changes or when one becomes available. This is especially important for topology that is constantly being `mesh_updated`.
	**/
	public var onMeshUpdated(get, never):Signal<(mesh:Mesh)->Void>;
	@:dox(hide) inline function get_onMeshUpdated():Signal<(mesh:Mesh)->Void> {
		return new Signal(this, "mesh_updated", Signal.SignalHandlerMeshVoid.connectSignal, Signal.SignalHandlerMeshVoid.disconnectSignal, Signal.SignalHandlerMeshVoid.isSignalConnected);
	}

	/**		
		The anchor's ID. You can set this before the anchor itself exists. The first anchor gets an ID of `1`, the second an ID of `2`, etc. When anchors get removed, the engine can then assign the corresponding ID to new anchors. The most common situation where anchors "disappear" is when the AR server identifies that two anchors represent different parts of the same plane and merges them.
	**/
	@:native("AnchorId")
	public var anchorId:Int;

	@:native("new")
	public function new():Void;

	@:native("SetAnchorId")
	public function setAnchorId(anchorId:Int):Void;

	@:native("GetAnchorId")
	public function getAnchorId():Int;

	/**		
		Returns the name given to this anchor.
	**/
	@:native("GetAnchorName")
	public function getAnchorName():std.String;

	/**		
		Returns `true` if the anchor is being tracked and `false` if no anchor with this ID is currently known.
	**/
	@:native("GetIsActive")
	public function getIsActive():Bool;

	/**		
		Returns the estimated size of the plane that was detected. Say when the anchor relates to a table in the real world, this is the estimated size of the surface of that table.
	**/
	@:native("GetSize")
	public function getSize():godot.Vector3;

	/**		
		Returns a plane aligned with our anchor; handy for intersection testing.
	**/
	@:native("GetPlane")
	public function getPlane():godot.Plane;

	/**		
		If provided by the `godot.ARVRInterface`, this returns a mesh object for the anchor. For an anchor, this can be a shape related to the object being tracked or it can be a mesh that provides topology related to the anchor and can be used to create shadows/reflections on surfaces or for generating collision shapes.
	**/
	@:native("GetMesh")
	public function getMesh():godot.Mesh;
}
