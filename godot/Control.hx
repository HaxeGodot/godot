// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Base class for all UI-related nodes. `godot.Control` features a bounding rectangle that defines its extents, an anchor position relative to its parent control or the current viewport, and margins that represent an offset to the anchor. The margins update automatically when the node, any of its parents, or the screen size change.

For more information on Godot's UI system, anchors, margins, and containers, see the related tutorials in the manual. To build flexible UIs, you'll need a mix of UI elements that inherit from `godot.Control` and `godot.Container` nodes.

User Interface nodes and input

Godot sends input events to the scene's root node first, by calling `godot.Node._Input`. `godot.Node._Input` forwards the event down the node tree to the nodes under the mouse cursor, or on keyboard focus. To do so, it calls `godot.MainLoop._InputEvent`. Call `godot.Control.acceptEvent` so no other node receives the event. Once you accept an input, it becomes handled so `godot.Node._UnhandledInput` will not process it.

Only one `godot.Control` node can be in keyboard focus. Only the node in focus will receive keyboard events. To get the focus, call `godot.Control.grabFocus`. `godot.Control` nodes lose focus when another node grabs it, or if you hide the node in focus.

Sets `godot.Control.mouseFilter` to `godot.Control_MouseFilterEnum.ignore` to tell a `godot.Control` node to ignore mouse or touch events. You'll need it if you place an icon on top of a button.

`godot.Theme` resources change the Control's appearance. If you change the `godot.Theme` on a `godot.Control` node, it affects all of its children. To override some of the theme's parameters, call one of the `add_*_override` methods, like `godot.Control.addFontOverride`. You can override the theme with the inspector.

Note: Theme items are not `godot.Object` properties. This means you can't access their values using `godot.Object.get` and `godot.Object.set`. Instead, use `godot.Control.getColor`, `godot.Control.getConstant`, `godot.Control.getFont`, `godot.Control.getIcon`, `godot.Control.getStylebox`, and the `add_*_override` methods provided by this class.
**/
@:libType
@:csNative
@:native("Godot.Control")
@:autoBuild(godot.Godot.buildUserClass())
extern class Control extends godot.CanvasItem {
	/**
		`focus_entered` signal.
	**/
	public var onFocusEntered(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onFocusEntered():Signal<Void->Void> {
		return new Signal(this, "focus_entered", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`focus_exited` signal.
	**/
	public var onFocusExited(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onFocusExited():Signal<Void->Void> {
		return new Signal(this, "focus_exited", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`gui_input` signal.
	**/
	public var onGuiInput(get, never):Signal<(event:InputEvent)->Void>;
	@:dox(hide) @:noCompletion inline function get_onGuiInput():Signal<(event:InputEvent)->Void> {
		return new Signal(this, "gui_input", Signal.SignalHandlerInputEventVoid.connectSignal, Signal.SignalHandlerInputEventVoid.disconnectSignal, Signal.SignalHandlerInputEventVoid.isSignalConnected);
	}

	/**
		`minimum_size_changed` signal.
	**/
	public var onMinimumSizeChanged(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onMinimumSizeChanged():Signal<Void->Void> {
		return new Signal(this, "minimum_size_changed", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`modal_closed` signal.
	**/
	public var onModalClosed(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onModalClosed():Signal<Void->Void> {
		return new Signal(this, "modal_closed", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`mouse_entered` signal.
	**/
	public var onMouseEntered(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onMouseEntered():Signal<Void->Void> {
		return new Signal(this, "mouse_entered", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`mouse_exited` signal.
	**/
	public var onMouseExited(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onMouseExited():Signal<Void->Void> {
		return new Signal(this, "mouse_exited", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`resized` signal.
	**/
	public var onResized(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onResized():Signal<Void->Void> {
		return new Signal(this, "resized", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`size_flags_changed` signal.
	**/
	public var onSizeFlagsChanged(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onSizeFlagsChanged():Signal<Void->Void> {
		return new Signal(this, "size_flags_changed", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**		
		Changing this property replaces the current `godot.Theme` resource this node and all its `godot.Control` children use.
	**/
	@:native("Theme")
	public var theme:godot.Theme;

	/**		
		If the node and at least one of its neighbours uses the `godot.Control_SizeFlags.expand` size flag, the parent `godot.Container` will let it take more or less space depending on this property. If this node has a stretch ratio of 2 and its neighbour a ratio of 1, this node will take two thirds of the available space.
	**/
	@:native("SizeFlagsStretchRatio")
	public var sizeFlagsStretchRatio:Single;

	/**		
		Tells the parent `godot.Container` nodes how they should resize and place the node on the Y axis. Use one of the `godot.Control_SizeFlags` constants to change the flags. See the constants to learn what each does.
	**/
	@:native("SizeFlagsVertical")
	public var sizeFlagsVertical:Int;

	/**		
		Tells the parent `godot.Container` nodes how they should resize and place the node on the X axis. Use one of the `godot.Control_SizeFlags` constants to change the flags. See the constants to learn what each does.
	**/
	@:native("SizeFlagsHorizontal")
	public var sizeFlagsHorizontal:Int;

	/**		
		Enables whether input should propagate when you close the control as modal.
		
		If `false`, stops event handling at the viewport input event handling. The viewport first hides the modal and after marks the input as handled.
	**/
	@:native("InputPassOnModalCloseClick")
	public var inputPassOnModalCloseClick:Bool;

	/**		
		The default cursor shape for this control. Useful for Godot plugins and applications or games that use the system's mouse cursors.
		
		Note: On Linux, shapes may vary depending on the cursor theme of the system.
	**/
	@:native("MouseDefaultCursorShape")
	public var mouseDefaultCursorShape:godot.Control_CursorShape;

	/**		
		Controls whether the control will be able to receive mouse button input events through `godot.Control._GuiInput` and how these events should be handled. Also controls whether the control can receive the `mouse_entered`, and `mouse_exited` signals. See the constants to learn what each does.
	**/
	@:native("MouseFilter")
	public var mouseFilter:godot.Control_MouseFilterEnum;

	/**		
		The focus access mode for the control (None, Click or All). Only one Control can be focused at the same time, and it will receive keyboard signals.
	**/
	@:native("FocusMode")
	public var focusMode:godot.Control_FocusModeEnum;

	/**		
		Tells Godot which node it should give keyboard focus to if the user presses Shift+Tab on a keyboard by default. You can change the key by editing the `ui_focus_prev` input action.
		
		If this property is not set, Godot will select a "best guess" based on surrounding nodes in the scene tree.
	**/
	@:native("FocusPrevious")
	public var focusPrevious:godot.NodePath;

	/**		
		Tells Godot which node it should give keyboard focus to if the user presses Tab on a keyboard by default. You can change the key by editing the `ui_focus_next` input action.
		
		If this property is not set, Godot will select a "best guess" based on surrounding nodes in the scene tree.
	**/
	@:native("FocusNext")
	public var focusNext:godot.NodePath;

	/**		
		Tells Godot which node it should give keyboard focus to if the user presses the down arrow on the keyboard or down on a gamepad by default. You can change the key by editing the `ui_down` input action. The node must be a `godot.Control`. If this property is not set, Godot will give focus to the closest `godot.Control` to the bottom of this one.
	**/
	@:native("FocusNeighbourBottom")
	public var focusNeighbourBottom:godot.NodePath;

	/**		
		Tells Godot which node it should give keyboard focus to if the user presses the right arrow on the keyboard or right on a gamepad by default. You can change the key by editing the `ui_right` input action. The node must be a `godot.Control`. If this property is not set, Godot will give focus to the closest `godot.Control` to the bottom of this one.
	**/
	@:native("FocusNeighbourRight")
	public var focusNeighbourRight:godot.NodePath;

	/**		
		Tells Godot which node it should give keyboard focus to if the user presses the top arrow on the keyboard or top on a gamepad by default. You can change the key by editing the `ui_top` input action. The node must be a `godot.Control`. If this property is not set, Godot will give focus to the closest `godot.Control` to the bottom of this one.
	**/
	@:native("FocusNeighbourTop")
	public var focusNeighbourTop:godot.NodePath;

	/**		
		Tells Godot which node it should give keyboard focus to if the user presses the left arrow on the keyboard or left on a gamepad by default. You can change the key by editing the `ui_left` input action. The node must be a `godot.Control`. If this property is not set, Godot will give focus to the closest `godot.Control` to the left of this one.
	**/
	@:native("FocusNeighbourLeft")
	public var focusNeighbourLeft:godot.NodePath;

	/**		
		Changes the tooltip text. The tooltip appears when the user's mouse cursor stays idle over this control for a few moments, provided that the `godot.Control.mouseFilter` property is not `godot.Control_MouseFilterEnum.ignore`. You can change the time required for the tooltip to appear with `gui/timers/tooltip_delay_sec` option in Project Settings.
		
		The tooltip popup will use either a default implementation, or a custom one that you can provide by overriding `godot.Control._MakeCustomTooltip`. The default tooltip includes a `godot.PopupPanel` and `godot.Label` whose theme properties can be customized using `godot.Theme` methods with the `"TooltipPanel"` and `"TooltipLabel"` respectively. For example:
		
		```
		
		var style_box = StyleBoxFlat.new()
		style_box.set_bg_color(Color(1, 1, 0))
		style_box.set_border_width_all(2)
		# We assume here that the `theme` property has been assigned a custom Theme beforehand.
		theme.set_stylebox("panel", "TooltipPanel", style_box)
		theme.set_color("font_color", "TooltipLabel", Color(0, 1, 1))
		
		```
	**/
	@:native("HintTooltip")
	public var hintTooltip:std.String;

	/**		
		Enables whether rendering of `godot.CanvasItem` based children should be clipped to this control's rectangle. If `true`, parts of a child which would be visibly outside of this control's rectangle will not be rendered.
	**/
	@:native("RectClipContent")
	public var rectClipContent:Bool;

	/**		
		By default, the node's pivot is its top-left corner. When you change its `godot.Control.rectRotation` or `godot.Control.rectScale`, it will rotate or scale around this pivot. Set this property to `godot.Control.rectSize` / 2 to pivot around the Control's center.
	**/
	@:native("RectPivotOffset")
	public var rectPivotOffset:godot.Vector2;

	/**		
		The node's scale, relative to its `godot.Control.rectSize`. Change this property to scale the node around its `godot.Control.rectPivotOffset`. The Control's `godot.Control.hintTooltip` will also scale according to this value.
		
		Note: This property is mainly intended to be used for animation purposes. Text inside the Control will look pixelated or blurry when the Control is scaled. To support multiple resolutions in your project, use an appropriate viewport stretch mode as described in the [https://docs.godotengine.org/en/3.4/tutorials/rendering/multiple_resolutions.html](documentation) instead of scaling Controls individually.
		
		Note: If the Control node is a child of a `godot.Container` node, the scale will be reset to `Vector2(1, 1)` when the scene is instanced. To set the Control's scale when it's instanced, wait for one frame using `yield(get_tree(), "idle_frame")` then set its `godot.Control.rectScale` property.
	**/
	@:native("RectScale")
	public var rectScale:godot.Vector2;

	/**		
		The node's rotation around its pivot, in degrees. See `godot.Control.rectPivotOffset` to change the pivot's position.
	**/
	@:native("RectRotation")
	public var rectRotation:Single;

	/**		
		The minimum size of the node's bounding rectangle. If you set it to a value greater than (0, 0), the node's bounding rectangle will always have at least this size, even if its content is smaller. If it's set to (0, 0), the node sizes automatically to fit its content, be it a texture or child nodes.
	**/
	@:native("RectMinSize")
	public var rectMinSize:godot.Vector2;

	/**		
		The size of the node's bounding rectangle, in pixels. `godot.Container` nodes update this property automatically.
	**/
	@:native("RectSize")
	public var rectSize:godot.Vector2;

	/**		
		The node's global position, relative to the world (usually to the top-left corner of the window).
	**/
	@:native("RectGlobalPosition")
	public var rectGlobalPosition:godot.Vector2;

	/**		
		The node's position, relative to its parent. It corresponds to the rectangle's top-left corner. The property is not affected by `godot.Control.rectPivotOffset`.
	**/
	@:native("RectPosition")
	public var rectPosition:godot.Vector2;

	/**		
		Controls the direction on the vertical axis in which the control should grow if its vertical minimum size is changed to be greater than its current size, as the control always has to be at least the minimum size.
	**/
	@:native("GrowVertical")
	public var growVertical:godot.Control_GrowDirection;

	/**		
		Controls the direction on the horizontal axis in which the control should grow if its horizontal minimum size is changed to be greater than its current size, as the control always has to be at least the minimum size.
	**/
	@:native("GrowHorizontal")
	public var growHorizontal:godot.Control_GrowDirection;

	/**		
		Distance between the node's bottom edge and its parent control, based on `godot.Control.anchorBottom`.
		
		Margins are often controlled by one or multiple parent `godot.Container` nodes, so you should not modify them manually if your node is a direct child of a `godot.Container`. Margins update automatically when you move or resize the node.
	**/
	@:native("MarginBottom")
	public var marginBottom:Single;

	/**		
		Distance between the node's right edge and its parent control, based on `godot.Control.anchorRight`.
		
		Margins are often controlled by one or multiple parent `godot.Container` nodes, so you should not modify them manually if your node is a direct child of a `godot.Container`. Margins update automatically when you move or resize the node.
	**/
	@:native("MarginRight")
	public var marginRight:Single;

	/**		
		Distance between the node's top edge and its parent control, based on `godot.Control.anchorTop`.
		
		Margins are often controlled by one or multiple parent `godot.Container` nodes, so you should not modify them manually if your node is a direct child of a `godot.Container`. Margins update automatically when you move or resize the node.
	**/
	@:native("MarginTop")
	public var marginTop:Single;

	/**		
		Distance between the node's left edge and its parent control, based on `godot.Control.anchorLeft`.
		
		Margins are often controlled by one or multiple parent `godot.Container` nodes, so you should not modify them manually if your node is a direct child of a `godot.Container`. Margins update automatically when you move or resize the node.
	**/
	@:native("MarginLeft")
	public var marginLeft:Single;

	/**		
		Anchors the bottom edge of the node to the origin, the center, or the end of its parent control. It changes how the bottom margin updates when the node moves or changes size. You can use one of the `godot.Control_Anchor` constants for convenience.
	**/
	@:native("AnchorBottom")
	public var anchorBottom:Single;

	/**		
		Anchors the right edge of the node to the origin, the center or the end of its parent control. It changes how the right margin updates when the node moves or changes size. You can use one of the `godot.Control_Anchor` constants for convenience.
	**/
	@:native("AnchorRight")
	public var anchorRight:Single;

	/**		
		Anchors the top edge of the node to the origin, the center or the end of its parent control. It changes how the top margin updates when the node moves or changes size. You can use one of the `godot.Control_Anchor` constants for convenience.
	**/
	@:native("AnchorTop")
	public var anchorTop:Single;

	/**		
		Anchors the left edge of the node to the origin, the center or the end of its parent control. It changes how the left margin updates when the node moves or changes size. You can use one of the `godot.Control_Anchor` constants for convenience.
	**/
	@:native("AnchorLeft")
	public var anchorLeft:Single;

	/**		
		Sent when this node is inside a `godot.ScrollContainer` which has stopped being scrolled.
	**/
	@:native("NotificationScrollEnd")
	public static var NOTIFICATION_SCROLL_END(default, never):Int;

	/**		
		Sent when this node is inside a `godot.ScrollContainer` which has begun being scrolled.
	**/
	@:native("NotificationScrollBegin")
	public static var NOTIFICATION_SCROLL_BEGIN(default, never):Int;

	/**		
		Sent when an open modal dialog closes. See `godot.Control.showModal`.
	**/
	@:native("NotificationModalClose")
	public static var NOTIFICATION_MODAL_CLOSE(default, never):Int;

	/**		
		Sent when the node's `godot.Control.theme` changes, right before Godot redraws the control. Happens when you call one of the `add_*_override` methods.
	**/
	@:native("NotificationThemeChanged")
	public static var NOTIFICATION_THEME_CHANGED(default, never):Int;

	/**		
		Sent when the node loses focus.
	**/
	@:native("NotificationFocusExit")
	public static var NOTIFICATION_FOCUS_EXIT(default, never):Int;

	/**		
		Sent when the node grabs focus.
	**/
	@:native("NotificationFocusEnter")
	public static var NOTIFICATION_FOCUS_ENTER(default, never):Int;

	/**		
		Sent when the mouse pointer exits the node.
	**/
	@:native("NotificationMouseExit")
	public static var NOTIFICATION_MOUSE_EXIT(default, never):Int;

	/**		
		Sent when the mouse pointer enters the node.
	**/
	@:native("NotificationMouseEnter")
	public static var NOTIFICATION_MOUSE_ENTER(default, never):Int;

	/**		
		Sent when the node changes size. Use `godot.Control.rectSize` to get the new size.
	**/
	@:native("NotificationResized")
	public static var NOTIFICATION_RESIZED(default, never):Int;

	@:native("new")
	public function new():Void;

	/**		
		Virtual method to be implemented by the user. Returns whether `godot.Control._GuiInput` should not be called for children controls outside this control's rectangle. Input will be clipped to the Rect of this `godot.Control`. Similar to `godot.Control.rectClipContent`, but doesn't affect visibility.
		
		If not overridden, defaults to `false`.
	**/
	@:native("_ClipsInput")
	public function _ClipsInput():Bool;

	/**		
		Virtual method to be implemented by the user. Returns the minimum size for this control. Alternative to `godot.Control.rectMinSize` for controlling minimum size via code. The actual minimum size will be the max value of these two (in each axis separately).
		
		If not overridden, defaults to `Vector2.ZERO`.
	**/
	@:native("_GetMinimumSize")
	public function _GetMinimumSize():godot.Vector2;

	/**		
		Virtual method to be implemented by the user. Use this method to process and accept inputs on UI elements. See `godot.Control.acceptEvent`.
		
		Example: clicking a control.
		
		```
		
		func _gui_input(event):
		if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and event.pressed:
		print("I've been clicked D:")
		
		```
		
		The event won't trigger if:
		
		* clicking outside the control (see `godot.Control.hasPoint`);
		
		* control has `godot.Control.mouseFilter` set to `godot.Control_MouseFilterEnum.ignore`;
		
		* control is obstructed by another `godot.Control` on top of it, which doesn't have `godot.Control.mouseFilter` set to `godot.Control_MouseFilterEnum.ignore`;
		
		* control's parent has `godot.Control.mouseFilter` set to `godot.Control_MouseFilterEnum.stop` or has accepted the event;
		
		* it happens outside the parent's rectangle and the parent has either `godot.Control.rectClipContent` or `godot.Control._ClipsInput` enabled.
		
		Note: Event position is relative to the control origin.
	**/
	@:native("_GuiInput")
	public function _GuiInput(event:godot.InputEvent):Void;

	/**		
		Virtual method to be implemented by the user. Returns a `godot.Control` node that should be used as a tooltip instead of the default one. The `for_text` includes the contents of the `godot.Control.hintTooltip` property.
		
		The returned node must be of type `godot.Control` or Control-derived. It can have child nodes of any type. It is freed when the tooltip disappears, so make sure you always provide a new instance (if you want to use a pre-existing node from your scene tree, you can duplicate it and pass the duplicated instance). When `null` or a non-Control node is returned, the default tooltip will be used instead.
		
		The returned node will be added as child to a `godot.PopupPanel`, so you should only provide the contents of that panel. That `godot.PopupPanel` can be themed using `godot.Theme.setStylebox` for the type `"TooltipPanel"` (see `godot.Control.hintTooltip` for an example).
		
		Note: The tooltip is shrunk to minimal size. If you want to ensure it's fully visible, you might want to set its `godot.Control.rectMinSize` to some non-zero value.
		
		Example of usage with a custom-constructed node:
		
		```
		
		func _make_custom_tooltip(for_text):
		var label = Label.new()
		label.text = for_text
		return label
		
		```
		
		Example of usage with a custom scene instance:
		
		```
		
		func _make_custom_tooltip(for_text):
		var tooltip = preload("res://SomeTooltipScene.tscn").instance()
		tooltip.get_node("Label").text = for_text
		return tooltip
		
		```
	**/
	@:native("_MakeCustomTooltip")
	public function _MakeCustomTooltip(forText:std.String):godot.Control;

	/**		
		Godot calls this method to test if `data` from a control's `godot.Control.getDragData` can be dropped at `position`. `position` is local to this control.
		
		This method should only be used to test the data. Process the data in `godot.Control.dropData`.
		
		```
		
		func can_drop_data(position, data):
		# Check position if it is relevant to you
		# Otherwise, just check data
		return typeof(data) == TYPE_DICTIONARY and data.has("expected")
		
		```
	**/
	@:native("CanDropData")
	public function canDropData(position:godot.Vector2, data:Dynamic):Bool;

	/**		
		Godot calls this method to pass you the `data` from a control's `godot.Control.getDragData` result. Godot first calls `godot.Control.canDropData` to test if `data` is allowed to drop at `position` where `position` is local to this control.
		
		```
		
		func can_drop_data(position, data):
		return typeof(data) == TYPE_DICTIONARY and data.has("color")
		
		func drop_data(position, data):
		color = data["color"]
		
		```
	**/
	@:native("DropData")
	public function dropData(position:godot.Vector2, data:Dynamic):Void;

	/**		
		Godot calls this method to get data that can be dragged and dropped onto controls that expect drop data. Returns `null` if there is no data to drag. Controls that want to receive drop data should implement `godot.Control.canDropData` and `godot.Control.dropData`. `position` is local to this control. Drag may be forced with `godot.Control.forceDrag`.
		
		A preview that will follow the mouse that should represent the data can be set with `godot.Control.setDragPreview`. A good time to set the preview is in this method.
		
		```
		
		func get_drag_data(position):
		var mydata = make_data()
		set_drag_preview(make_preview(mydata))
		return mydata
		
		```
	**/
	@:native("GetDragData")
	public function getDragData(position:godot.Vector2):Dynamic;

	/**		
		Virtual method to be implemented by the user. Returns whether the given `point` is inside this control.
		
		If not overridden, default behavior is checking if the point is within control's Rect.
		
		Note: If you want to check if a point is inside the control, you can use `get_rect().has_point(point)`.
	**/
	@:native("HasPoint")
	public function hasPoint(point:godot.Vector2):Bool;

	/**		
		Marks an input event as handled. Once you accept an input event, it stops propagating, even to nodes listening to `godot.Node._UnhandledInput` or `godot.Node._UnhandledKeyInput`.
	**/
	@:native("AcceptEvent")
	public function acceptEvent():Void;

	/**		
		Returns the minimum size for this control. See `godot.Control.rectMinSize`.
	**/
	@:native("GetMinimumSize")
	public function getMinimumSize():godot.Vector2;

	/**		
		Returns combined minimum size from `godot.Control.rectMinSize` and `godot.Control.getMinimumSize`.
	**/
	@:native("GetCombinedMinimumSize")
	public function getCombinedMinimumSize():godot.Vector2;

	#if doc_gen
	/**		
		Sets the anchors to a `preset` from `godot.Control_LayoutPreset` enum. This is the code equivalent to using the Layout menu in the 2D editor.
		
		If `keep_margins` is `true`, control's position will also be updated.
	**/
	@:native("SetAnchorsPreset")
	public function setAnchorsPreset(preset:godot.Control_LayoutPreset, ?keepMargins:Bool):Void;
	#else
	/**		
		Sets the anchors to a `preset` from `godot.Control_LayoutPreset` enum. This is the code equivalent to using the Layout menu in the 2D editor.
		
		If `keep_margins` is `true`, control's position will also be updated.
	**/
	@:native("SetAnchorsPreset")
	public overload function setAnchorsPreset(preset:godot.Control_LayoutPreset):Void;

	/**		
		Sets the anchors to a `preset` from `godot.Control_LayoutPreset` enum. This is the code equivalent to using the Layout menu in the 2D editor.
		
		If `keep_margins` is `true`, control's position will also be updated.
	**/
	@:native("SetAnchorsPreset")
	public overload function setAnchorsPreset(preset:godot.Control_LayoutPreset, keepMargins:Bool):Void;
	#end

	#if doc_gen
	/**		
		Sets the margins to a `preset` from `godot.Control_LayoutPreset` enum. This is the code equivalent to using the Layout menu in the 2D editor.
		
		Use parameter `resize_mode` with constants from `godot.Control_LayoutPresetMode` to better determine the resulting size of the `godot.Control`. Constant size will be ignored if used with presets that change size, e.g. `PRESET_LEFT_WIDE`.
		
		Use parameter `margin` to determine the gap between the `godot.Control` and the edges.
	**/
	@:native("SetMarginsPreset")
	public function setMarginsPreset(preset:godot.Control_LayoutPreset, ?resizeMode:godot.Control_LayoutPresetMode, ?margin:Int):Void;
	#else
	/**		
		Sets the margins to a `preset` from `godot.Control_LayoutPreset` enum. This is the code equivalent to using the Layout menu in the 2D editor.
		
		Use parameter `resize_mode` with constants from `godot.Control_LayoutPresetMode` to better determine the resulting size of the `godot.Control`. Constant size will be ignored if used with presets that change size, e.g. `PRESET_LEFT_WIDE`.
		
		Use parameter `margin` to determine the gap between the `godot.Control` and the edges.
	**/
	@:native("SetMarginsPreset")
	public overload function setMarginsPreset(preset:godot.Control_LayoutPreset):Void;

	/**		
		Sets the margins to a `preset` from `godot.Control_LayoutPreset` enum. This is the code equivalent to using the Layout menu in the 2D editor.
		
		Use parameter `resize_mode` with constants from `godot.Control_LayoutPresetMode` to better determine the resulting size of the `godot.Control`. Constant size will be ignored if used with presets that change size, e.g. `PRESET_LEFT_WIDE`.
		
		Use parameter `margin` to determine the gap between the `godot.Control` and the edges.
	**/
	@:native("SetMarginsPreset")
	public overload function setMarginsPreset(preset:godot.Control_LayoutPreset, resizeMode:godot.Control_LayoutPresetMode):Void;

	/**		
		Sets the margins to a `preset` from `godot.Control_LayoutPreset` enum. This is the code equivalent to using the Layout menu in the 2D editor.
		
		Use parameter `resize_mode` with constants from `godot.Control_LayoutPresetMode` to better determine the resulting size of the `godot.Control`. Constant size will be ignored if used with presets that change size, e.g. `PRESET_LEFT_WIDE`.
		
		Use parameter `margin` to determine the gap between the `godot.Control` and the edges.
	**/
	@:native("SetMarginsPreset")
	public overload function setMarginsPreset(preset:godot.Control_LayoutPreset, resizeMode:godot.Control_LayoutPresetMode, margin:Int):Void;
	#end

	#if doc_gen
	/**		
		Sets both anchor preset and margin preset. See `godot.Control.setAnchorsPreset` and `godot.Control.setMarginsPreset`.
	**/
	@:native("SetAnchorsAndMarginsPreset")
	public function setAnchorsAndMarginsPreset(preset:godot.Control_LayoutPreset, ?resizeMode:godot.Control_LayoutPresetMode, ?margin:Int):Void;
	#else
	/**		
		Sets both anchor preset and margin preset. See `godot.Control.setAnchorsPreset` and `godot.Control.setMarginsPreset`.
	**/
	@:native("SetAnchorsAndMarginsPreset")
	public overload function setAnchorsAndMarginsPreset(preset:godot.Control_LayoutPreset):Void;

	/**		
		Sets both anchor preset and margin preset. See `godot.Control.setAnchorsPreset` and `godot.Control.setMarginsPreset`.
	**/
	@:native("SetAnchorsAndMarginsPreset")
	public overload function setAnchorsAndMarginsPreset(preset:godot.Control_LayoutPreset, resizeMode:godot.Control_LayoutPresetMode):Void;

	/**		
		Sets both anchor preset and margin preset. See `godot.Control.setAnchorsPreset` and `godot.Control.setMarginsPreset`.
	**/
	@:native("SetAnchorsAndMarginsPreset")
	public overload function setAnchorsAndMarginsPreset(preset:godot.Control_LayoutPreset, resizeMode:godot.Control_LayoutPresetMode, margin:Int):Void;
	#end

	#if doc_gen
	/**		
		Sets the anchor identified by `margin` constant from `godot.Margin` enum to value `anchor`. A setter method for `godot.Control.anchorBottom`, `godot.Control.anchorLeft`, `godot.Control.anchorRight` and `godot.Control.anchorTop`.
		
		If `keep_margin` is `true`, margins aren't updated after this operation.
		
		If `push_opposite_anchor` is `true` and the opposite anchor overlaps this anchor, the opposite one will have its value overridden. For example, when setting left anchor to 1 and the right anchor has value of 0.5, the right anchor will also get value of 1. If `push_opposite_anchor` was `false`, the left anchor would get value 0.5.
	**/
	@:native("SetAnchor")
	public function setAnchor(margin:godot.Margin, anchor:Single, ?keepMargin:Bool, ?pushOppositeAnchor:Bool):Void;
	#else
	/**		
		Sets the anchor identified by `margin` constant from `godot.Margin` enum to value `anchor`. A setter method for `godot.Control.anchorBottom`, `godot.Control.anchorLeft`, `godot.Control.anchorRight` and `godot.Control.anchorTop`.
		
		If `keep_margin` is `true`, margins aren't updated after this operation.
		
		If `push_opposite_anchor` is `true` and the opposite anchor overlaps this anchor, the opposite one will have its value overridden. For example, when setting left anchor to 1 and the right anchor has value of 0.5, the right anchor will also get value of 1. If `push_opposite_anchor` was `false`, the left anchor would get value 0.5.
	**/
	@:native("SetAnchor")
	public overload function setAnchor(margin:godot.Margin, anchor:Single):Void;

	/**		
		Sets the anchor identified by `margin` constant from `godot.Margin` enum to value `anchor`. A setter method for `godot.Control.anchorBottom`, `godot.Control.anchorLeft`, `godot.Control.anchorRight` and `godot.Control.anchorTop`.
		
		If `keep_margin` is `true`, margins aren't updated after this operation.
		
		If `push_opposite_anchor` is `true` and the opposite anchor overlaps this anchor, the opposite one will have its value overridden. For example, when setting left anchor to 1 and the right anchor has value of 0.5, the right anchor will also get value of 1. If `push_opposite_anchor` was `false`, the left anchor would get value 0.5.
	**/
	@:native("SetAnchor")
	public overload function setAnchor(margin:godot.Margin, anchor:Single, keepMargin:Bool):Void;

	/**		
		Sets the anchor identified by `margin` constant from `godot.Margin` enum to value `anchor`. A setter method for `godot.Control.anchorBottom`, `godot.Control.anchorLeft`, `godot.Control.anchorRight` and `godot.Control.anchorTop`.
		
		If `keep_margin` is `true`, margins aren't updated after this operation.
		
		If `push_opposite_anchor` is `true` and the opposite anchor overlaps this anchor, the opposite one will have its value overridden. For example, when setting left anchor to 1 and the right anchor has value of 0.5, the right anchor will also get value of 1. If `push_opposite_anchor` was `false`, the left anchor would get value 0.5.
	**/
	@:native("SetAnchor")
	public overload function setAnchor(margin:godot.Margin, anchor:Single, keepMargin:Bool, pushOppositeAnchor:Bool):Void;
	#end

	/**		
		Returns the anchor identified by `margin` constant from `godot.Margin` enum. A getter method for `godot.Control.anchorBottom`, `godot.Control.anchorLeft`, `godot.Control.anchorRight` and `godot.Control.anchorTop`.
	**/
	@:native("GetAnchor")
	public function getAnchor(margin:godot.Margin):Single;

	/**		
		Sets the margin identified by `margin` constant from `godot.Margin` enum to given `offset`. A setter method for `godot.Control.marginBottom`, `godot.Control.marginLeft`, `godot.Control.marginRight` and `godot.Control.marginTop`.
	**/
	@:native("SetMargin")
	public function setMargin(margin:godot.Margin, offset:Single):Void;

	#if doc_gen
	/**		
		Works the same as `godot.Control.setAnchor`, but instead of `keep_margin` argument and automatic update of margin, it allows to set the margin offset yourself (see `godot.Control.setMargin`).
	**/
	@:native("SetAnchorAndMargin")
	public function setAnchorAndMargin(margin:godot.Margin, anchor:Single, offset:Single, ?pushOppositeAnchor:Bool):Void;
	#else
	/**		
		Works the same as `godot.Control.setAnchor`, but instead of `keep_margin` argument and automatic update of margin, it allows to set the margin offset yourself (see `godot.Control.setMargin`).
	**/
	@:native("SetAnchorAndMargin")
	public overload function setAnchorAndMargin(margin:godot.Margin, anchor:Single, offset:Single):Void;

	/**		
		Works the same as `godot.Control.setAnchor`, but instead of `keep_margin` argument and automatic update of margin, it allows to set the margin offset yourself (see `godot.Control.setMargin`).
	**/
	@:native("SetAnchorAndMargin")
	public overload function setAnchorAndMargin(margin:godot.Margin, anchor:Single, offset:Single, pushOppositeAnchor:Bool):Void;
	#end

	/**		
		Sets `godot.Control.marginLeft` and `godot.Control.marginTop` at the same time. Equivalent of changing `godot.Control.rectPosition`.
	**/
	@:native("SetBegin")
	public function setBegin(position:godot.Vector2):Void;

	/**		
		Sets `godot.Control.marginRight` and `godot.Control.marginBottom` at the same time.
	**/
	@:native("SetEnd")
	public function setEnd(position:godot.Vector2):Void;

	#if doc_gen
	/**		
		Sets the `godot.Control.rectPosition` to given `position`.
		
		If `keep_margins` is `true`, control's anchors will be updated instead of margins.
	**/
	@:native("SetPosition")
	public function setPosition(position:godot.Vector2, ?keepMargins:Bool):Void;
	#else
	/**		
		Sets the `godot.Control.rectPosition` to given `position`.
		
		If `keep_margins` is `true`, control's anchors will be updated instead of margins.
	**/
	@:native("SetPosition")
	public overload function setPosition(position:godot.Vector2):Void;

	/**		
		Sets the `godot.Control.rectPosition` to given `position`.
		
		If `keep_margins` is `true`, control's anchors will be updated instead of margins.
	**/
	@:native("SetPosition")
	public overload function setPosition(position:godot.Vector2, keepMargins:Bool):Void;
	#end

	#if doc_gen
	/**		
		Sets the size (see `godot.Control.rectSize`).
		
		If `keep_margins` is `true`, control's anchors will be updated instead of margins.
	**/
	@:native("SetSize")
	public function setSize(size:godot.Vector2, ?keepMargins:Bool):Void;
	#else
	/**		
		Sets the size (see `godot.Control.rectSize`).
		
		If `keep_margins` is `true`, control's anchors will be updated instead of margins.
	**/
	@:native("SetSize")
	public overload function setSize(size:godot.Vector2):Void;

	/**		
		Sets the size (see `godot.Control.rectSize`).
		
		If `keep_margins` is `true`, control's anchors will be updated instead of margins.
	**/
	@:native("SetSize")
	public overload function setSize(size:godot.Vector2, keepMargins:Bool):Void;
	#end

	@:native("SetCustomMinimumSize")
	public function setCustomMinimumSize(size:godot.Vector2):Void;

	#if doc_gen
	/**		
		Sets the `godot.Control.rectGlobalPosition` to given `position`.
		
		If `keep_margins` is `true`, control's anchors will be updated instead of margins.
	**/
	@:native("SetGlobalPosition")
	public function setGlobalPosition(position:godot.Vector2, ?keepMargins:Bool):Void;
	#else
	/**		
		Sets the `godot.Control.rectGlobalPosition` to given `position`.
		
		If `keep_margins` is `true`, control's anchors will be updated instead of margins.
	**/
	@:native("SetGlobalPosition")
	public overload function setGlobalPosition(position:godot.Vector2):Void;

	/**		
		Sets the `godot.Control.rectGlobalPosition` to given `position`.
		
		If `keep_margins` is `true`, control's anchors will be updated instead of margins.
	**/
	@:native("SetGlobalPosition")
	public overload function setGlobalPosition(position:godot.Vector2, keepMargins:Bool):Void;
	#end

	/**		
		Sets the rotation (in radians).
	**/
	@:native("SetRotation")
	public function setRotation(radians:Single):Void;

	@:native("SetRotationDegrees")
	public function setRotationDegrees(degrees:Single):Void;

	@:native("SetScale")
	public function setScale(scale:godot.Vector2):Void;

	@:native("SetPivotOffset")
	public function setPivotOffset(pivotOffset:godot.Vector2):Void;

	/**		
		Returns the anchor identified by `margin` constant from `godot.Margin` enum. A getter method for `godot.Control.marginBottom`, `godot.Control.marginLeft`, `godot.Control.marginRight` and `godot.Control.marginTop`.
	**/
	@:native("GetMargin")
	public function getMargin(margin:godot.Margin):Single;

	/**		
		Returns `godot.Control.marginLeft` and `godot.Control.marginTop`. See also `godot.Control.rectPosition`.
	**/
	@:native("GetBegin")
	public function getBegin():godot.Vector2;

	/**		
		Returns `godot.Control.marginRight` and `godot.Control.marginBottom`.
	**/
	@:native("GetEnd")
	public function getEnd():godot.Vector2;

	@:native("GetPosition")
	public function getPosition():godot.Vector2;

	@:native("GetSize")
	public function getSize():godot.Vector2;

	/**		
		Returns the rotation (in radians).
	**/
	@:native("GetRotation")
	public function getRotation():Single;

	@:native("GetRotationDegrees")
	public function getRotationDegrees():Single;

	@:native("GetScale")
	public function getScale():godot.Vector2;

	@:native("GetPivotOffset")
	public function getPivotOffset():godot.Vector2;

	@:native("GetCustomMinimumSize")
	public function getCustomMinimumSize():godot.Vector2;

	/**		
		Returns the width/height occupied in the parent control.
	**/
	@:native("GetParentAreaSize")
	public function getParentAreaSize():godot.Vector2;

	@:native("GetGlobalPosition")
	public function getGlobalPosition():godot.Vector2;

	/**		
		Returns the position and size of the control relative to the top-left corner of the parent Control. See `godot.Control.rectPosition` and `godot.Control.rectSize`.
	**/
	@:native("GetRect")
	public function getRect():godot.Rect2;

	/**		
		Returns the position and size of the control relative to the top-left corner of the screen. See `godot.Control.rectPosition` and `godot.Control.rectSize`.
	**/
	@:native("GetGlobalRect")
	public function getGlobalRect():godot.Rect2;

	#if doc_gen
	/**		
		Displays a control as modal. Control must be a subwindow. Modal controls capture the input signals until closed or the area outside them is accessed. When a modal control loses focus, or the ESC key is pressed, they automatically hide. Modal controls are used extensively for popup dialogs and menus.
		
		If `exclusive` is `true`, other controls will not receive input and clicking outside this control will not close it.
	**/
	@:native("ShowModal")
	public function showModal(?exclusive:Bool):Void;
	#else
	/**		
		Displays a control as modal. Control must be a subwindow. Modal controls capture the input signals until closed or the area outside them is accessed. When a modal control loses focus, or the ESC key is pressed, they automatically hide. Modal controls are used extensively for popup dialogs and menus.
		
		If `exclusive` is `true`, other controls will not receive input and clicking outside this control will not close it.
	**/
	@:native("ShowModal")
	public overload function showModal():Void;

	/**		
		Displays a control as modal. Control must be a subwindow. Modal controls capture the input signals until closed or the area outside them is accessed. When a modal control loses focus, or the ESC key is pressed, they automatically hide. Modal controls are used extensively for popup dialogs and menus.
		
		If `exclusive` is `true`, other controls will not receive input and clicking outside this control will not close it.
	**/
	@:native("ShowModal")
	public overload function showModal(exclusive:Bool):Void;
	#end

	@:native("SetFocusMode")
	public function setFocusMode(mode:godot.Control_FocusModeEnum):Void;

	@:native("GetFocusMode")
	public function getFocusMode():godot.Control_FocusModeEnum;

	/**		
		Returns `true` if this is the current focused control. See `godot.Control.focusMode`.
	**/
	@:native("HasFocus")
	public function hasFocus():Bool;

	/**		
		Steal the focus from another control and become the focused control (see `godot.Control.focusMode`).
	**/
	@:native("GrabFocus")
	public function grabFocus():Void;

	/**		
		Give up the focus. No other control will be able to receive keyboard input.
	**/
	@:native("ReleaseFocus")
	public function releaseFocus():Void;

	/**		
		Finds the previous (above in the tree) `godot.Control` that can receive the focus.
	**/
	@:native("FindPrevValidFocus")
	public function findPrevValidFocus():godot.Control;

	/**		
		Finds the next (below in the tree) `godot.Control` that can receive the focus.
	**/
	@:native("FindNextValidFocus")
	public function findNextValidFocus():godot.Control;

	/**		
		Returns the control that has the keyboard focus or `null` if none.
	**/
	@:native("GetFocusOwner")
	public function getFocusOwner():godot.Control;

	@:native("SetHSizeFlags")
	public function setHSizeFlags(flags:Int):Void;

	@:native("GetHSizeFlags")
	public function getHSizeFlags():Int;

	@:native("SetStretchRatio")
	public function setStretchRatio(ratio:Single):Void;

	@:native("GetStretchRatio")
	public function getStretchRatio():Single;

	@:native("SetVSizeFlags")
	public function setVSizeFlags(flags:Int):Void;

	@:native("GetVSizeFlags")
	public function getVSizeFlags():Int;

	@:native("SetTheme")
	public function setTheme(theme:godot.Theme):Void;

	@:native("GetTheme")
	public function getTheme():godot.Theme;

	/**		
		Creates a local override for a theme icon with the specified `name`. Local overrides always take precedence when fetching theme items for the control. An override can be removed by assigning it a `null` value.
		
		See also `godot.Control.getIcon`.
	**/
	@:native("AddIconOverride")
	public function addIconOverride(name:std.String, texture:godot.Texture):Void;

	/**		
		Creates a local override for a theme shader with the specified `name`. Local overrides always take precedence when fetching theme items for the control. An override can be removed by assigning it a `null` value.
	**/
	@:native("AddShaderOverride")
	public function addShaderOverride(name:std.String, shader:godot.Shader):Void;

	/**		
		Creates a local override for a theme `godot.StyleBox` with the specified `name`. Local overrides always take precedence when fetching theme items for the control. An override can be removed by assigning it a `null` value.
		
		See also `godot.Control.getStylebox`.
		
		Example of modifying a property in a StyleBox by duplicating it:
		
		```
		
		# The snippet below assumes the child node MyButton has a StyleBoxFlat assigned.
		# Resources are shared across instances, so we need to duplicate it
		# to avoid modifying the appearance of all other buttons.
		var new_stylebox_normal = $MyButton.get_stylebox("normal").duplicate()
		new_stylebox_normal.border_width_top = 3
		new_stylebox_normal.border_color = Color(0, 1, 0.5)
		$MyButton.add_stylebox_override("normal", new_stylebox_normal)
		# Remove the stylebox override.
		$MyButton.add_stylebox_override("normal", null)
		
		```
	**/
	@:native("AddStyleboxOverride")
	public function addStyleboxOverride(name:std.String, stylebox:godot.StyleBox):Void;

	/**		
		Creates a local override for a theme `godot.Font` with the specified `name`. Local overrides always take precedence when fetching theme items for the control. An override can be removed by assigning it a `null` value.
		
		See also `godot.Control.getFont`.
	**/
	@:native("AddFontOverride")
	public function addFontOverride(name:std.String, font:godot.Font):Void;

	/**		
		Creates a local override for a theme `godot.Color` with the specified `name`. Local overrides always take precedence when fetching theme items for the control. An override cannot be removed, but it can be overridden with the corresponding default value.
		
		See also `godot.Control.getColor`.
		
		Example of overriding a label's color and resetting it later:
		
		```
		
		# Given the child Label node "MyLabel", override its font color with a custom value.
		$MyLabel.add_color_override("font_color", Color(1, 0.5, 0))
		# Reset the font color of the child label.
		$MyLabel.add_color_override("font_color", get_color("font_color", "Label"))
		
		```
	**/
	@:native("AddColorOverride")
	public function addColorOverride(name:std.String, color:godot.Color):Void;

	/**		
		Creates a local override for a theme constant with the specified `name`. Local overrides always take precedence when fetching theme items for the control. An override cannot be removed, but it can be overridden with the corresponding default value.
		
		See also `godot.Control.getConstant`.
	**/
	@:native("AddConstantOverride")
	public function addConstantOverride(name:std.String, constant:Int):Void;

	#if doc_gen
	/**		
		Returns an icon from the first matching `godot.Theme` in the tree if that `godot.Theme` has an icon item with the specified `name` and `theme_type`.
		
		See `godot.Control.getColor` for details.
	**/
	@:native("GetIcon")
	public function getIcon(name:std.String, ?themeType:std.String):godot.Texture;
	#else
	/**		
		Returns an icon from the first matching `godot.Theme` in the tree if that `godot.Theme` has an icon item with the specified `name` and `theme_type`.
		
		See `godot.Control.getColor` for details.
	**/
	@:native("GetIcon")
	public overload function getIcon(name:std.String):godot.Texture;

	/**		
		Returns an icon from the first matching `godot.Theme` in the tree if that `godot.Theme` has an icon item with the specified `name` and `theme_type`.
		
		See `godot.Control.getColor` for details.
	**/
	@:native("GetIcon")
	public overload function getIcon(name:std.String, themeType:std.String):godot.Texture;
	#end

	#if doc_gen
	/**		
		Returns a `godot.StyleBox` from the first matching `godot.Theme` in the tree if that `godot.Theme` has a stylebox item with the specified `name` and `theme_type`.
		
		See `godot.Control.getColor` for details.
	**/
	@:native("GetStylebox")
	public function getStylebox(name:std.String, ?themeType:std.String):godot.StyleBox;
	#else
	/**		
		Returns a `godot.StyleBox` from the first matching `godot.Theme` in the tree if that `godot.Theme` has a stylebox item with the specified `name` and `theme_type`.
		
		See `godot.Control.getColor` for details.
	**/
	@:native("GetStylebox")
	public overload function getStylebox(name:std.String):godot.StyleBox;

	/**		
		Returns a `godot.StyleBox` from the first matching `godot.Theme` in the tree if that `godot.Theme` has a stylebox item with the specified `name` and `theme_type`.
		
		See `godot.Control.getColor` for details.
	**/
	@:native("GetStylebox")
	public overload function getStylebox(name:std.String, themeType:std.String):godot.StyleBox;
	#end

	#if doc_gen
	/**		
		Returns a `godot.Font` from the first matching `godot.Theme` in the tree if that `godot.Theme` has a font item with the specified `name` and `theme_type`.
		
		See `godot.Control.getColor` for details.
	**/
	@:native("GetFont")
	public function getFont(name:std.String, ?themeType:std.String):godot.Font;
	#else
	/**		
		Returns a `godot.Font` from the first matching `godot.Theme` in the tree if that `godot.Theme` has a font item with the specified `name` and `theme_type`.
		
		See `godot.Control.getColor` for details.
	**/
	@:native("GetFont")
	public overload function getFont(name:std.String):godot.Font;

	/**		
		Returns a `godot.Font` from the first matching `godot.Theme` in the tree if that `godot.Theme` has a font item with the specified `name` and `theme_type`.
		
		See `godot.Control.getColor` for details.
	**/
	@:native("GetFont")
	public overload function getFont(name:std.String, themeType:std.String):godot.Font;
	#end

	#if doc_gen
	/**		
		Returns a `godot.Color` from the first matching `godot.Theme` in the tree if that `godot.Theme` has a color item with the specified `name` and `theme_type`. If `theme_type` is omitted the class name of the current control is used as the type. If the type is a class name its parent classes are also checked, in order of inheritance.
		
		For the current control its local overrides are considered first (see `godot.Control.addColorOverride`), then its assigned `godot.Control.theme`. After the current control, each parent control and its assigned `godot.Control.theme` are considered; controls without a `godot.Control.theme` assigned are skipped. If no matching `godot.Theme` is found in the tree, a custom project `godot.Theme` (see ) and the default `godot.Theme` are used.
		
		```
		
		func _ready():
		# Get the font color defined for the current Control's class, if it exists.
		modulate = get_color("font_color")
		# Get the font color defined for the Button class.
		modulate = get_color("font_color", "Button")
		
		```
	**/
	@:native("GetColor")
	public function getColor(name:std.String, ?themeType:std.String):godot.Color;
	#else
	/**		
		Returns a `godot.Color` from the first matching `godot.Theme` in the tree if that `godot.Theme` has a color item with the specified `name` and `theme_type`. If `theme_type` is omitted the class name of the current control is used as the type. If the type is a class name its parent classes are also checked, in order of inheritance.
		
		For the current control its local overrides are considered first (see `godot.Control.addColorOverride`), then its assigned `godot.Control.theme`. After the current control, each parent control and its assigned `godot.Control.theme` are considered; controls without a `godot.Control.theme` assigned are skipped. If no matching `godot.Theme` is found in the tree, a custom project `godot.Theme` (see ) and the default `godot.Theme` are used.
		
		```
		
		func _ready():
		# Get the font color defined for the current Control's class, if it exists.
		modulate = get_color("font_color")
		# Get the font color defined for the Button class.
		modulate = get_color("font_color", "Button")
		
		```
	**/
	@:native("GetColor")
	public overload function getColor(name:std.String):godot.Color;

	/**		
		Returns a `godot.Color` from the first matching `godot.Theme` in the tree if that `godot.Theme` has a color item with the specified `name` and `theme_type`. If `theme_type` is omitted the class name of the current control is used as the type. If the type is a class name its parent classes are also checked, in order of inheritance.
		
		For the current control its local overrides are considered first (see `godot.Control.addColorOverride`), then its assigned `godot.Control.theme`. After the current control, each parent control and its assigned `godot.Control.theme` are considered; controls without a `godot.Control.theme` assigned are skipped. If no matching `godot.Theme` is found in the tree, a custom project `godot.Theme` (see ) and the default `godot.Theme` are used.
		
		```
		
		func _ready():
		# Get the font color defined for the current Control's class, if it exists.
		modulate = get_color("font_color")
		# Get the font color defined for the Button class.
		modulate = get_color("font_color", "Button")
		
		```
	**/
	@:native("GetColor")
	public overload function getColor(name:std.String, themeType:std.String):godot.Color;
	#end

	#if doc_gen
	/**		
		Returns a constant from the first matching `godot.Theme` in the tree if that `godot.Theme` has a constant item with the specified `name` and `theme_type`.
		
		See `godot.Control.getColor` for details.
	**/
	@:native("GetConstant")
	public function getConstant(name:std.String, ?themeType:std.String):Int;
	#else
	/**		
		Returns a constant from the first matching `godot.Theme` in the tree if that `godot.Theme` has a constant item with the specified `name` and `theme_type`.
		
		See `godot.Control.getColor` for details.
	**/
	@:native("GetConstant")
	public overload function getConstant(name:std.String):Int;

	/**		
		Returns a constant from the first matching `godot.Theme` in the tree if that `godot.Theme` has a constant item with the specified `name` and `theme_type`.
		
		See `godot.Control.getColor` for details.
	**/
	@:native("GetConstant")
	public overload function getConstant(name:std.String, themeType:std.String):Int;
	#end

	/**		
		Returns `true` if there is a local override for a theme icon with the specified `name` in this `godot.Control` node.
		
		See `godot.Control.addIconOverride`.
	**/
	@:native("HasIconOverride")
	public function hasIconOverride(name:std.String):Bool;

	/**		
		Returns `true` if there is a local override for a theme shader with the specified `name` in this `godot.Control` node.
		
		See `godot.Control.addShaderOverride`.
	**/
	@:native("HasShaderOverride")
	public function hasShaderOverride(name:std.String):Bool;

	/**		
		Returns `true` if there is a local override for a theme `godot.StyleBox` with the specified `name` in this `godot.Control` node.
		
		See `godot.Control.addStyleboxOverride`.
	**/
	@:native("HasStyleboxOverride")
	public function hasStyleboxOverride(name:std.String):Bool;

	/**		
		Returns `true` if there is a local override for a theme `godot.Font` with the specified `name` in this `godot.Control` node.
		
		See `godot.Control.addFontOverride`.
	**/
	@:native("HasFontOverride")
	public function hasFontOverride(name:std.String):Bool;

	/**		
		Returns `true` if there is a local override for a theme `godot.Color` with the specified `name` in this `godot.Control` node.
		
		See `godot.Control.addColorOverride`.
	**/
	@:native("HasColorOverride")
	public function hasColorOverride(name:std.String):Bool;

	/**		
		Returns `true` if there is a local override for a theme constant with the specified `name` in this `godot.Control` node.
		
		See `godot.Control.addConstantOverride`.
	**/
	@:native("HasConstantOverride")
	public function hasConstantOverride(name:std.String):Bool;

	#if doc_gen
	/**		
		Returns `true` if there is a matching `godot.Theme` in the tree that has an icon item with the specified `name` and `theme_type`.
		
		See `godot.Control.getColor` for details.
	**/
	@:native("HasIcon")
	public function hasIcon(name:std.String, ?themeType:std.String):Bool;
	#else
	/**		
		Returns `true` if there is a matching `godot.Theme` in the tree that has an icon item with the specified `name` and `theme_type`.
		
		See `godot.Control.getColor` for details.
	**/
	@:native("HasIcon")
	public overload function hasIcon(name:std.String):Bool;

	/**		
		Returns `true` if there is a matching `godot.Theme` in the tree that has an icon item with the specified `name` and `theme_type`.
		
		See `godot.Control.getColor` for details.
	**/
	@:native("HasIcon")
	public overload function hasIcon(name:std.String, themeType:std.String):Bool;
	#end

	#if doc_gen
	/**		
		Returns `true` if there is a matching `godot.Theme` in the tree that has a stylebox item with the specified `name` and `theme_type`.
		
		See `godot.Control.getColor` for details.
	**/
	@:native("HasStylebox")
	public function hasStylebox(name:std.String, ?themeType:std.String):Bool;
	#else
	/**		
		Returns `true` if there is a matching `godot.Theme` in the tree that has a stylebox item with the specified `name` and `theme_type`.
		
		See `godot.Control.getColor` for details.
	**/
	@:native("HasStylebox")
	public overload function hasStylebox(name:std.String):Bool;

	/**		
		Returns `true` if there is a matching `godot.Theme` in the tree that has a stylebox item with the specified `name` and `theme_type`.
		
		See `godot.Control.getColor` for details.
	**/
	@:native("HasStylebox")
	public overload function hasStylebox(name:std.String, themeType:std.String):Bool;
	#end

	#if doc_gen
	/**		
		Returns `true` if there is a matching `godot.Theme` in the tree that has a font item with the specified `name` and `theme_type`.
		
		See `godot.Control.getColor` for details.
	**/
	@:native("HasFont")
	public function hasFont(name:std.String, ?themeType:std.String):Bool;
	#else
	/**		
		Returns `true` if there is a matching `godot.Theme` in the tree that has a font item with the specified `name` and `theme_type`.
		
		See `godot.Control.getColor` for details.
	**/
	@:native("HasFont")
	public overload function hasFont(name:std.String):Bool;

	/**		
		Returns `true` if there is a matching `godot.Theme` in the tree that has a font item with the specified `name` and `theme_type`.
		
		See `godot.Control.getColor` for details.
	**/
	@:native("HasFont")
	public overload function hasFont(name:std.String, themeType:std.String):Bool;
	#end

	#if doc_gen
	/**		
		Returns `true` if there is a matching `godot.Theme` in the tree that has a color item with the specified `name` and `theme_type`.
		
		See `godot.Control.getColor` for details.
	**/
	@:native("HasColor")
	public function hasColor(name:std.String, ?themeType:std.String):Bool;
	#else
	/**		
		Returns `true` if there is a matching `godot.Theme` in the tree that has a color item with the specified `name` and `theme_type`.
		
		See `godot.Control.getColor` for details.
	**/
	@:native("HasColor")
	public overload function hasColor(name:std.String):Bool;

	/**		
		Returns `true` if there is a matching `godot.Theme` in the tree that has a color item with the specified `name` and `theme_type`.
		
		See `godot.Control.getColor` for details.
	**/
	@:native("HasColor")
	public overload function hasColor(name:std.String, themeType:std.String):Bool;
	#end

	#if doc_gen
	/**		
		Returns `true` if there is a matching `godot.Theme` in the tree that has a constant item with the specified `name` and `theme_type`.
		
		See `godot.Control.getColor` for details.
	**/
	@:native("HasConstant")
	public function hasConstant(name:std.String, ?themeType:std.String):Bool;
	#else
	/**		
		Returns `true` if there is a matching `godot.Theme` in the tree that has a constant item with the specified `name` and `theme_type`.
		
		See `godot.Control.getColor` for details.
	**/
	@:native("HasConstant")
	public overload function hasConstant(name:std.String):Bool;

	/**		
		Returns `true` if there is a matching `godot.Theme` in the tree that has a constant item with the specified `name` and `theme_type`.
		
		See `godot.Control.getColor` for details.
	**/
	@:native("HasConstant")
	public overload function hasConstant(name:std.String, themeType:std.String):Bool;
	#end

	/**		
		Returns the default font from the first matching `godot.Theme` in the tree if that `godot.Theme` has a valid `godot.Theme.defaultFont` value.
		
		See `godot.Control.getColor` for details.
	**/
	@:native("GetThemeDefaultFont")
	public function getThemeDefaultFont():godot.Font;

	/**		
		Returns the parent control node.
	**/
	@:native("GetParentControl")
	public function getParentControl():godot.Control;

	@:native("SetHGrowDirection")
	public function setHGrowDirection(direction:godot.Control_GrowDirection):Void;

	@:native("GetHGrowDirection")
	public function getHGrowDirection():godot.Control_GrowDirection;

	@:native("SetVGrowDirection")
	public function setVGrowDirection(direction:godot.Control_GrowDirection):Void;

	@:native("GetVGrowDirection")
	public function getVGrowDirection():godot.Control_GrowDirection;

	@:native("SetTooltip")
	public function setTooltip(tooltip:std.String):Void;

	#if doc_gen
	/**		
		Returns the tooltip, which will appear when the cursor is resting over this control. See `godot.Control.hintTooltip`.
		
		@param atPosition If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("GetTooltip")
	public function getTooltip(?atPosition:Null<godot.Vector2>):std.String;
	#else
	/**		
		Returns the tooltip, which will appear when the cursor is resting over this control. See `godot.Control.hintTooltip`.
		
		@param atPosition If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("GetTooltip")
	public overload function getTooltip():std.String;

	/**		
		Returns the tooltip, which will appear when the cursor is resting over this control. See `godot.Control.hintTooltip`.
		
		@param atPosition If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("GetTooltip")
	public overload function getTooltip(atPosition:Nullable1<godot.Vector2>):std.String;
	#end

	@:native("SetDefaultCursorShape")
	public function setDefaultCursorShape(shape:godot.Control_CursorShape):Void;

	@:native("GetDefaultCursorShape")
	public function getDefaultCursorShape():godot.Control_CursorShape;

	#if doc_gen
	/**		
		Returns the mouse cursor shape the control displays on mouse hover. See `godot.Control_CursorShape`.
		
		@param position If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("GetCursorShape")
	public function getCursorShape(?position:Null<godot.Vector2>):godot.Control_CursorShape;
	#else
	/**		
		Returns the mouse cursor shape the control displays on mouse hover. See `godot.Control_CursorShape`.
		
		@param position If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("GetCursorShape")
	public overload function getCursorShape():godot.Control_CursorShape;

	/**		
		Returns the mouse cursor shape the control displays on mouse hover. See `godot.Control_CursorShape`.
		
		@param position If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("GetCursorShape")
	public overload function getCursorShape(position:Nullable1<godot.Vector2>):godot.Control_CursorShape;
	#end

	/**		
		Sets the anchor identified by `margin` constant from `godot.Margin` enum to `godot.Control` at `neighbor` node path. A setter method for `godot.Control.focusNeighbourBottom`, `godot.Control.focusNeighbourLeft`, `godot.Control.focusNeighbourRight` and `godot.Control.focusNeighbourTop`.
	**/
	@:native("SetFocusNeighbour")
	public function setFocusNeighbour(margin:godot.Margin, neighbour:godot.NodePath):Void;

	/**		
		Returns the focus neighbour identified by `margin` constant from `godot.Margin` enum. A getter method for `godot.Control.focusNeighbourBottom`, `godot.Control.focusNeighbourLeft`, `godot.Control.focusNeighbourRight` and `godot.Control.focusNeighbourTop`.
	**/
	@:native("GetFocusNeighbour")
	public function getFocusNeighbour(margin:godot.Margin):godot.NodePath;

	@:native("SetFocusNext")
	public function setFocusNext(next:godot.NodePath):Void;

	@:native("GetFocusNext")
	public function getFocusNext():godot.NodePath;

	@:native("SetFocusPrevious")
	public function setFocusPrevious(previous:godot.NodePath):Void;

	@:native("GetFocusPrevious")
	public function getFocusPrevious():godot.NodePath;

	/**		
		Forces drag and bypasses `godot.Control.getDragData` and `godot.Control.setDragPreview` by passing `data` and `preview`. Drag will start even if the mouse is neither over nor pressed on this control.
		
		The methods `godot.Control.canDropData` and `godot.Control.dropData` must be implemented on controls that want to receive drop data.
	**/
	@:native("ForceDrag")
	public function forceDrag(data:Dynamic, preview:godot.Control):Void;

	@:native("SetMouseFilter")
	public function setMouseFilter(filter:godot.Control_MouseFilterEnum):Void;

	@:native("GetMouseFilter")
	public function getMouseFilter():godot.Control_MouseFilterEnum;

	@:native("SetPassOnModalCloseClick")
	public function setPassOnModalCloseClick(enabled:Bool):Void;

	@:native("GetPassOnModalCloseClick")
	public function getPassOnModalCloseClick():Bool;

	@:native("SetClipContents")
	public function setClipContents(enable:Bool):Void;

	@:native("IsClippingContents")
	public function isClippingContents():Bool;

	/**		
		Creates an `godot.InputEventMouseButton` that attempts to click the control. If the event is received, the control acquires focus.
		
		```
		
		func _process(delta):
		grab_click_focus() #when clicking another Control node, this node will be clicked instead
		
		```
	**/
	@:native("GrabClickFocus")
	public function grabClickFocus():Void;

	/**		
		Forwards the handling of this control's drag and drop to `target` control.
		
		Forwarding can be implemented in the target control similar to the methods `godot.Control.getDragData`, `godot.Control.canDropData`, and `godot.Control.dropData` but with two differences:
		
		1. The function name must be suffixed with _fw
		
		2. The function must take an extra argument that is the control doing the forwarding
		
		```
		
		# ThisControl.gd
		extends Control
		func _ready():
		set_drag_forwarding(target_control)
		
		# TargetControl.gd
		extends Control
		func can_drop_data_fw(position, data, from_control):
		return true
		
		func drop_data_fw(position, data, from_control):
		my_handle_data(data)
		
		func get_drag_data_fw(position, from_control):
		set_drag_preview(my_preview)
		return my_data()
		
		```
	**/
	@:native("SetDragForwarding")
	public function setDragForwarding(target:godot.Control):Void;

	/**		
		Shows the given control at the mouse pointer. A good time to call this method is in `godot.Control.getDragData`. The control must not be in the scene tree. You should not free the control, and you should not keep a reference to the control beyond the duration of the drag. It will be deleted automatically after the drag has ended.
		
		```
		
		export (Color, RGBA) var color = Color(1, 0, 0, 1)
		
		func get_drag_data(position):
		# Use a control that is not in the tree
		var cpb = ColorPickerButton.new()
		cpb.color = color
		cpb.rect_size = Vector2(50, 50)
		set_drag_preview(cpb)
		return color
		
		```
	**/
	@:native("SetDragPreview")
	public function setDragPreview(control:godot.Control):Void;

	/**		
		Moves the mouse cursor to `to_position`, relative to `godot.Control.rectPosition` of this `godot.Control`.
	**/
	@:native("WarpMouse")
	public function warpMouse(toPosition:godot.Vector2):Void;

	/**		
		Invalidates the size cache in this node and in parent nodes up to toplevel. Intended to be used with `godot.Control.getMinimumSize` when the return value is changed. Setting `godot.Control.rectMinSize` directly calls this method automatically.
	**/
	@:native("MinimumSizeChanged")
	public function minimumSizeChanged():Void;
}
