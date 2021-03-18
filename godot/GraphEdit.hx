// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
GraphEdit manages the showing of GraphNodes it contains, as well as connections and disconnections between them. Signals are sent for each of these two events. Disconnection between GraphNode slots is disabled by default.

It is greatly advised to enable low-processor usage mode (see `godot.OS.lowProcessorUsageMode`) when using GraphEdits.
**/
@:libType
@:csNative
@:native("Godot.GraphEdit")
@:autoBuild(godot.Godot.buildUserClass())
extern class GraphEdit extends godot.Control {
	/**		
		The current zoom value.
	**/
	@:native("Zoom")
	public var zoom:Single;

	/**		
		If `true`, enables snapping.
	**/
	@:native("UseSnap")
	public var useSnap:Bool;

	/**		
		The snapping distance in pixels.
	**/
	@:native("SnapDistance")
	public var snapDistance:Int;

	/**		
		The scroll offset.
	**/
	@:native("ScrollOffset")
	public var scrollOffset:godot.Vector2;

	/**		
		If `true`, enables disconnection of existing connections in the GraphEdit by dragging the right end.
	**/
	@:native("RightDisconnects")
	public var rightDisconnects:Bool;

	@:native("new")
	public function new():Void;

	/**		
		Create a connection between the `from_port` slot of the `from` GraphNode and the `to_port` slot of the `to` GraphNode. If the connection already exists, no connection is created.
	**/
	@:native("ConnectNode")
	public function connectNode(from:std.String, fromPort:Int, to:std.String, toPort:Int):godot.Error;

	/**		
		Returns `true` if the `from_port` slot of the `from` GraphNode is connected to the `to_port` slot of the `to` GraphNode.
	**/
	@:native("IsNodeConnected")
	public function isNodeConnected(from:std.String, fromPort:Int, to:std.String, toPort:Int):Bool;

	/**		
		Removes the connection between the `from_port` slot of the `from` GraphNode and the `to_port` slot of the `to` GraphNode. If the connection does not exist, no connection is removed.
	**/
	@:native("DisconnectNode")
	public function disconnectNode(from:std.String, fromPort:Int, to:std.String, toPort:Int):Void;

	/**		
		Sets the coloration of the connection between `from`'s `from_port` and `to`'s `to_port` with the color provided in the `activity` theme property.
	**/
	@:native("SetConnectionActivity")
	public function setConnectionActivity(from:std.String, fromPort:Int, to:std.String, toPort:Int, amount:Single):Void;

	/**		
		Returns an Array containing the list of connections. A connection consists in a structure of the form `{ from_port: 0, from: "GraphNode name 0", to_port: 1, to: "GraphNode name 1" }`.
	**/
	@:native("GetConnectionList")
	public function getConnectionList():godot.collections.Array;

	/**		
		Removes all connections between nodes.
	**/
	@:native("ClearConnections")
	public function clearConnections():Void;

	@:native("GetScrollOfs")
	public function getScrollOfs():godot.Vector2;

	@:native("SetScrollOfs")
	public function setScrollOfs(ofs:godot.Vector2):Void;

	/**		
		Makes possible to disconnect nodes when dragging from the slot at the right if it has the specified type.
	**/
	@:native("AddValidRightDisconnectType")
	public function addValidRightDisconnectType(type:Int):Void;

	/**		
		Removes the possibility to disconnect nodes when dragging from the slot at the right if it has the specified type.
	**/
	@:native("RemoveValidRightDisconnectType")
	public function removeValidRightDisconnectType(type:Int):Void;

	/**		
		Makes possible to disconnect nodes when dragging from the slot at the left if it has the specified type.
	**/
	@:native("AddValidLeftDisconnectType")
	public function addValidLeftDisconnectType(type:Int):Void;

	/**		
		Removes the possibility to disconnect nodes when dragging from the slot at the left if it has the specified type.
	**/
	@:native("RemoveValidLeftDisconnectType")
	public function removeValidLeftDisconnectType(type:Int):Void;

	/**		
		Makes possible the connection between two different slot types. The type is defined with the `godot.GraphNode.setSlot` method.
	**/
	@:native("AddValidConnectionType")
	public function addValidConnectionType(fromType:Int, toType:Int):Void;

	/**		
		Makes it not possible to connect between two different slot types. The type is defined with the `godot.GraphNode.setSlot` method.
	**/
	@:native("RemoveValidConnectionType")
	public function removeValidConnectionType(fromType:Int, toType:Int):Void;

	/**		
		Returns whether it's possible to connect slots of the specified types.
	**/
	@:native("IsValidConnectionType")
	public function isValidConnectionType(fromType:Int, toType:Int):Bool;

	@:native("SetZoom")
	public function setZoom(pZoom:Single):Void;

	@:native("GetZoom")
	public function getZoom():Single;

	@:native("SetSnap")
	public function setSnap(pixels:Int):Void;

	@:native("GetSnap")
	public function getSnap():Int;

	@:native("SetUseSnap")
	public function setUseSnap(enable:Bool):Void;

	@:native("IsUsingSnap")
	public function isUsingSnap():Bool;

	@:native("SetRightDisconnects")
	public function setRightDisconnects(enable:Bool):Void;

	@:native("IsRightDisconnectsEnabled")
	public function isRightDisconnectsEnabled():Bool;

	/**		
		Gets the `godot.HBoxContainer` that contains the zooming and grid snap controls in the top left of the graph.
		
		Warning: The intended usage of this function is to allow you to reposition or add your own custom controls to the container. This is an internal control and as such should not be freed. If you wish to hide this or any of it's children use their `godot.CanvasItem.visible` property instead.
	**/
	@:native("GetZoomHbox")
	public function getZoomHbox():godot.HBoxContainer;

	/**		
		Sets the specified `node` as the one selected.
	**/
	@:native("SetSelected")
	public function setSelected(node:godot.Node):Void;
}
