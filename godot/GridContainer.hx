// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
GridContainer will arrange its Control-derived children in a grid like structure, the grid columns are specified using the `godot.GridContainer.columns` property and the number of rows will be equal to the number of children in the container divided by the number of columns. For example, if the container has 5 children, and 2 columns, there will be 3 rows in the container.

Notice that grid layout will preserve the columns and rows for every size of the container, and that empty columns will be expanded automatically.

Note: GridContainer only works with child nodes inheriting from Control. It won't rearrange child nodes inheriting from Node2D.
**/
@:libType
@:csNative
@:native("Godot.GridContainer")
@:autoBuild(godot.Godot.buildUserClass())
extern class GridContainer extends godot.Container {
	/**		
		The number of columns in the `godot.GridContainer`. If modified, `godot.GridContainer` reorders its Control-derived children to accommodate the new layout.
	**/
	@:native("Columns")
	public var columns:Int;

	@:native("new")
	public function new():Void;

	@:native("SetColumns")
	public function setColumns(columns:Int):Void;

	@:native("GetColumns")
	public function getColumns():Int;
}
