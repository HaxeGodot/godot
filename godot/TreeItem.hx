// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Control for a single item inside a `godot.Tree`. May have child `godot.TreeItem`s and be styled as well as contain buttons.

You can remove a `godot.TreeItem` by using `godot.Object.free`.
**/
@:libType
@:csNative
@:native("Godot.TreeItem")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class TreeItem extends godot.Object {
	/**		
		The custom minimum height.
	**/
	@:native("CustomMinimumHeight")
	public var customMinimumHeight:Int;

	/**		
		If `true`, folding is disabled for this TreeItem.
	**/
	@:native("DisableFolding")
	public var disableFolding:Bool;

	/**		
		If `true`, the TreeItem is collapsed.
	**/
	@:native("Collapsed")
	public var collapsed:Bool;

	/**		
		Sets the given column's cell mode to `mode`. See `godot.TreeItem_TreeCellMode` constants.
	**/
	@:native("SetCellMode")
	public function setCellMode(column:Int, mode:godot.TreeItem_TreeCellMode):Void;

	/**		
		Returns the column's cell mode.
	**/
	@:native("GetCellMode")
	public function getCellMode(column:Int):godot.TreeItem_TreeCellMode;

	/**		
		If `true`, the column `column` is checked.
	**/
	@:native("SetChecked")
	public function setChecked(column:Int, checked:Bool):Void;

	/**		
		Returns `true` if the given column is checked.
	**/
	@:native("IsChecked")
	public function isChecked(column:Int):Bool;

	/**		
		Sets the given column's text value.
	**/
	@:native("SetText")
	public function setText(column:Int, text:std.String):Void;

	/**		
		Returns the given column's text.
	**/
	@:native("GetText")
	public function getText(column:Int):std.String;

	/**		
		Sets a string to be shown after a column's value (for example, a unit abbreviation).
	**/
	@:native("SetSuffix")
	public function setSuffix(column:Int, text:std.String):Void;

	/**		
		Gets the suffix string shown after the column value.
	**/
	@:native("GetSuffix")
	public function getSuffix(column:Int):std.String;

	/**		
		Sets the given column's icon `godot.Texture`.
	**/
	@:native("SetIcon")
	public function setIcon(column:Int, texture:godot.Texture):Void;

	/**		
		Returns the given column's icon `godot.Texture`. Error if no icon is set.
	**/
	@:native("GetIcon")
	public function getIcon(column:Int):godot.Texture;

	/**		
		Sets the given column's icon's texture region.
	**/
	@:native("SetIconRegion")
	public function setIconRegion(column:Int, region:godot.Rect2):Void;

	/**		
		Returns the icon `godot.Texture` region as `godot.Rect2`.
	**/
	@:native("GetIconRegion")
	public function getIconRegion(column:Int):godot.Rect2;

	/**		
		Sets the given column's icon's maximum width.
	**/
	@:native("SetIconMaxWidth")
	public function setIconMaxWidth(column:Int, width:Int):Void;

	/**		
		Returns the column's icon's maximum width.
	**/
	@:native("GetIconMaxWidth")
	public function getIconMaxWidth(column:Int):Int;

	/**		
		Modulates the given column's icon with `modulate`.
	**/
	@:native("SetIconModulate")
	public function setIconModulate(column:Int, modulate:godot.Color):Void;

	/**		
		Returns the `godot.Color` modulating the column's icon.
	**/
	@:native("GetIconModulate")
	public function getIconModulate(column:Int):godot.Color;

	/**		
		Sets the value of a `godot.TreeItem_TreeCellMode.range` column.
	**/
	@:native("SetRange")
	public function setRange(column:Int, value:Float):Void;

	/**		
		Returns the value of a `godot.TreeItem_TreeCellMode.range` column.
	**/
	@:native("GetRange")
	public function getRange(column:Int):Float;

	#if doc_gen
	/**		
		Sets the range of accepted values for a column. The column must be in the `godot.TreeItem_TreeCellMode.range` mode.
		
		If `expr` is `true`, the edit mode slider will use an exponential scale as with `godot.Range.expEdit`.
	**/
	@:native("SetRangeConfig")
	public function setRangeConfig(column:Int, min:Float, max:Float, step:Float, ?expr:Bool):Void;
	#else
	/**		
		Sets the range of accepted values for a column. The column must be in the `godot.TreeItem_TreeCellMode.range` mode.
		
		If `expr` is `true`, the edit mode slider will use an exponential scale as with `godot.Range.expEdit`.
	**/
	@:native("SetRangeConfig")
	public overload function setRangeConfig(column:Int, min:Float, max:Float, step:Float):Void;

	/**		
		Sets the range of accepted values for a column. The column must be in the `godot.TreeItem_TreeCellMode.range` mode.
		
		If `expr` is `true`, the edit mode slider will use an exponential scale as with `godot.Range.expEdit`.
	**/
	@:native("SetRangeConfig")
	public overload function setRangeConfig(column:Int, min:Float, max:Float, step:Float, expr:Bool):Void;
	#end

	/**		
		Returns a dictionary containing the range parameters for a given column. The keys are "min", "max", "step", and "expr".
	**/
	@:native("GetRangeConfig")
	public function getRangeConfig(column:Int):godot.collections.Dictionary;

	/**		
		Sets the metadata value for the given column, which can be retrieved later using `godot.TreeItem.getMetadata`. This can be used, for example, to store a reference to the original data.
	**/
	@:native("SetMetadata")
	public function setMetadata(column:Int, meta:Dynamic):Void;

	/**		
		Returns the metadata value that was set for the given column using `godot.TreeItem.setMetadata`.
	**/
	@:native("GetMetadata")
	public function getMetadata(column:Int):Dynamic;

	/**		
		Sets the given column's custom draw callback to `callback` method on `object`.
		
		The `callback` should accept two arguments: the `godot.TreeItem` that is drawn and its position and size as a `godot.Rect2`.
	**/
	@:native("SetCustomDraw")
	public function setCustomDraw(column:Int, object:godot.Object, callback:std.String):Void;

	@:native("SetCollapsed")
	public function setCollapsed(enable:Bool):Void;

	@:native("IsCollapsed")
	public function isCollapsed():Bool;

	@:native("SetCustomMinimumHeight")
	public function setCustomMinimumHeight(height:Int):Void;

	@:native("GetCustomMinimumHeight")
	public function getCustomMinimumHeight():Int;

	/**		
		Returns the next TreeItem in the tree or a null object if there is none.
	**/
	@:native("GetNext")
	public function getNext():godot.TreeItem;

	/**		
		Returns the previous TreeItem in the tree or a null object if there is none.
	**/
	@:native("GetPrev")
	public function getPrev():godot.TreeItem;

	/**		
		Returns the parent TreeItem or a null object if there is none.
	**/
	@:native("GetParent")
	public function getParent():godot.TreeItem;

	/**		
		Returns the TreeItem's first child item or a null object if there is none.
	**/
	@:native("GetChildren")
	public function getChildren():godot.TreeItem;

	#if doc_gen
	/**		
		Returns the next visible TreeItem in the tree or a null object if there is none.
		
		If `wrap` is enabled, the method will wrap around to the first visible element in the tree when called on the last visible element, otherwise it returns `null`.
	**/
	@:native("GetNextVisible")
	public function getNextVisible(?wrap:Bool):godot.TreeItem;
	#else
	/**		
		Returns the next visible TreeItem in the tree or a null object if there is none.
		
		If `wrap` is enabled, the method will wrap around to the first visible element in the tree when called on the last visible element, otherwise it returns `null`.
	**/
	@:native("GetNextVisible")
	public overload function getNextVisible():godot.TreeItem;

	/**		
		Returns the next visible TreeItem in the tree or a null object if there is none.
		
		If `wrap` is enabled, the method will wrap around to the first visible element in the tree when called on the last visible element, otherwise it returns `null`.
	**/
	@:native("GetNextVisible")
	public overload function getNextVisible(wrap:Bool):godot.TreeItem;
	#end

	#if doc_gen
	/**		
		Returns the previous visible TreeItem in the tree or a null object if there is none.
		
		If `wrap` is enabled, the method will wrap around to the last visible element in the tree when called on the first visible element, otherwise it returns `null`.
	**/
	@:native("GetPrevVisible")
	public function getPrevVisible(?wrap:Bool):godot.TreeItem;
	#else
	/**		
		Returns the previous visible TreeItem in the tree or a null object if there is none.
		
		If `wrap` is enabled, the method will wrap around to the last visible element in the tree when called on the first visible element, otherwise it returns `null`.
	**/
	@:native("GetPrevVisible")
	public overload function getPrevVisible():godot.TreeItem;

	/**		
		Returns the previous visible TreeItem in the tree or a null object if there is none.
		
		If `wrap` is enabled, the method will wrap around to the last visible element in the tree when called on the first visible element, otherwise it returns `null`.
	**/
	@:native("GetPrevVisible")
	public overload function getPrevVisible(wrap:Bool):godot.TreeItem;
	#end

	/**		
		Removes the given child `godot.TreeItem` and all its children from the `godot.Tree`. Note that it doesn't free the item from memory, so it can be reused later. To completely remove a `godot.TreeItem` use `godot.Object.free`.
	**/
	@:native("RemoveChild")
	public function removeChild(child:godot.Object):Void;

	/**		
		If `true`, the given column is selectable.
	**/
	@:native("SetSelectable")
	public function setSelectable(column:Int, selectable:Bool):Void;

	/**		
		Returns `true` if column `column` is selectable.
	**/
	@:native("IsSelectable")
	public function isSelectable(column:Int):Bool;

	/**		
		Returns `true` if column `column` is selected.
	**/
	@:native("IsSelected")
	public function isSelected(column:Int):Bool;

	/**		
		Selects the column `column`.
	**/
	@:native("Select")
	public function select(column:Int):Void;

	/**		
		Deselects the given column.
	**/
	@:native("Deselect")
	public function deselect(column:Int):Void;

	/**		
		If `true`, column `column` is editable.
	**/
	@:native("SetEditable")
	public function setEditable(column:Int, enabled:Bool):Void;

	/**		
		Returns `true` if column `column` is editable.
	**/
	@:native("IsEditable")
	public function isEditable(column:Int):Bool;

	/**		
		Sets the given column's custom color.
	**/
	@:native("SetCustomColor")
	public function setCustomColor(column:Int, color:godot.Color):Void;

	/**		
		Resets the color for the given column to default.
	**/
	@:native("ClearCustomColor")
	public function clearCustomColor(column:Int):Void;

	/**		
		Returns the custom color of column `column`.
	**/
	@:native("GetCustomColor")
	public function getCustomColor(column:Int):godot.Color;

	#if doc_gen
	/**		
		Sets the given column's custom background color and whether to just use it as an outline.
	**/
	@:native("SetCustomBgColor")
	public function setCustomBgColor(column:Int, color:godot.Color, ?justOutline:Bool):Void;
	#else
	/**		
		Sets the given column's custom background color and whether to just use it as an outline.
	**/
	@:native("SetCustomBgColor")
	public overload function setCustomBgColor(column:Int, color:godot.Color):Void;

	/**		
		Sets the given column's custom background color and whether to just use it as an outline.
	**/
	@:native("SetCustomBgColor")
	public overload function setCustomBgColor(column:Int, color:godot.Color, justOutline:Bool):Void;
	#end

	/**		
		Resets the background color for the given column to default.
	**/
	@:native("ClearCustomBgColor")
	public function clearCustomBgColor(column:Int):Void;

	/**		
		Returns the custom background color of column `column`.
	**/
	@:native("GetCustomBgColor")
	public function getCustomBgColor(column:Int):godot.Color;

	@:native("SetCustomAsButton")
	public function setCustomAsButton(column:Int, enable:Bool):Void;

	@:native("IsCustomSetAsButton")
	public function isCustomSetAsButton(column:Int):Bool;

	#if doc_gen
	/**		
		Adds a button with `godot.Texture` `button` at column `column`. The `button_idx` is used to identify the button. If not specified, the next available index is used, which may be retrieved by calling `godot.TreeItem.getButtonCount` immediately after this method. Optionally, the button can be `disabled` and have a `tooltip`.
	**/
	@:native("AddButton")
	public function addButton(column:Int, button:godot.Texture, ?buttonIdx:Int, ?disabled:Bool, ?tooltip:std.String):Void;
	#else
	/**		
		Adds a button with `godot.Texture` `button` at column `column`. The `button_idx` is used to identify the button. If not specified, the next available index is used, which may be retrieved by calling `godot.TreeItem.getButtonCount` immediately after this method. Optionally, the button can be `disabled` and have a `tooltip`.
	**/
	@:native("AddButton")
	public overload function addButton(column:Int, button:godot.Texture):Void;

	/**		
		Adds a button with `godot.Texture` `button` at column `column`. The `button_idx` is used to identify the button. If not specified, the next available index is used, which may be retrieved by calling `godot.TreeItem.getButtonCount` immediately after this method. Optionally, the button can be `disabled` and have a `tooltip`.
	**/
	@:native("AddButton")
	public overload function addButton(column:Int, button:godot.Texture, buttonIdx:Int):Void;

	/**		
		Adds a button with `godot.Texture` `button` at column `column`. The `button_idx` is used to identify the button. If not specified, the next available index is used, which may be retrieved by calling `godot.TreeItem.getButtonCount` immediately after this method. Optionally, the button can be `disabled` and have a `tooltip`.
	**/
	@:native("AddButton")
	public overload function addButton(column:Int, button:godot.Texture, buttonIdx:Int, disabled:Bool):Void;

	/**		
		Adds a button with `godot.Texture` `button` at column `column`. The `button_idx` is used to identify the button. If not specified, the next available index is used, which may be retrieved by calling `godot.TreeItem.getButtonCount` immediately after this method. Optionally, the button can be `disabled` and have a `tooltip`.
	**/
	@:native("AddButton")
	public overload function addButton(column:Int, button:godot.Texture, buttonIdx:Int, disabled:Bool, tooltip:std.String):Void;
	#end

	/**		
		Returns the number of buttons in column `column`.
	**/
	@:native("GetButtonCount")
	public function getButtonCount(column:Int):Int;

	/**		
		Returns the tooltip string for the button at index `button_idx` in column `column`.
	**/
	@:native("GetButtonTooltip")
	public function getButtonTooltip(column:Int, buttonIdx:Int):std.String;

	/**		
		Returns the `godot.Texture` of the button at index `button_idx` in column `column`.
	**/
	@:native("GetButton")
	public function getButton(column:Int, buttonIdx:Int):godot.Texture;

	/**		
		Sets the given column's button `godot.Texture` at index `button_idx` to `button`.
	**/
	@:native("SetButton")
	public function setButton(column:Int, buttonIdx:Int, button:godot.Texture):Void;

	/**		
		Removes the button at index `button_idx` in column `column`.
	**/
	@:native("EraseButton")
	public function eraseButton(column:Int, buttonIdx:Int):Void;

	/**		
		If `true`, disables the button at index `button_idx` in column `column`.
	**/
	@:native("SetButtonDisabled")
	public function setButtonDisabled(column:Int, buttonIdx:Int, disabled:Bool):Void;

	/**		
		Returns `true` if the button at index `button_idx` for the given column is disabled.
	**/
	@:native("IsButtonDisabled")
	public function isButtonDisabled(column:Int, buttonIdx:Int):Bool;

	/**		
		If `true`, column `column` is expanded to the right.
	**/
	@:native("SetExpandRight")
	public function setExpandRight(column:Int, enable:Bool):Void;

	/**		
		Returns `true` if `expand_right` is set.
	**/
	@:native("GetExpandRight")
	public function getExpandRight(column:Int):Bool;

	/**		
		Sets the given column's tooltip text.
	**/
	@:native("SetTooltip")
	public function setTooltip(column:Int, tooltip:std.String):Void;

	/**		
		Returns the given column's tooltip.
	**/
	@:native("GetTooltip")
	public function getTooltip(column:Int):std.String;

	/**		
		Sets the given column's text alignment. See `godot.TreeItem_TextAlign` for possible values.
	**/
	@:native("SetTextAlign")
	public function setTextAlign(column:Int, textAlign:godot.TreeItem_TextAlign):Void;

	/**		
		Returns the given column's text alignment.
	**/
	@:native("GetTextAlign")
	public function getTextAlign(column:Int):godot.TreeItem_TextAlign;

	/**		
		Moves this TreeItem to the top in the `godot.Tree` hierarchy.
	**/
	@:native("MoveToTop")
	public function moveToTop():Void;

	/**		
		Moves this TreeItem to the bottom in the `godot.Tree` hierarchy.
	**/
	@:native("MoveToBottom")
	public function moveToBottom():Void;

	@:native("SetDisableFolding")
	public function setDisableFolding(disable:Bool):Void;

	@:native("IsFoldingDisabled")
	public function isFoldingDisabled():Bool;

	/**		
		Calls the `method` on the actual TreeItem and its children recursively. Pass parameters as a comma separated list.
	**/
	@:native("CallRecursive")
	public function callRecursive(method:std.String, args:HaxeArray<Dynamic>):Dynamic;
}
