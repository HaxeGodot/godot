// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Base class of all sort of input event. See `godot.Node._Input`.
**/
@:libType
@:csNative
@:native("Godot.InputEvent")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class InputEvent extends godot.Resource {
	/**		
		The event's device ID.
		
		Note: This device ID will always be `-1` for emulated mouse input from a touchscreen. This can be used to distinguish emulated mouse input from physical mouse input.
	**/
	@:native("Device")
	public var device:Int;

	@:native("SetDevice")
	public function setDevice(device:Int):Void;

	@:native("GetDevice")
	public function getDevice():Int;

	#if doc_gen
	/**		
		Returns `true` if this input event matches a pre-defined action of any type.
		
		If `exact_match` is `false`, it ignores the input modifiers for `godot.InputEventKey` and `godot.InputEventMouseButton` events, and the direction for `godot.InputEventJoypadMotion` events.
	**/
	@:native("IsAction")
	public function isAction(action:std.String, ?exactMatch:Bool):Bool;
	#else
	/**		
		Returns `true` if this input event matches a pre-defined action of any type.
		
		If `exact_match` is `false`, it ignores the input modifiers for `godot.InputEventKey` and `godot.InputEventMouseButton` events, and the direction for `godot.InputEventJoypadMotion` events.
	**/
	@:native("IsAction")
	public overload function isAction(action:std.String):Bool;

	/**		
		Returns `true` if this input event matches a pre-defined action of any type.
		
		If `exact_match` is `false`, it ignores the input modifiers for `godot.InputEventKey` and `godot.InputEventMouseButton` events, and the direction for `godot.InputEventJoypadMotion` events.
	**/
	@:native("IsAction")
	public overload function isAction(action:std.String, exactMatch:Bool):Bool;
	#end

	#if doc_gen
	/**		
		Returns `true` if the given action is being pressed (and is not an echo event for `godot.InputEventKey` events, unless `allow_echo` is `true`). Not relevant for events of type `godot.InputEventMouseMotion` or `godot.InputEventScreenDrag`.
		
		If `exact_match` is `false`, it ignores the input modifiers for `godot.InputEventKey` and `godot.InputEventMouseButton` events, and the direction for `godot.InputEventJoypadMotion` events.
		
		Note: Due to keyboard ghosting, `godot.InputEvent.isActionPressed` may return `false` even if one of the action's keys is pressed. See [https://docs.godotengine.org/en/3.4/tutorials/inputs/input_examples.html#keyboard-events](Input examples) in the documentation for more information.
	**/
	@:native("IsActionPressed")
	public function isActionPressed(action:std.String, ?allowEcho:Bool, ?exactMatch:Bool):Bool;
	#else
	/**		
		Returns `true` if the given action is being pressed (and is not an echo event for `godot.InputEventKey` events, unless `allow_echo` is `true`). Not relevant for events of type `godot.InputEventMouseMotion` or `godot.InputEventScreenDrag`.
		
		If `exact_match` is `false`, it ignores the input modifiers for `godot.InputEventKey` and `godot.InputEventMouseButton` events, and the direction for `godot.InputEventJoypadMotion` events.
		
		Note: Due to keyboard ghosting, `godot.InputEvent.isActionPressed` may return `false` even if one of the action's keys is pressed. See [https://docs.godotengine.org/en/3.4/tutorials/inputs/input_examples.html#keyboard-events](Input examples) in the documentation for more information.
	**/
	@:native("IsActionPressed")
	public overload function isActionPressed(action:std.String):Bool;

	/**		
		Returns `true` if the given action is being pressed (and is not an echo event for `godot.InputEventKey` events, unless `allow_echo` is `true`). Not relevant for events of type `godot.InputEventMouseMotion` or `godot.InputEventScreenDrag`.
		
		If `exact_match` is `false`, it ignores the input modifiers for `godot.InputEventKey` and `godot.InputEventMouseButton` events, and the direction for `godot.InputEventJoypadMotion` events.
		
		Note: Due to keyboard ghosting, `godot.InputEvent.isActionPressed` may return `false` even if one of the action's keys is pressed. See [https://docs.godotengine.org/en/3.4/tutorials/inputs/input_examples.html#keyboard-events](Input examples) in the documentation for more information.
	**/
	@:native("IsActionPressed")
	public overload function isActionPressed(action:std.String, allowEcho:Bool):Bool;

	/**		
		Returns `true` if the given action is being pressed (and is not an echo event for `godot.InputEventKey` events, unless `allow_echo` is `true`). Not relevant for events of type `godot.InputEventMouseMotion` or `godot.InputEventScreenDrag`.
		
		If `exact_match` is `false`, it ignores the input modifiers for `godot.InputEventKey` and `godot.InputEventMouseButton` events, and the direction for `godot.InputEventJoypadMotion` events.
		
		Note: Due to keyboard ghosting, `godot.InputEvent.isActionPressed` may return `false` even if one of the action's keys is pressed. See [https://docs.godotengine.org/en/3.4/tutorials/inputs/input_examples.html#keyboard-events](Input examples) in the documentation for more information.
	**/
	@:native("IsActionPressed")
	public overload function isActionPressed(action:std.String, allowEcho:Bool, exactMatch:Bool):Bool;
	#end

	#if doc_gen
	/**		
		Returns `true` if the given action is released (i.e. not pressed). Not relevant for events of type `godot.InputEventMouseMotion` or `godot.InputEventScreenDrag`.
		
		If `exact_match` is `false`, it ignores the input modifiers for `godot.InputEventKey` and `godot.InputEventMouseButton` events, and the direction for `godot.InputEventJoypadMotion` events.
	**/
	@:native("IsActionReleased")
	public function isActionReleased(action:std.String, ?exactMatch:Bool):Bool;
	#else
	/**		
		Returns `true` if the given action is released (i.e. not pressed). Not relevant for events of type `godot.InputEventMouseMotion` or `godot.InputEventScreenDrag`.
		
		If `exact_match` is `false`, it ignores the input modifiers for `godot.InputEventKey` and `godot.InputEventMouseButton` events, and the direction for `godot.InputEventJoypadMotion` events.
	**/
	@:native("IsActionReleased")
	public overload function isActionReleased(action:std.String):Bool;

	/**		
		Returns `true` if the given action is released (i.e. not pressed). Not relevant for events of type `godot.InputEventMouseMotion` or `godot.InputEventScreenDrag`.
		
		If `exact_match` is `false`, it ignores the input modifiers for `godot.InputEventKey` and `godot.InputEventMouseButton` events, and the direction for `godot.InputEventJoypadMotion` events.
	**/
	@:native("IsActionReleased")
	public overload function isActionReleased(action:std.String, exactMatch:Bool):Bool;
	#end

	#if doc_gen
	/**		
		Returns a value between 0.0 and 1.0 depending on the given actions' state. Useful for getting the value of events of type `godot.InputEventJoypadMotion`.
		
		If `exact_match` is `false`, it ignores the input modifiers for `godot.InputEventKey` and `godot.InputEventMouseButton` events, and the direction for `godot.InputEventJoypadMotion` events.
	**/
	@:native("GetActionStrength")
	public function getActionStrength(action:std.String, ?exactMatch:Bool):Single;
	#else
	/**		
		Returns a value between 0.0 and 1.0 depending on the given actions' state. Useful for getting the value of events of type `godot.InputEventJoypadMotion`.
		
		If `exact_match` is `false`, it ignores the input modifiers for `godot.InputEventKey` and `godot.InputEventMouseButton` events, and the direction for `godot.InputEventJoypadMotion` events.
	**/
	@:native("GetActionStrength")
	public overload function getActionStrength(action:std.String):Single;

	/**		
		Returns a value between 0.0 and 1.0 depending on the given actions' state. Useful for getting the value of events of type `godot.InputEventJoypadMotion`.
		
		If `exact_match` is `false`, it ignores the input modifiers for `godot.InputEventKey` and `godot.InputEventMouseButton` events, and the direction for `godot.InputEventJoypadMotion` events.
	**/
	@:native("GetActionStrength")
	public overload function getActionStrength(action:std.String, exactMatch:Bool):Single;
	#end

	/**		
		Returns `true` if this input event is pressed. Not relevant for events of type `godot.InputEventMouseMotion` or `godot.InputEventScreenDrag`.
		
		Note: Due to keyboard ghosting, `godot.InputEvent.isActionPressed` may return `false` even if one of the action's keys is pressed. See [https://docs.godotengine.org/en/3.4/tutorials/inputs/input_examples.html#keyboard-events](Input examples) in the documentation for more information.
	**/
	@:native("IsPressed")
	public function isPressed():Bool;

	/**		
		Returns `true` if this input event is an echo event (only for events of type `godot.InputEventKey`).
	**/
	@:native("IsEcho")
	public function isEcho():Bool;

	/**		
		Returns a `String` representation of the event.
	**/
	@:native("AsText")
	public function asText():std.String;

	#if doc_gen
	/**		
		Returns `true` if the specified `event` matches this event. Only valid for action events i.e key (`godot.InputEventKey`), button (`godot.InputEventMouseButton` or `godot.InputEventJoypadButton`), axis `godot.InputEventJoypadMotion` or action (`godot.InputEventAction`) events.
		
		If `exact_match` is `false`, it ignores the input modifiers for `godot.InputEventKey` and `godot.InputEventMouseButton` events, and the direction for `godot.InputEventJoypadMotion` events.
	**/
	@:native("ShortcutMatch")
	public function shortcutMatch(event:godot.InputEvent, ?exactMatch:Bool):Bool;
	#else
	/**		
		Returns `true` if the specified `event` matches this event. Only valid for action events i.e key (`godot.InputEventKey`), button (`godot.InputEventMouseButton` or `godot.InputEventJoypadButton`), axis `godot.InputEventJoypadMotion` or action (`godot.InputEventAction`) events.
		
		If `exact_match` is `false`, it ignores the input modifiers for `godot.InputEventKey` and `godot.InputEventMouseButton` events, and the direction for `godot.InputEventJoypadMotion` events.
	**/
	@:native("ShortcutMatch")
	public overload function shortcutMatch(event:godot.InputEvent):Bool;

	/**		
		Returns `true` if the specified `event` matches this event. Only valid for action events i.e key (`godot.InputEventKey`), button (`godot.InputEventMouseButton` or `godot.InputEventJoypadButton`), axis `godot.InputEventJoypadMotion` or action (`godot.InputEventAction`) events.
		
		If `exact_match` is `false`, it ignores the input modifiers for `godot.InputEventKey` and `godot.InputEventMouseButton` events, and the direction for `godot.InputEventJoypadMotion` events.
	**/
	@:native("ShortcutMatch")
	public overload function shortcutMatch(event:godot.InputEvent, exactMatch:Bool):Bool;
	#end

	/**		
		Returns `true` if this input event's type is one that can be assigned to an input action.
	**/
	@:native("IsActionType")
	public function isActionType():Bool;

	/**		
		Returns `true` if the given input event and this input event can be added together (only for events of type `godot.InputEventMouseMotion`).
		
		The given input event's position, global position and speed will be copied. The resulting `relative` is a sum of both events. Both events' modifiers have to be identical.
	**/
	@:native("Accumulate")
	public function accumulate(withEvent:godot.InputEvent):Bool;

	#if doc_gen
	/**		
		Returns a copy of the given input event which has been offset by `local_ofs` and transformed by `xform`. Relevant for events of type `godot.InputEventMouseButton`, `godot.InputEventMouseMotion`, `godot.InputEventScreenTouch`, `godot.InputEventScreenDrag`, `godot.InputEventMagnifyGesture` and `godot.InputEventPanGesture`.
		
		@param localOfs If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("XformedBy")
	public function xformedBy(xform:godot.Transform2D, ?localOfs:Null<godot.Vector2>):godot.InputEvent;
	#else
	/**		
		Returns a copy of the given input event which has been offset by `local_ofs` and transformed by `xform`. Relevant for events of type `godot.InputEventMouseButton`, `godot.InputEventMouseMotion`, `godot.InputEventScreenTouch`, `godot.InputEventScreenDrag`, `godot.InputEventMagnifyGesture` and `godot.InputEventPanGesture`.
		
		@param localOfs If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("XformedBy")
	public overload function xformedBy(xform:godot.Transform2D):godot.InputEvent;

	/**		
		Returns a copy of the given input event which has been offset by `local_ofs` and transformed by `xform`. Relevant for events of type `godot.InputEventMouseButton`, `godot.InputEventMouseMotion`, `godot.InputEventScreenTouch`, `godot.InputEventScreenDrag`, `godot.InputEventMagnifyGesture` and `godot.InputEventPanGesture`.
		
		@param localOfs If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("XformedBy")
	public overload function xformedBy(xform:godot.Transform2D, localOfs:Nullable1<godot.Vector2>):godot.InputEvent;
	#end
}
