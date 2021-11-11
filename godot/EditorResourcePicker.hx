// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This `godot.Control` node is used in the editor's Inspector dock to allow editing of `godot.Resource` type properties. It provides options for creating, loading, saving and converting resources. Can be used with `godot.EditorInspectorPlugin` to recreate the same behavior.

Note: This `godot.Control` does not include any editor for the resource, as editing is controlled by the Inspector dock itself or sub-Inspectors.
**/
@:libType
@:csNative
@:native("Godot.EditorResourcePicker")
@:autoBuild(godot.Godot.buildUserClass())
extern class EditorResourcePicker extends godot.HBoxContainer {
	/**
		`resource_changed` signal.
		
		Emitted when the value of the edited resource was changed.
	**/
	public var onResourceChanged(get, never):Signal<(resource:Resource)->Void>;
	@:dox(hide) @:noCompletion inline function get_onResourceChanged():Signal<(resource:Resource)->Void> {
		return new Signal(this, "resource_changed", Signal.SignalHandlerResourceVoid.connectSignal, Signal.SignalHandlerResourceVoid.disconnectSignal, Signal.SignalHandlerResourceVoid.isSignalConnected);
	}

	/**
		`resource_selected` signal.
		
		Emitted when the resource value was set and user clicked to edit it. When `edit` is `true`, the signal was caused by the context menu "Edit" option.
	**/
	public var onResourceSelected(get, never):Signal<(resource:Resource, edit:Bool)->Void>;
	@:dox(hide) @:noCompletion inline function get_onResourceSelected():Signal<(resource:Resource, edit:Bool)->Void> {
		return new Signal(this, "resource_selected", Signal.SignalHandlerResourceBoolVoid.connectSignal, Signal.SignalHandlerResourceBoolVoid.disconnectSignal, Signal.SignalHandlerResourceBoolVoid.isSignalConnected);
	}

	/**		
		If `true`, the main button with the resource preview works in the toggle mode. Use `godot.EditorResourcePicker.setTogglePressed` to manually set the state.
	**/
	@:native("ToggleMode")
	public var toggleMode:Bool;

	/**		
		If `true`, the value can be selected and edited.
	**/
	@:native("Editable")
	public var editable:Bool;

	/**		
		The edited resource value.
	**/
	@:native("EditedResource")
	public var editedResource:godot.Resource;

	/**		
		The base type of allowed resource types. Can be a comma-separated list of several options.
	**/
	@:native("BaseType")
	public var baseType:std.String;

	@:native("new")
	public function new():Void;

	/**		
		This virtual method can be implemented to handle context menu items not handled by default. See `godot.EditorResourcePicker.setCreateOptions`.
	**/
	@:native("HandleMenuSelected")
	public function handleMenuSelected(id:Int):Void;

	/**		
		This virtual method is called when updating the context menu of `godot.EditorResourcePicker`. Implement this method to override the "New ..." items with your own options. `menu_node` is a reference to the `godot.PopupMenu` node.
		
		Note: Implement `godot.EditorResourcePicker.handleMenuSelected` to handle these custom items.
	**/
	@:native("SetCreateOptions")
	public function setCreateOptions(menuNode:godot.Object):Void;

	@:native("GetDragDataFw")
	public function getDragDataFw(position:godot.Vector2, from:godot.Control):Dynamic;

	@:native("CanDropDataFw")
	public function canDropDataFw(position:godot.Vector2, data:Dynamic, from:godot.Control):Bool;

	@:native("DropDataFw")
	public function dropDataFw(position:godot.Vector2, data:Dynamic, from:godot.Control):Void;

	@:native("SetBaseType")
	public function setBaseType(baseType:std.String):Void;

	@:native("GetBaseType")
	public function getBaseType():std.String;

	/**		
		Returns a list of all allowed types and subtypes corresponding to the `godot.EditorResourcePicker.baseType`. If the `godot.EditorResourcePicker.baseType` is empty, an empty list is returned.
	**/
	public extern inline function getAllowedTypes():std.Array<std.String> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetAllowedTypes()", this));
	}

	@:native("SetEditedResource")
	public function setEditedResource(resource:godot.Resource):Void;

	@:native("GetEditedResource")
	public function getEditedResource():godot.Resource;

	@:native("SetToggleMode")
	public function setToggleMode(enable:Bool):Void;

	@:native("IsToggleMode")
	public function isToggleMode():Bool;

	/**		
		Sets the toggle mode state for the main button. Works only if `godot.EditorResourcePicker.toggleMode` is set to `true`.
	**/
	@:native("SetTogglePressed")
	public function setTogglePressed(pressed:Bool):Void;

	@:native("SetEditable")
	public function setEditable(enable:Bool):Void;

	@:native("IsEditable")
	public function isEditable():Bool;
}
