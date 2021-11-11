// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A GraphNode is a container. Each GraphNode can have several input and output slots, sometimes referred to as ports, allowing connections between GraphNodes. To add a slot to GraphNode, add any `godot.Control`-derived child node to it.

After adding at least one child to GraphNode new sections will be automatically created in the Inspector called 'Slot'. When 'Slot' is expanded you will see list with index number for each slot. You can click on each of them to expand further.

In the Inspector you can enable (show) or disable (hide) slots. By default, all slots are disabled so you may not see any slots on your GraphNode initially. You can assign a type to each slot. Only slots of the same type will be able to connect to each other. You can also assign colors to slots. A tuple of input and output slots is defined for each GUI element included in the GraphNode. Input connections are on the left and output connections are on the right side of GraphNode. Only enabled slots are counted as connections.
**/
@:libType
@:csNative
@:native("Godot.GraphNode")
@:autoBuild(godot.Godot.buildUserClass())
extern class GraphNode extends godot.Container {
	/**
		`close_request` signal.
		
		Emitted when the GraphNode is requested to be closed. Happens on clicking the close button (see `showClose`).
	**/
	public var onCloseRequest(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onCloseRequest():Signal<Void->Void> {
		return new Signal(this, "close_request", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`dragged` signal.
		
		Emitted when the GraphNode is dragged.
	**/
	public var onDragged(get, never):Signal<(from:Vector2, to:Vector2)->Void>;
	@:dox(hide) @:noCompletion inline function get_onDragged():Signal<(from:Vector2, to:Vector2)->Void> {
		return new Signal(this, "dragged", Signal.SignalHandlerVector2Vector2Void.connectSignal, Signal.SignalHandlerVector2Vector2Void.disconnectSignal, Signal.SignalHandlerVector2Vector2Void.isSignalConnected);
	}

	/**
		`offset_changed` signal.
		
		Emitted when the GraphNode is moved.
	**/
	public var onOffsetChanged(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onOffsetChanged():Signal<Void->Void> {
		return new Signal(this, "offset_changed", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`raise_request` signal.
		
		Emitted when the GraphNode is requested to be displayed over other ones. Happens on focusing (clicking into) the GraphNode.
	**/
	public var onRaiseRequest(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onRaiseRequest():Signal<Void->Void> {
		return new Signal(this, "raise_request", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`resize_request` signal.
		
		Emitted when the GraphNode is requested to be resized. Happens on dragging the resizer handle (see `resizable`).
	**/
	public var onResizeRequest(get, never):Signal<(newMinsize:Vector2)->Void>;
	@:dox(hide) @:noCompletion inline function get_onResizeRequest():Signal<(newMinsize:Vector2)->Void> {
		return new Signal(this, "resize_request", Signal.SignalHandlerVector2Void.connectSignal, Signal.SignalHandlerVector2Void.disconnectSignal, Signal.SignalHandlerVector2Void.isSignalConnected);
	}

	/**
		`slot_updated` signal.
		
		Emitted when any GraphNode's slot is updated.
	**/
	public var onSlotUpdated(get, never):Signal<(idx:Int)->Void>;
	@:dox(hide) @:noCompletion inline function get_onSlotUpdated():Signal<(idx:Int)->Void> {
		return new Signal(this, "slot_updated", Signal.SignalHandlerIntVoid.connectSignal, Signal.SignalHandlerIntVoid.disconnectSignal, Signal.SignalHandlerIntVoid.isSignalConnected);
	}

	/**		
		Sets the overlay shown above the GraphNode. See `godot.GraphNode_OverlayEnum`.
	**/
	@:native("Overlay")
	public var overlay:godot.GraphNode_OverlayEnum;

	/**		
		If `true`, the GraphNode is a comment node.
	**/
	@:native("Comment")
	public var comment:Bool;

	/**		
		If `true`, the GraphNode is selected.
	**/
	@:native("Selected")
	public var selected:Bool;

	/**		
		If `true`, the user can resize the GraphNode.
		
		Note: Dragging the handle will only emit the `resize_request` signal, the GraphNode needs to be resized manually.
	**/
	@:native("Resizable")
	public var resizable:Bool;

	/**		
		If `true`, the close button will be visible.
		
		Note: Pressing it will only emit the `close_request` signal, the GraphNode needs to be removed manually.
	**/
	@:native("ShowClose")
	public var showClose:Bool;

	/**		
		The offset of the GraphNode, relative to the scroll offset of the `godot.GraphEdit`.
		
		Note: You cannot use position directly, as `godot.GraphEdit` is a `godot.Container`.
	**/
	@:native("Offset")
	public var offset:godot.Vector2;

	/**		
		The text displayed in the GraphNode's title bar.
	**/
	@:native("Title")
	public var title:std.String;

	@:native("new")
	public function new():Void;

	@:native("SetTitle")
	public function setTitle(title:std.String):Void;

	@:native("GetTitle")
	public function getTitle():std.String;

	#if doc_gen
	/**		
		Sets properties of the slot with ID `idx`.
		
		If `enable_left`/`right`, a port will appear and the slot will be able to be connected from this side.
		
		`type_left`/`right` is an arbitrary type of the port. Only ports with the same type values can be connected.
		
		`color_left`/`right` is the tint of the port's icon on this side.
		
		`custom_left`/`right` is a custom texture for this side's port.
		
		Note: This method only sets properties of the slot. To create the slot, add a `godot.Control`-derived child to the GraphNode.
		
		Individual properties can be set using one of the `set_slot_*` methods. You must enable at least one side of the slot to do so.
	**/
	@:native("SetSlot")
	public function setSlot(idx:Int, enableLeft:Bool, typeLeft:Int, colorLeft:godot.Color, enableRight:Bool, typeRight:Int, colorRight:godot.Color, ?customLeft:godot.Texture, ?customRight:godot.Texture):Void;
	#else
	/**		
		Sets properties of the slot with ID `idx`.
		
		If `enable_left`/`right`, a port will appear and the slot will be able to be connected from this side.
		
		`type_left`/`right` is an arbitrary type of the port. Only ports with the same type values can be connected.
		
		`color_left`/`right` is the tint of the port's icon on this side.
		
		`custom_left`/`right` is a custom texture for this side's port.
		
		Note: This method only sets properties of the slot. To create the slot, add a `godot.Control`-derived child to the GraphNode.
		
		Individual properties can be set using one of the `set_slot_*` methods. You must enable at least one side of the slot to do so.
	**/
	@:native("SetSlot")
	public overload function setSlot(idx:Int, enableLeft:Bool, typeLeft:Int, colorLeft:godot.Color, enableRight:Bool, typeRight:Int, colorRight:godot.Color):Void;

	/**		
		Sets properties of the slot with ID `idx`.
		
		If `enable_left`/`right`, a port will appear and the slot will be able to be connected from this side.
		
		`type_left`/`right` is an arbitrary type of the port. Only ports with the same type values can be connected.
		
		`color_left`/`right` is the tint of the port's icon on this side.
		
		`custom_left`/`right` is a custom texture for this side's port.
		
		Note: This method only sets properties of the slot. To create the slot, add a `godot.Control`-derived child to the GraphNode.
		
		Individual properties can be set using one of the `set_slot_*` methods. You must enable at least one side of the slot to do so.
	**/
	@:native("SetSlot")
	public overload function setSlot(idx:Int, enableLeft:Bool, typeLeft:Int, colorLeft:godot.Color, enableRight:Bool, typeRight:Int, colorRight:godot.Color, customLeft:godot.Texture):Void;

	/**		
		Sets properties of the slot with ID `idx`.
		
		If `enable_left`/`right`, a port will appear and the slot will be able to be connected from this side.
		
		`type_left`/`right` is an arbitrary type of the port. Only ports with the same type values can be connected.
		
		`color_left`/`right` is the tint of the port's icon on this side.
		
		`custom_left`/`right` is a custom texture for this side's port.
		
		Note: This method only sets properties of the slot. To create the slot, add a `godot.Control`-derived child to the GraphNode.
		
		Individual properties can be set using one of the `set_slot_*` methods. You must enable at least one side of the slot to do so.
	**/
	@:native("SetSlot")
	public overload function setSlot(idx:Int, enableLeft:Bool, typeLeft:Int, colorLeft:godot.Color, enableRight:Bool, typeRight:Int, colorRight:godot.Color, customLeft:godot.Texture, customRight:godot.Texture):Void;
	#end

	/**		
		Disables input and output slot whose index is `idx`.
	**/
	@:native("ClearSlot")
	public function clearSlot(idx:Int):Void;

	/**		
		Disables all input and output slots of the GraphNode.
	**/
	@:native("ClearAllSlots")
	public function clearAllSlots():Void;

	/**		
		Returns `true` if left (input) side of the slot `idx` is enabled.
	**/
	@:native("IsSlotEnabledLeft")
	public function isSlotEnabledLeft(idx:Int):Bool;

	/**		
		Toggles the left (input) side of the slot `idx`. If `enable_left` is `true`, a port will appear on the left side and the slot will be able to be connected from this side.
	**/
	@:native("SetSlotEnabledLeft")
	public function setSlotEnabledLeft(idx:Int, enableLeft:Bool):Void;

	/**		
		Sets the left (input) type of the slot `idx` to `type_left`.
	**/
	@:native("SetSlotTypeLeft")
	public function setSlotTypeLeft(idx:Int, typeLeft:Int):Void;

	/**		
		Returns the left (input) type of the slot `idx`.
	**/
	@:native("GetSlotTypeLeft")
	public function getSlotTypeLeft(idx:Int):Int;

	/**		
		Sets the `godot.Color` of the left (input) side of the slot `idx` to `color_left`.
	**/
	@:native("SetSlotColorLeft")
	public function setSlotColorLeft(idx:Int, colorLeft:godot.Color):Void;

	/**		
		Returns the left (input) `godot.Color` of the slot `idx`.
	**/
	@:native("GetSlotColorLeft")
	public function getSlotColorLeft(idx:Int):godot.Color;

	/**		
		Returns `true` if right (output) side of the slot `idx` is enabled.
	**/
	@:native("IsSlotEnabledRight")
	public function isSlotEnabledRight(idx:Int):Bool;

	/**		
		Toggles the right (output) side of the slot `idx`. If `enable_right` is `true`, a port will appear on the right side and the slot will be able to be connected from this side.
	**/
	@:native("SetSlotEnabledRight")
	public function setSlotEnabledRight(idx:Int, enableRight:Bool):Void;

	/**		
		Sets the right (output) type of the slot `idx` to `type_right`.
	**/
	@:native("SetSlotTypeRight")
	public function setSlotTypeRight(idx:Int, typeRight:Int):Void;

	/**		
		Returns the right (output) type of the slot `idx`.
	**/
	@:native("GetSlotTypeRight")
	public function getSlotTypeRight(idx:Int):Int;

	/**		
		Sets the `godot.Color` of the right (output) side of the slot `idx` to `color_right`.
	**/
	@:native("SetSlotColorRight")
	public function setSlotColorRight(idx:Int, colorRight:godot.Color):Void;

	/**		
		Returns the right (output) `godot.Color` of the slot `idx`.
	**/
	@:native("GetSlotColorRight")
	public function getSlotColorRight(idx:Int):godot.Color;

	@:native("SetOffset")
	public function setOffset(offset:godot.Vector2):Void;

	@:native("GetOffset")
	public function getOffset():godot.Vector2;

	@:native("SetComment")
	public function setComment(comment:Bool):Void;

	@:native("IsComment")
	public function isComment():Bool;

	@:native("SetResizable")
	public function setResizable(resizable:Bool):Void;

	@:native("IsResizable")
	public function isResizable():Bool;

	@:native("SetSelected")
	public function setSelected(selected:Bool):Void;

	@:native("IsSelected")
	public function isSelected():Bool;

	/**		
		Returns the number of enabled output slots (connections) of the GraphNode.
	**/
	@:native("GetConnectionOutputCount")
	public function getConnectionOutputCount():Int;

	/**		
		Returns the number of enabled input slots (connections) to the GraphNode.
	**/
	@:native("GetConnectionInputCount")
	public function getConnectionInputCount():Int;

	/**		
		Returns the position of the output connection `idx`.
	**/
	@:native("GetConnectionOutputPosition")
	public function getConnectionOutputPosition(idx:Int):godot.Vector2;

	/**		
		Returns the type of the output connection `idx`.
	**/
	@:native("GetConnectionOutputType")
	public function getConnectionOutputType(idx:Int):Int;

	/**		
		Returns the `godot.Color` of the output connection `idx`.
	**/
	@:native("GetConnectionOutputColor")
	public function getConnectionOutputColor(idx:Int):godot.Color;

	/**		
		Returns the position of the input connection `idx`.
	**/
	@:native("GetConnectionInputPosition")
	public function getConnectionInputPosition(idx:Int):godot.Vector2;

	/**		
		Returns the type of the input connection `idx`.
	**/
	@:native("GetConnectionInputType")
	public function getConnectionInputType(idx:Int):Int;

	/**		
		Returns the `godot.Color` of the input connection `idx`.
	**/
	@:native("GetConnectionInputColor")
	public function getConnectionInputColor(idx:Int):godot.Color;

	@:native("SetShowCloseButton")
	public function setShowCloseButton(show:Bool):Void;

	@:native("IsCloseButtonVisible")
	public function isCloseButtonVisible():Bool;

	@:native("SetOverlay")
	public function setOverlay(overlay:godot.GraphNode_OverlayEnum):Void;

	@:native("GetOverlay")
	public function getOverlay():godot.GraphNode_OverlayEnum;
}
