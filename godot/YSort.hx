// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Sort all child nodes based on their Y positions. The child node must inherit from `godot.CanvasItem` for it to be sorted. Nodes that have a higher Y position will be drawn later, so they will appear on top of nodes that have a lower Y position.

Nesting of YSort nodes is possible. Children YSort nodes will be sorted in the same space as the parent YSort, allowing to better organize a scene or divide it in multiple ones, yet keep the unique sorting.
**/
@:libType
@:csNative
@:native("Godot.YSort")
@:autoBuild(godot.Godot.buildUserClass())
extern class YSort extends godot.Node2D {
	/**		
		If `true`, child nodes are sorted, otherwise sorting is disabled.
	**/
	@:native("SortEnabled")
	public var sortEnabled:Bool;

	@:native("new")
	public function new():Void;

	@:native("SetSortEnabled")
	public function setSortEnabled(enabled:Bool):Void;

	@:native("IsSortEnabled")
	public function isSortEnabled():Bool;
}
