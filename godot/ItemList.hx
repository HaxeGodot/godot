// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This control provides a selectable list of items that may be in a single (or multiple columns) with option of text, icons, or both text and icon. Tooltips are supported and may be different for every item in the list.

Selectable items in the list may be selected or deselected and multiple selection may be enabled. Selection with right mouse button may also be enabled to allow use of popup context menus. Items may also be "activated" by double-clicking them or by pressing Enter.

Item text only supports single-line strings, newline characters (e.g. `\n`) in the string won't produce a newline. Text wrapping is enabled in `godot.ItemList_IconModeEnum.top` mode, but column's width is adjusted to fully fit its content by default. You need to set `godot.ItemList.fixedColumnWidth` greater than zero to wrap the text.
**/
@:libType
@:csNative
@:native("Godot.ItemList")
@:autoBuild(godot.Godot.buildUserClass())
extern class ItemList extends godot.Control {
	/**
		`item_activated` signal.
		
		Triggered when specified list item is activated via double-clicking or by pressing Enter.
	**/
	public var onItemActivated(get, never):Signal<(index:Int)->Void>;
	@:dox(hide) @:noCompletion inline function get_onItemActivated():Signal<(index:Int)->Void> {
		return new Signal(this, "item_activated", Signal.SignalHandlerIntVoid.connectSignal, Signal.SignalHandlerIntVoid.disconnectSignal, Signal.SignalHandlerIntVoid.isSignalConnected);
	}

	/**
		`item_rmb_selected` signal.
		
		Triggered when specified list item has been selected via right mouse clicking.
		The click position is also provided to allow appropriate popup of context menus at the correct location.
		`allowRmbSelect` must be enabled.
	**/
	public var onItemRmbSelected(get, never):Signal<(index:Int, atPosition:Vector2)->Void>;
	@:dox(hide) @:noCompletion inline function get_onItemRmbSelected():Signal<(index:Int, atPosition:Vector2)->Void> {
		return new Signal(this, "item_rmb_selected", Signal.SignalHandlerIntVector2Void.connectSignal, Signal.SignalHandlerIntVector2Void.disconnectSignal, Signal.SignalHandlerIntVector2Void.isSignalConnected);
	}

	/**
		`item_selected` signal.
		
		Triggered when specified item has been selected.
		`allowReselect` must be enabled to reselect an item.
	**/
	public var onItemSelected(get, never):Signal<(index:Int)->Void>;
	@:dox(hide) @:noCompletion inline function get_onItemSelected():Signal<(index:Int)->Void> {
		return new Signal(this, "item_selected", Signal.SignalHandlerIntVoid.connectSignal, Signal.SignalHandlerIntVoid.disconnectSignal, Signal.SignalHandlerIntVoid.isSignalConnected);
	}

	/**
		`multi_selected` signal.
		
		Triggered when a multiple selection is altered on a list allowing multiple selection.
	**/
	public var onMultiSelected(get, never):Signal<(index:Int, selected:Bool)->Void>;
	@:dox(hide) @:noCompletion inline function get_onMultiSelected():Signal<(index:Int, selected:Bool)->Void> {
		return new Signal(this, "multi_selected", Signal.SignalHandlerIntBoolVoid.connectSignal, Signal.SignalHandlerIntBoolVoid.disconnectSignal, Signal.SignalHandlerIntBoolVoid.isSignalConnected);
	}

	/**
		`nothing_selected` signal.
		
		Triggered when a left mouse click is issued within the rect of the list but on empty space.
	**/
	public var onNothingSelected(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onNothingSelected():Signal<Void->Void> {
		return new Signal(this, "nothing_selected", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`rmb_clicked` signal.
		
		Triggered when a right mouse click is issued within the rect of the list but on empty space.
		`allowRmbSelect` must be enabled.
	**/
	public var onRmbClicked(get, never):Signal<(atPosition:Vector2)->Void>;
	@:dox(hide) @:noCompletion inline function get_onRmbClicked():Signal<(atPosition:Vector2)->Void> {
		return new Signal(this, "rmb_clicked", Signal.SignalHandlerVector2Void.connectSignal, Signal.SignalHandlerVector2Void.disconnectSignal, Signal.SignalHandlerVector2Void.isSignalConnected);
	}

	/**		
		The size all icons will be adjusted to.
		
		If either X or Y component is not greater than zero, icon size won't be affected.
	**/
	@:native("FixedIconSize")
	public var fixedIconSize:godot.Vector2;

	/**		
		The scale of icon applied after `godot.ItemList.fixedIconSize` and transposing takes effect.
	**/
	@:native("IconScale")
	public var iconScale:Single;

	/**		
		The icon position, whether above or to the left of the text. See the `godot.ItemList_IconModeEnum` constants.
	**/
	@:native("IconMode")
	public var iconMode:godot.ItemList_IconModeEnum;

	/**		
		The width all columns will be adjusted to.
		
		A value of zero disables the adjustment, each item will have a width equal to the width of its content and the columns will have an uneven width.
	**/
	@:native("FixedColumnWidth")
	public var fixedColumnWidth:Int;

	/**		
		Whether all columns will have the same width.
		
		If `true`, the width is equal to the largest column width of all columns.
	**/
	@:native("SameColumnWidth")
	public var sameColumnWidth:Bool;

	/**		
		Maximum columns the list will have.
		
		If greater than zero, the content will be split among the specified columns.
		
		A value of zero means unlimited columns, i.e. all items will be put in the same row.
	**/
	@:native("MaxColumns")
	public var maxColumns:Int;

	/**		
		If `true`, the control will automatically resize the height to fit its content.
	**/
	@:native("AutoHeight")
	public var autoHeight:Bool;

	/**		
		Maximum lines of text allowed in each item. Space will be reserved even when there is not enough lines of text to display.
		
		Note: This property takes effect only when `godot.ItemList.iconMode` is `godot.ItemList_IconModeEnum.top`. To make the text wrap, `godot.ItemList.fixedColumnWidth` should be greater than zero.
	**/
	@:native("MaxTextLines")
	public var maxTextLines:Int;

	/**		
		If `true`, right mouse button click can select items.
	**/
	@:native("AllowRmbSelect")
	public var allowRmbSelect:Bool;

	/**		
		If `true`, the currently selected item can be selected again.
	**/
	@:native("AllowReselect")
	public var allowReselect:Bool;

	/**		
		Allows single or multiple item selection. See the `godot.ItemList_SelectModeEnum` constants.
	**/
	@:native("SelectMode")
	public var selectMode:godot.ItemList_SelectModeEnum;

	@:native("Items")
	public var items:godot.collections.Array;

	@:native("new")
	public function new():Void;

	#if doc_gen
	/**		
		Adds an item to the item list with specified text. Specify an `icon`, or use `null` as the `icon` for a list item with no icon.
		
		If selectable is `true`, the list item will be selectable.
	**/
	@:native("AddItem")
	public function addItem(text:std.String, ?icon:godot.Texture, ?selectable:Bool):Void;
	#else
	/**		
		Adds an item to the item list with specified text. Specify an `icon`, or use `null` as the `icon` for a list item with no icon.
		
		If selectable is `true`, the list item will be selectable.
	**/
	@:native("AddItem")
	public overload function addItem(text:std.String):Void;

	/**		
		Adds an item to the item list with specified text. Specify an `icon`, or use `null` as the `icon` for a list item with no icon.
		
		If selectable is `true`, the list item will be selectable.
	**/
	@:native("AddItem")
	public overload function addItem(text:std.String, icon:godot.Texture):Void;

	/**		
		Adds an item to the item list with specified text. Specify an `icon`, or use `null` as the `icon` for a list item with no icon.
		
		If selectable is `true`, the list item will be selectable.
	**/
	@:native("AddItem")
	public overload function addItem(text:std.String, icon:godot.Texture, selectable:Bool):Void;
	#end

	#if doc_gen
	/**		
		Adds an item to the item list with no text, only an icon.
	**/
	@:native("AddIconItem")
	public function addIconItem(icon:godot.Texture, ?selectable:Bool):Void;
	#else
	/**		
		Adds an item to the item list with no text, only an icon.
	**/
	@:native("AddIconItem")
	public overload function addIconItem(icon:godot.Texture):Void;

	/**		
		Adds an item to the item list with no text, only an icon.
	**/
	@:native("AddIconItem")
	public overload function addIconItem(icon:godot.Texture, selectable:Bool):Void;
	#end

	/**		
		Sets text of the item associated with the specified index.
	**/
	@:native("SetItemText")
	public function setItemText(idx:Int, text:std.String):Void;

	/**		
		Returns the text associated with the specified index.
	**/
	@:native("GetItemText")
	public function getItemText(idx:Int):std.String;

	/**		
		Sets (or replaces) the icon's `godot.Texture` associated with the specified index.
	**/
	@:native("SetItemIcon")
	public function setItemIcon(idx:Int, icon:godot.Texture):Void;

	/**		
		Returns the icon associated with the specified index.
	**/
	@:native("GetItemIcon")
	public function getItemIcon(idx:Int):godot.Texture;

	/**		
		Sets whether the item icon will be drawn transposed.
	**/
	@:native("SetItemIconTransposed")
	public function setItemIconTransposed(idx:Int, transposed:Bool):Void;

	/**		
		Returns `true` if the item icon will be drawn transposed, i.e. the X and Y axes are swapped.
	**/
	@:native("IsItemIconTransposed")
	public function isItemIconTransposed(idx:Int):Bool;

	/**		
		Sets the region of item's icon used. The whole icon will be used if the region has no area.
	**/
	@:native("SetItemIconRegion")
	public function setItemIconRegion(idx:Int, rect:godot.Rect2):Void;

	/**		
		Returns the region of item's icon used. The whole icon will be used if the region has no area.
	**/
	@:native("GetItemIconRegion")
	public function getItemIconRegion(idx:Int):godot.Rect2;

	/**		
		Sets a modulating `godot.Color` of the item associated with the specified index.
	**/
	@:native("SetItemIconModulate")
	public function setItemIconModulate(idx:Int, modulate:godot.Color):Void;

	/**		
		Returns a `godot.Color` modulating item's icon at the specified index.
	**/
	@:native("GetItemIconModulate")
	public function getItemIconModulate(idx:Int):godot.Color;

	/**		
		Allows or disallows selection of the item associated with the specified index.
	**/
	@:native("SetItemSelectable")
	public function setItemSelectable(idx:Int, selectable:Bool):Void;

	/**		
		Returns `true` if the item at the specified index is selectable.
	**/
	@:native("IsItemSelectable")
	public function isItemSelectable(idx:Int):Bool;

	/**		
		Disables (or enables) the item at the specified index.
		
		Disabled items cannot be selected and do not trigger activation signals (when double-clicking or pressing Enter).
	**/
	@:native("SetItemDisabled")
	public function setItemDisabled(idx:Int, disabled:Bool):Void;

	/**		
		Returns `true` if the item at the specified index is disabled.
	**/
	@:native("IsItemDisabled")
	public function isItemDisabled(idx:Int):Bool;

	/**		
		Sets a value (of any type) to be stored with the item associated with the specified index.
	**/
	@:native("SetItemMetadata")
	public function setItemMetadata(idx:Int, metadata:Dynamic):Void;

	/**		
		Returns the metadata value of the specified index.
	**/
	@:native("GetItemMetadata")
	public function getItemMetadata(idx:Int):Dynamic;

	/**		
		Sets the background color of the item specified by `idx` index to the specified `godot.Color`.
	**/
	@:native("SetItemCustomBgColor")
	public function setItemCustomBgColor(idx:Int, customBgColor:godot.Color):Void;

	/**		
		Returns the custom background color of the item specified by `idx` index.
	**/
	@:native("GetItemCustomBgColor")
	public function getItemCustomBgColor(idx:Int):godot.Color;

	/**		
		Sets the foreground color of the item specified by `idx` index to the specified `godot.Color`.
	**/
	@:native("SetItemCustomFgColor")
	public function setItemCustomFgColor(idx:Int, customFgColor:godot.Color):Void;

	/**		
		Returns the custom foreground color of the item specified by `idx` index.
	**/
	@:native("GetItemCustomFgColor")
	public function getItemCustomFgColor(idx:Int):godot.Color;

	/**		
		Sets whether the tooltip hint is enabled for specified item index.
	**/
	@:native("SetItemTooltipEnabled")
	public function setItemTooltipEnabled(idx:Int, enable:Bool):Void;

	/**		
		Returns `true` if the tooltip is enabled for specified item index.
	**/
	@:native("IsItemTooltipEnabled")
	public function isItemTooltipEnabled(idx:Int):Bool;

	/**		
		Sets the tooltip hint for the item associated with the specified index.
	**/
	@:native("SetItemTooltip")
	public function setItemTooltip(idx:Int, tooltip:std.String):Void;

	/**		
		Returns the tooltip hint associated with the specified index.
	**/
	@:native("GetItemTooltip")
	public function getItemTooltip(idx:Int):std.String;

	#if doc_gen
	/**		
		Select the item at the specified index.
		
		Note: This method does not trigger the item selection signal.
	**/
	@:native("Select")
	public function select(idx:Int, ?single:Bool):Void;
	#else
	/**		
		Select the item at the specified index.
		
		Note: This method does not trigger the item selection signal.
	**/
	@:native("Select")
	public overload function select(idx:Int):Void;

	/**		
		Select the item at the specified index.
		
		Note: This method does not trigger the item selection signal.
	**/
	@:native("Select")
	public overload function select(idx:Int, single:Bool):Void;
	#end

	/**		
		Ensures the item associated with the specified index is not selected.
	**/
	@:native("Unselect")
	public function unselect(idx:Int):Void;

	/**		
		Ensures there are no items selected.
	**/
	@:native("UnselectAll")
	public function unselectAll():Void;

	/**		
		Returns `true` if the item at the specified index is currently selected.
	**/
	@:native("IsSelected")
	public function isSelected(idx:Int):Bool;

	/**		
		Returns an array with the indexes of the selected items.
	**/
	public extern inline function getSelectedItems():std.Array<Int> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetSelectedItems()", this));
	}

	/**		
		Moves item from index `from_idx` to `to_idx`.
	**/
	@:native("MoveItem")
	public function moveItem(fromIdx:Int, toIdx:Int):Void;

	/**		
		Returns the number of items currently in the list.
	**/
	@:native("GetItemCount")
	public function getItemCount():Int;

	/**		
		Removes the item specified by `idx` index from the list.
	**/
	@:native("RemoveItem")
	public function removeItem(idx:Int):Void;

	/**		
		Removes all items from the list.
	**/
	@:native("Clear")
	public function clear():Void;

	/**		
		Sorts items in the list by their text.
	**/
	@:native("SortItemsByText")
	public function sortItemsByText():Void;

	@:native("SetFixedColumnWidth")
	public function setFixedColumnWidth(width:Int):Void;

	@:native("GetFixedColumnWidth")
	public function getFixedColumnWidth():Int;

	@:native("SetSameColumnWidth")
	public function setSameColumnWidth(enable:Bool):Void;

	@:native("IsSameColumnWidth")
	public function isSameColumnWidth():Bool;

	@:native("SetMaxTextLines")
	public function setMaxTextLines(lines:Int):Void;

	@:native("GetMaxTextLines")
	public function getMaxTextLines():Int;

	@:native("SetMaxColumns")
	public function setMaxColumns(amount:Int):Void;

	@:native("GetMaxColumns")
	public function getMaxColumns():Int;

	@:native("SetSelectMode")
	public function setSelectMode(mode:godot.ItemList_SelectModeEnum):Void;

	@:native("GetSelectMode")
	public function getSelectMode():godot.ItemList_SelectModeEnum;

	@:native("SetIconMode")
	public function setIconMode(mode:godot.ItemList_IconModeEnum):Void;

	@:native("GetIconMode")
	public function getIconMode():godot.ItemList_IconModeEnum;

	@:native("SetFixedIconSize")
	public function setFixedIconSize(size:godot.Vector2):Void;

	@:native("GetFixedIconSize")
	public function getFixedIconSize():godot.Vector2;

	@:native("SetIconScale")
	public function setIconScale(scale:Single):Void;

	@:native("GetIconScale")
	public function getIconScale():Single;

	@:native("SetAllowRmbSelect")
	public function setAllowRmbSelect(allow:Bool):Void;

	@:native("GetAllowRmbSelect")
	public function getAllowRmbSelect():Bool;

	@:native("SetAllowReselect")
	public function setAllowReselect(allow:Bool):Void;

	@:native("GetAllowReselect")
	public function getAllowReselect():Bool;

	@:native("SetAutoHeight")
	public function setAutoHeight(enable:Bool):Void;

	@:native("HasAutoHeight")
	public function hasAutoHeight():Bool;

	/**		
		Returns `true` if one or more items are selected.
	**/
	@:native("IsAnythingSelected")
	public function isAnythingSelected():Bool;

	#if doc_gen
	/**		
		Returns the item index at the given `position`.
		
		When there is no item at that point, -1 will be returned if `exact` is `true`, and the closest item index will be returned otherwise.
	**/
	@:native("GetItemAtPosition")
	public function getItemAtPosition(position:godot.Vector2, ?exact:Bool):Int;
	#else
	/**		
		Returns the item index at the given `position`.
		
		When there is no item at that point, -1 will be returned if `exact` is `true`, and the closest item index will be returned otherwise.
	**/
	@:native("GetItemAtPosition")
	public overload function getItemAtPosition(position:godot.Vector2):Int;

	/**		
		Returns the item index at the given `position`.
		
		When there is no item at that point, -1 will be returned if `exact` is `true`, and the closest item index will be returned otherwise.
	**/
	@:native("GetItemAtPosition")
	public overload function getItemAtPosition(position:godot.Vector2, exact:Bool):Int;
	#end

	/**		
		Ensure current selection is visible, adjusting the scroll position as necessary.
	**/
	@:native("EnsureCurrentIsVisible")
	public function ensureCurrentIsVisible():Void;

	/**		
		Returns the `godot.Object` ID associated with the list.
		
		Warning: This is a required internal node, removing and freeing it may cause a crash. If you wish to hide it or any of its children, use their `godot.CanvasItem.visible` property.
	**/
	@:native("GetVScroll")
	public function getVScroll():godot.VScrollBar;
}
