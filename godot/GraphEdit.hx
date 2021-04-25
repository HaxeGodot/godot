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
		`_begin_node_move` signal.
		
		Emitted at the beginning of a GraphNode movement.
	**/
	public var onBeginNodeMove(get, never):Signal<Void->Void>;
	@:dox(hide) inline function get_onBeginNodeMove():Signal<Void->Void> {
		return new Signal(this, "_begin_node_move", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`_end_node_move` signal.
		
		Emitted at the end of a GraphNode movement.
	**/
	public var onEndNodeMove(get, never):Signal<Void->Void>;
	@:dox(hide) inline function get_onEndNodeMove():Signal<Void->Void> {
		return new Signal(this, "_end_node_move", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`connection_from_empty` signal.
		
		Emitted when user dragging connection from input port into empty space of the graph.
	**/
	public var onConnectionFromEmpty(get, never):Signal<(to:std.String, toSlot:Int, releasePosition:Vector2)->Void>;
	@:dox(hide) inline function get_onConnectionFromEmpty():Signal<(to:std.String, toSlot:Int, releasePosition:Vector2)->Void> {
		return new Signal(this, "connection_from_empty", Signal.SignalHandlerStringIntVector2Void.connectSignal, Signal.SignalHandlerStringIntVector2Void.disconnectSignal, Signal.SignalHandlerStringIntVector2Void.isSignalConnected);
	}

	/**
		`connection_request` signal.
		
		Emitted to the GraphEdit when the connection between the `from_slot` slot of the `from` GraphNode and the `to_slot` slot of the `to` GraphNode is attempted to be created.
	**/
	public var onConnectionRequest(get, never):Signal<(from:std.String, fromSlot:Int, to:std.String, toSlot:Int)->Void>;
	@:dox(hide) inline function get_onConnectionRequest():Signal<(from:std.String, fromSlot:Int, to:std.String, toSlot:Int)->Void> {
		return new Signal(this, "connection_request", Signal.SignalHandlerStringIntStringIntVoid.connectSignal, Signal.SignalHandlerStringIntStringIntVoid.disconnectSignal, Signal.SignalHandlerStringIntStringIntVoid.isSignalConnected);
	}

	/**
		`connection_to_empty` signal.
		
		Emitted when user dragging connection from output port into empty space of the graph.
	**/
	public var onConnectionToEmpty(get, never):Signal<(from:std.String, fromSlot:Int, releasePosition:Vector2)->Void>;
	@:dox(hide) inline function get_onConnectionToEmpty():Signal<(from:std.String, fromSlot:Int, releasePosition:Vector2)->Void> {
		return new Signal(this, "connection_to_empty", Signal.SignalHandlerStringIntVector2Void.connectSignal, Signal.SignalHandlerStringIntVector2Void.disconnectSignal, Signal.SignalHandlerStringIntVector2Void.isSignalConnected);
	}

	/**
		`copy_nodes_request` signal.
		
		Emitted when the user presses `Ctrl + C`.
	**/
	public var onCopyNodesRequest(get, never):Signal<Void->Void>;
	@:dox(hide) inline function get_onCopyNodesRequest():Signal<Void->Void> {
		return new Signal(this, "copy_nodes_request", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`delete_nodes_request` signal.
		
		Emitted when a GraphNode is attempted to be removed from the GraphEdit.
	**/
	public var onDeleteNodesRequest(get, never):Signal<Void->Void>;
	@:dox(hide) inline function get_onDeleteNodesRequest():Signal<Void->Void> {
		return new Signal(this, "delete_nodes_request", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`disconnection_request` signal.
		
		Emitted to the GraphEdit when the connection between `from_slot` slot of `from` GraphNode and `to_slot` slot of `to` GraphNode is attempted to be removed.
	**/
	public var onDisconnectionRequest(get, never):Signal<(from:std.String, fromSlot:Int, to:std.String, toSlot:Int)->Void>;
	@:dox(hide) inline function get_onDisconnectionRequest():Signal<(from:std.String, fromSlot:Int, to:std.String, toSlot:Int)->Void> {
		return new Signal(this, "disconnection_request", Signal.SignalHandlerStringIntStringIntVoid.connectSignal, Signal.SignalHandlerStringIntStringIntVoid.disconnectSignal, Signal.SignalHandlerStringIntStringIntVoid.isSignalConnected);
	}

	/**
		`duplicate_nodes_request` signal.
		
		Emitted when a GraphNode is attempted to be duplicated in the GraphEdit.
	**/
	public var onDuplicateNodesRequest(get, never):Signal<Void->Void>;
	@:dox(hide) inline function get_onDuplicateNodesRequest():Signal<Void->Void> {
		return new Signal(this, "duplicate_nodes_request", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`node_selected` signal.
		
		Emitted when a GraphNode is selected.
	**/
	public var onNodeSelected(get, never):Signal<(node:Node)->Void>;
	@:dox(hide) inline function get_onNodeSelected():Signal<(node:Node)->Void> {
		return new Signal(this, "node_selected", Signal.SignalHandlerNodeVoid.connectSignal, Signal.SignalHandlerNodeVoid.disconnectSignal, Signal.SignalHandlerNodeVoid.isSignalConnected);
	}

	/**
		`node_unselected` signal.
	**/
	public var onNodeUnselected(get, never):Signal<(node:Node)->Void>;
	@:dox(hide) inline function get_onNodeUnselected():Signal<(node:Node)->Void> {
		return new Signal(this, "node_unselected", Signal.SignalHandlerNodeVoid.connectSignal, Signal.SignalHandlerNodeVoid.disconnectSignal, Signal.SignalHandlerNodeVoid.isSignalConnected);
	}

	/**
		`paste_nodes_request` signal.
		
		Emitted when the user presses `Ctrl + V`.
	**/
	public var onPasteNodesRequest(get, never):Signal<Void->Void>;
	@:dox(hide) inline function get_onPasteNodesRequest():Signal<Void->Void> {
		return new Signal(this, "paste_nodes_request", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`popup_request` signal.
		
		Emitted when a popup is requested. Happens on right-clicking in the GraphEdit. `position` is the position of the mouse pointer when the signal is sent.
	**/
	public var onPopupRequest(get, never):Signal<(position:Vector2)->Void>;
	@:dox(hide) inline function get_onPopupRequest():Signal<(position:Vector2)->Void> {
		return new Signal(this, "popup_request", Signal.SignalHandlerVector2Void.connectSignal, Signal.SignalHandlerVector2Void.disconnectSignal, Signal.SignalHandlerVector2Void.isSignalConnected);
	}

	/**
		`scroll_offset_changed` signal.
		
		Emitted when the scroll offset is changed by the user. It will not be emitted when changed in code.
	**/
	public var onScrollOffsetChanged(get, never):Signal<(ofs:Vector2)->Void>;
	@:dox(hide) inline function get_onScrollOffsetChanged():Signal<(ofs:Vector2)->Void> {
		return new Signal(this, "scroll_offset_changed", Signal.SignalHandlerVector2Void.connectSignal, Signal.SignalHandlerVector2Void.disconnectSignal, Signal.SignalHandlerVector2Void.isSignalConnected);
	}

	/**		
		The opacity of the minimap rectangle.
	**/
	@:native("MinimapOpacity")
	public var minimapOpacity:Single;

	/**		
		The size of the minimap rectangle. The map itself is based on the size of the grid area and is scaled to fit this rectangle.
	**/
	@:native("MinimapSize")
	public var minimapSize:godot.Vector2;

	/**		
		If `true`, the minimap is visible.
	**/
	@:native("MinimapEnabled")
	public var minimapEnabled:Bool;

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

	@:native("SetMinimapSize")
	public function setMinimapSize(pSize:godot.Vector2):Void;

	@:native("GetMinimapSize")
	public function getMinimapSize():godot.Vector2;

	@:native("SetMinimapOpacity")
	public function setMinimapOpacity(pOpacity:Single):Void;

	@:native("GetMinimapOpacity")
	public function getMinimapOpacity():Single;

	@:native("SetMinimapEnabled")
	public function setMinimapEnabled(enable:Bool):Void;

	@:native("IsMinimapEnabled")
	public function isMinimapEnabled():Bool;

	@:native("SetRightDisconnects")
	public function setRightDisconnects(enable:Bool):Void;

	@:native("IsRightDisconnectsEnabled")
	public function isRightDisconnectsEnabled():Bool;

	/**		
		Gets the `godot.HBoxContainer` that contains the zooming and grid snap controls in the top left of the graph.
		
		Warning: The intended usage of this function is to allow you to reposition or add your own custom controls to the container. This is an internal control and as such should not be freed. If you wish to hide this or any of its children, use their `godot.CanvasItem.visible` property instead.
	**/
	@:native("GetZoomHbox")
	public function getZoomHbox():godot.HBoxContainer;

	/**		
		Sets the specified `node` as the one selected.
	**/
	@:native("SetSelected")
	public function setSelected(node:godot.Node):Void;
}
