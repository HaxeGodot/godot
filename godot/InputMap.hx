// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Manages all `godot.InputEventAction` which can be created/modified from the project settings menu Project &gt; Project Settings &gt; Input Map or in code with `godot.InputMap.addAction` and `godot.InputMap.actionAddEvent`. See `godot.Node._Input`.
**/
@:libType
@:csNative
@:native("Godot.InputMap")
@:autoBuild(godot.Godot.buildUserClass())
extern class InputMap {
	@:native("Singleton")
	public static var SINGLETON(default, never):godot.Object;

	/**		
		Returns `true` if the `godot.InputMap` has a registered action with the given name.
	**/
	@:native("HasAction")
	public static function hasAction(action:std.String):Bool;

	/**		
		Returns an array of all actions in the `godot.InputMap`.
	**/
	@:native("GetActions")
	public static function getActions():godot.collections.Array;

	#if doc_gen
	/**		
		Adds an empty action to the `godot.InputMap` with a configurable `deadzone`.
		
		An `godot.InputEvent` can then be added to this action with `godot.InputMap.actionAddEvent`.
	**/
	@:native("AddAction")
	public static function addAction(action:std.String, ?deadzone:Single):Void;
	#else
	/**		
		Adds an empty action to the `godot.InputMap` with a configurable `deadzone`.
		
		An `godot.InputEvent` can then be added to this action with `godot.InputMap.actionAddEvent`.
	**/
	@:native("AddAction")
	public static overload function addAction(action:std.String):Void;

	/**		
		Adds an empty action to the `godot.InputMap` with a configurable `deadzone`.
		
		An `godot.InputEvent` can then be added to this action with `godot.InputMap.actionAddEvent`.
	**/
	@:native("AddAction")
	public static overload function addAction(action:std.String, deadzone:Single):Void;
	#end

	/**		
		Removes an action from the `godot.InputMap`.
	**/
	@:native("EraseAction")
	public static function eraseAction(action:std.String):Void;

	/**		
		Sets a deadzone value for the action.
	**/
	@:native("ActionSetDeadzone")
	public static function actionSetDeadzone(action:std.String, deadzone:Single):Void;

	/**		
		Adds an `godot.InputEvent` to an action. This `godot.InputEvent` will trigger the action.
	**/
	@:native("ActionAddEvent")
	public static function actionAddEvent(action:std.String, event:godot.InputEvent):Void;

	/**		
		Returns `true` if the action has the given `godot.InputEvent` associated with it.
	**/
	@:native("ActionHasEvent")
	public static function actionHasEvent(action:std.String, event:godot.InputEvent):Bool;

	/**		
		Removes an `godot.InputEvent` from an action.
	**/
	@:native("ActionEraseEvent")
	public static function actionEraseEvent(action:std.String, event:godot.InputEvent):Void;

	/**		
		Removes all events from an action.
	**/
	@:native("ActionEraseEvents")
	public static function actionEraseEvents(action:std.String):Void;

	/**		
		Returns an array of `godot.InputEvent`s associated with a given action.
	**/
	@:native("GetActionList")
	public static function getActionList(action:std.String):godot.collections.Array;

	/**		
		Returns `true` if the given event is part of an existing action. This method ignores keyboard modifiers if the given `godot.InputEvent` is not pressed (for proper release detection). See `godot.InputMap.actionHasEvent` if you don't want this behavior.
	**/
	@:native("EventIsAction")
	public static function eventIsAction(event:godot.InputEvent, action:std.String):Bool;

	/**		
		Clears all `godot.InputEventAction` in the `godot.InputMap` and load it anew from `godot.ProjectSettings`.
	**/
	@:native("LoadFromGlobals")
	public static function loadFromGlobals():Void;
}
