// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.Tree.SelectModeEnum")
@:csNative
extern enum Tree_SelectModeEnum {
	/**		
		Allows selection of a single cell at a time. From the perspective of items, only a single item is allowed to be selected. And there is only one column selected in the selected item.
		
		The focus cursor is always hidden in this mode, but it is positioned at the current selection, making the currently selected item the currently focused item.
	**/
	Single;

	/**		
		Allows selection of a single row at a time. From the perspective of items, only a single items is allowed to be selected. And all the columns are selected in the selected item.
		
		The focus cursor is always hidden in this mode, but it is positioned at the first column of the current selection, making the currently selected item the currently focused item.
	**/
	Row;

	/**		
		Allows selection of multiple cells at the same time. From the perspective of items, multiple items are allowed to be selected. And there can be multiple columns selected in each selected item.
		
		The focus cursor is visible in this mode, the item or column under the cursor is not necessarily selected.
	**/
	Multi;
}
