// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This shows a tree of items that can be selected, expanded and collapsed. The tree can have multiple columns with custom controls like text editing, buttons and popups. It can be useful for structured displays and interactions.

Trees are built via code, using `godot.TreeItem` objects to create the structure. They have a single root but multiple roots can be simulated if a dummy hidden root is added.

```

func _ready():
var tree = Tree.new()
var root = tree.create_item()
tree.set_hide_root(true)
var child1 = tree.create_item(root)
var child2 = tree.create_item(root)
var subchild1 = tree.create_item(child1)
subchild1.set_text(0, "Subchild1")

```

To iterate over all the `godot.TreeItem` objects in a `godot.Tree` object, use `godot.TreeItem.getNext` and `godot.TreeItem.getChildren` after getting the root through `godot.Tree.getRoot`. You can use `godot.Object.free` on a `godot.TreeItem` to remove it from the `godot.Tree`.
**/
@:libType
@:csNative
@:native("Godot.Tree")
@:autoBuild(godot.Godot.buildUserClass())
extern class Tree extends godot.Control {
	/**		
		Allows single or multiple selection. See the `godot.Tree_SelectModeEnum` constants.
	**/
	@:native("SelectMode")
	public var selectMode:godot.Tree_SelectModeEnum;

	/**		
		The drop mode as an OR combination of flags. See `godot.Tree_DropModeFlagsEnum` constants. Once dropping is done, reverts to . Setting this during `godot.Control.canDropData` is recommended.
		
		This controls the drop sections, i.e. the decision and drawing of possible drop locations based on the mouse position.
	**/
	@:native("DropModeFlags")
	public var dropModeFlags:Int;

	/**		
		If `true`, the tree's root is hidden.
	**/
	@:native("HideRoot")
	public var hideRoot:Bool;

	/**		
		If `true`, the folding arrow is hidden.
	**/
	@:native("HideFolding")
	public var hideFolding:Bool;

	/**		
		If `true`, a right mouse button click can select items.
	**/
	@:native("AllowRmbSelect")
	public var allowRmbSelect:Bool;

	/**		
		If `true`, the currently selected cell may be selected again.
	**/
	@:native("AllowReselect")
	public var allowReselect:Bool;

	/**		
		The number of columns.
	**/
	@:native("Columns")
	public var columns:Int;

	@:native("new")
	public function new():Void;

	/**		
		Clears the tree. This removes all items.
	**/
	@:native("Clear")
	public function clear():Void;

	#if doc_gen
	/**		
		Creates an item in the tree and adds it as a child of `parent`.
		
		If `parent` is `null`, the root item will be the parent, or the new item will be the root itself if the tree is empty.
		
		The new item will be the `idx`th child of parent, or it will be the last child if there are not enough siblings.
	**/
	@:native("CreateItem")
	public function createItem(?parent:godot.Object, ?idx:Int):godot.TreeItem;
	#else
	/**		
		Creates an item in the tree and adds it as a child of `parent`.
		
		If `parent` is `null`, the root item will be the parent, or the new item will be the root itself if the tree is empty.
		
		The new item will be the `idx`th child of parent, or it will be the last child if there are not enough siblings.
	**/
	@:native("CreateItem")
	public overload function createItem():godot.TreeItem;

	/**		
		Creates an item in the tree and adds it as a child of `parent`.
		
		If `parent` is `null`, the root item will be the parent, or the new item will be the root itself if the tree is empty.
		
		The new item will be the `idx`th child of parent, or it will be the last child if there are not enough siblings.
	**/
	@:native("CreateItem")
	public overload function createItem(parent:godot.Object):godot.TreeItem;

	/**		
		Creates an item in the tree and adds it as a child of `parent`.
		
		If `parent` is `null`, the root item will be the parent, or the new item will be the root itself if the tree is empty.
		
		The new item will be the `idx`th child of parent, or it will be the last child if there are not enough siblings.
	**/
	@:native("CreateItem")
	public overload function createItem(parent:godot.Object, idx:Int):godot.TreeItem;
	#end

	/**		
		Returns the tree's root item, or `null` if the tree is empty.
	**/
	@:native("GetRoot")
	public function getRoot():godot.TreeItem;

	/**		
		Sets the minimum width of a column. Columns that have the "Expand" flag will use their "min_width" in a similar fashion to `godot.Control.sizeFlagsStretchRatio`.
	**/
	@:native("SetColumnMinWidth")
	public function setColumnMinWidth(column:Int, minWidth:Int):Void;

	/**		
		If `true`, the column will have the "Expand" flag of `godot.Control`. Columns that have the "Expand" flag will use their "min_width" in a similar fashion to `godot.Control.sizeFlagsStretchRatio`.
	**/
	@:native("SetColumnExpand")
	public function setColumnExpand(column:Int, expand:Bool):Void;

	/**		
		Returns the column's width in pixels.
	**/
	@:native("GetColumnWidth")
	public function getColumnWidth(column:Int):Int;

	@:native("SetHideRoot")
	public function setHideRoot(enable:Bool):Void;

	@:native("IsRootHidden")
	public function isRootHidden():Bool;

	/**		
		Returns the next selected item after the given one, or `null` if the end is reached.
		
		If `from` is `null`, this returns the first selected item.
	**/
	@:native("GetNextSelected")
	public function getNextSelected(from:godot.Object):godot.TreeItem;

	/**		
		Returns the currently focused item, or `null` if no item is focused.
		
		In  and  modes, the focused item is same as the selected item. In  mode, the focused item is the item under the focus cursor, not necessarily selected.
		
		To get the currently selected item(s), use `godot.Tree.getNextSelected`.
	**/
	@:native("GetSelected")
	public function getSelected():godot.TreeItem;

	/**		
		Returns the currently focused column, or -1 if no column is focused.
		
		In  mode, the focused column is the selected column. In  mode, the focused column is always 0 if any item is selected. In  mode, the focused column is the column under the focus cursor, and there are not necessarily any column selected.
		
		To tell whether a column of an item is selected, use `godot.TreeItem.isSelected`.
	**/
	@:native("GetSelectedColumn")
	public function getSelectedColumn():Int;

	/**		
		Returns the last pressed button's index.
	**/
	@:native("GetPressedButton")
	public function getPressedButton():Int;

	@:native("SetSelectMode")
	public function setSelectMode(mode:godot.Tree_SelectModeEnum):Void;

	@:native("GetSelectMode")
	public function getSelectMode():godot.Tree_SelectModeEnum;

	@:native("SetColumns")
	public function setColumns(amount:Int):Void;

	@:native("GetColumns")
	public function getColumns():Int;

	/**		
		Returns the currently edited item. This is only available for custom cell mode.
	**/
	@:native("GetEdited")
	public function getEdited():godot.TreeItem;

	/**		
		Returns the column for the currently edited item. This is only available for custom cell mode.
	**/
	@:native("GetEditedColumn")
	public function getEditedColumn():Int;

	/**		
		Returns the rectangle for custom popups. Helper to create custom cell controls that display a popup. See `godot.TreeItem.setCellMode`.
	**/
	@:native("GetCustomPopupRect")
	public function getCustomPopupRect():godot.Rect2;

	#if doc_gen
	/**		
		Returns the rectangle area for the specified item. If `column` is specified, only get the position and size of that column, otherwise get the rectangle containing all columns.
	**/
	@:native("GetItemAreaRect")
	public function getItemAreaRect(item:godot.Object, ?column:Int):godot.Rect2;
	#else
	/**		
		Returns the rectangle area for the specified item. If `column` is specified, only get the position and size of that column, otherwise get the rectangle containing all columns.
	**/
	@:native("GetItemAreaRect")
	public overload function getItemAreaRect(item:godot.Object):godot.Rect2;

	/**		
		Returns the rectangle area for the specified item. If `column` is specified, only get the position and size of that column, otherwise get the rectangle containing all columns.
	**/
	@:native("GetItemAreaRect")
	public overload function getItemAreaRect(item:godot.Object, column:Int):godot.Rect2;
	#end

	/**		
		Returns the tree item at the specified position (relative to the tree origin position).
	**/
	@:native("GetItemAtPosition")
	public function getItemAtPosition(position:godot.Vector2):godot.TreeItem;

	/**		
		Returns the column index at `position`, or -1 if no item is there.
	**/
	@:native("GetColumnAtPosition")
	public function getColumnAtPosition(position:godot.Vector2):Int;

	/**		
		Returns the drop section at `position`, or -100 if no item is there.
		
		Values -1, 0, or 1 will be returned for the "above item", "on item", and "below item" drop sections, respectively. See `godot.Tree_DropModeFlagsEnum` for a description of each drop section.
		
		To get the item which the returned drop section is relative to, use `godot.Tree.getItemAtPosition`.
	**/
	@:native("GetDropSectionAtPosition")
	public function getDropSectionAtPosition(position:godot.Vector2):Int;

	/**		
		Makes the currently focused cell visible.
		
		This will scroll the tree if necessary. In  mode, this will not do horizontal scrolling, as all the cells in the selected row is focused logically.
		
		Note: Despite the name of this method, the focus cursor itself is only visible in  mode.
	**/
	@:native("EnsureCursorIsVisible")
	public function ensureCursorIsVisible():Void;

	/**		
		If `true`, column titles are visible.
	**/
	@:native("SetColumnTitlesVisible")
	public function setColumnTitlesVisible(visible:Bool):Void;

	/**		
		Returns `true` if the column titles are being shown.
	**/
	@:native("AreColumnTitlesVisible")
	public function areColumnTitlesVisible():Bool;

	/**		
		Sets the title of a column.
	**/
	@:native("SetColumnTitle")
	public function setColumnTitle(column:Int, title:std.String):Void;

	/**		
		Returns the column's title.
	**/
	@:native("GetColumnTitle")
	public function getColumnTitle(column:Int):std.String;

	/**		
		Returns the current scrolling position.
	**/
	@:native("GetScroll")
	public function getScroll():godot.Vector2;

	@:native("SetHideFolding")
	public function setHideFolding(hide:Bool):Void;

	@:native("IsFoldingHidden")
	public function isFoldingHidden():Bool;

	@:native("SetDropModeFlags")
	public function setDropModeFlags(flags:Int):Void;

	@:native("GetDropModeFlags")
	public function getDropModeFlags():Int;

	@:native("SetAllowRmbSelect")
	public function setAllowRmbSelect(allow:Bool):Void;

	@:native("GetAllowRmbSelect")
	public function getAllowRmbSelect():Bool;

	@:native("SetAllowReselect")
	public function setAllowReselect(allow:Bool):Void;

	@:native("GetAllowReselect")
	public function getAllowReselect():Bool;
}
