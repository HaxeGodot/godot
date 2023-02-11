// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
OptionButton is a type button that provides a selectable list of items when pressed. The item selected becomes the "current" item and is displayed as the button text.

See also `godot.BaseButton` which contains common properties and methods associated with this node.
**/
@:libType
@:csNative
@:native("Godot.OptionButton")
@:autoBuild(godot.Godot.buildUserClass())
extern class OptionButton extends godot.Button {
	/**
		`item_focused` signal.
	**/
	public var onItemFocused(get, never):Signal<(index:Int)->Void>;
	@:dox(hide) @:noCompletion inline function get_onItemFocused():Signal<(index:Int)->Void> {
		return new Signal(this, "item_focused", Signal.SignalHandlerIntVoid.connectSignal, Signal.SignalHandlerIntVoid.disconnectSignal, Signal.SignalHandlerIntVoid.isSignalConnected);
	}

	/**
		`item_selected` signal.
	**/
	public var onItemSelected(get, never):Signal<(index:Int)->Void>;
	@:dox(hide) @:noCompletion inline function get_onItemSelected():Signal<(index:Int)->Void> {
		return new Signal(this, "item_selected", Signal.SignalHandlerIntVoid.connectSignal, Signal.SignalHandlerIntVoid.disconnectSignal, Signal.SignalHandlerIntVoid.isSignalConnected);
	}

	/**		
		The index of the currently selected item, or `-1` if no item is selected.
	**/
	@:native("Selected")
	public var selected:Int;

	@:native("Items")
	public var items:godot.collections.Array;

	@:native("new")
	public function new():Void;

	#if doc_gen
	/**		
		Adds an item, with text `label` and (optionally) `id`. If no `id` is passed, the item index will be used as the item's ID. New items are appended at the end.
	**/
	@:native("AddItem")
	public function addItem(label:std.String, ?id:Int):Void;
	#else
	/**		
		Adds an item, with text `label` and (optionally) `id`. If no `id` is passed, the item index will be used as the item's ID. New items are appended at the end.
	**/
	@:native("AddItem")
	public overload function addItem(label:std.String):Void;

	/**		
		Adds an item, with text `label` and (optionally) `id`. If no `id` is passed, the item index will be used as the item's ID. New items are appended at the end.
	**/
	@:native("AddItem")
	public overload function addItem(label:std.String, id:Int):Void;
	#end

	#if doc_gen
	/**		
		Adds an item, with a `texture` icon, text `label` and (optionally) `id`. If no `id` is passed, the item index will be used as the item's ID. New items are appended at the end.
	**/
	@:native("AddIconItem")
	public function addIconItem(texture:godot.Texture, label:std.String, ?id:Int):Void;
	#else
	/**		
		Adds an item, with a `texture` icon, text `label` and (optionally) `id`. If no `id` is passed, the item index will be used as the item's ID. New items are appended at the end.
	**/
	@:native("AddIconItem")
	public overload function addIconItem(texture:godot.Texture, label:std.String):Void;

	/**		
		Adds an item, with a `texture` icon, text `label` and (optionally) `id`. If no `id` is passed, the item index will be used as the item's ID. New items are appended at the end.
	**/
	@:native("AddIconItem")
	public overload function addIconItem(texture:godot.Texture, label:std.String, id:Int):Void;
	#end

	/**		
		Sets the text of the item at index `idx`.
	**/
	@:native("SetItemText")
	public function setItemText(idx:Int, text:std.String):Void;

	/**		
		Sets the icon of the item at index `idx`.
	**/
	@:native("SetItemIcon")
	public function setItemIcon(idx:Int, texture:godot.Texture):Void;

	/**		
		Sets whether the item at index `idx` is disabled.
		
		Disabled items are drawn differently in the dropdown and are not selectable by the user. If the current selected item is set as disabled, it will remain selected.
	**/
	@:native("SetItemDisabled")
	public function setItemDisabled(idx:Int, disabled:Bool):Void;

	/**		
		Sets the ID of the item at index `idx`.
	**/
	@:native("SetItemId")
	public function setItemId(idx:Int, id:Int):Void;

	/**		
		Sets the metadata of an item. Metadata may be of any type and can be used to store extra information about an item, such as an external string ID.
	**/
	@:native("SetItemMetadata")
	public function setItemMetadata(idx:Int, metadata:Dynamic):Void;

	/**		
		Returns the text of the item at index `idx`.
	**/
	@:native("GetItemText")
	public function getItemText(idx:Int):std.String;

	/**		
		Returns the icon of the item at index `idx`.
	**/
	@:native("GetItemIcon")
	public function getItemIcon(idx:Int):godot.Texture;

	/**		
		Returns the ID of the item at index `idx`.
	**/
	@:native("GetItemId")
	public function getItemId(idx:Int):Int;

	/**		
		Returns the index of the item with the given `id`.
	**/
	@:native("GetItemIndex")
	public function getItemIndex(id:Int):Int;

	/**		
		Retrieves the metadata of an item. Metadata may be any type and can be used to store extra information about an item, such as an external string ID.
	**/
	@:native("GetItemMetadata")
	public function getItemMetadata(idx:Int):Dynamic;

	/**		
		Returns `true` if the item at index `idx` is disabled.
	**/
	@:native("IsItemDisabled")
	public function isItemDisabled(idx:Int):Bool;

	/**		
		Returns the amount of items in the OptionButton, including separators.
	**/
	@:native("GetItemCount")
	public function getItemCount():Int;

	/**		
		Adds a separator to the list of items. Separators help to group items. Separator also takes up an index and is appended at the end.
	**/
	@:native("AddSeparator")
	public function addSeparator():Void;

	/**		
		Clears all the items in the `godot.OptionButton`.
	**/
	@:native("Clear")
	public function clear():Void;

	/**		
		Selects an item by index and makes it the current item. This will work even if the item is disabled.
	**/
	@:native("Select")
	public function select(idx:Int):Void;

	@:native("GetSelected")
	public function getSelected():Int;

	/**		
		Returns the ID of the selected item, or `0` if no item is selected.
	**/
	@:native("GetSelectedId")
	public function getSelectedId():Int;

	/**		
		Gets the metadata of the selected item. Metadata for items can be set using `godot.OptionButton.setItemMetadata`.
	**/
	@:native("GetSelectedMetadata")
	public function getSelectedMetadata():Dynamic;

	/**		
		Removes the item at index `idx`.
	**/
	@:native("RemoveItem")
	public function removeItem(idx:Int):Void;

	/**		
		Returns the `godot.PopupMenu` contained in this button.
		
		Warning: This is a required internal node, removing and freeing it may cause a crash. If you wish to hide it or any of its children, use their `godot.CanvasItem.visible` property.
	**/
	@:native("GetPopup")
	public function getPopup():godot.PopupMenu;
}
