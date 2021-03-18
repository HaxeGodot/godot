// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.Control.SizeFlags")
@:csNative
extern enum Control_SizeFlags {
	/**		
		Tells the parent `godot.Container` to expand the bounds of this node to fill all the available space without pushing any other node. Use with `godot.Control.sizeFlagsHorizontal` and `godot.Control.sizeFlagsVertical`.
	**/
	Fill;

	/**		
		Tells the parent `godot.Container` to let this node take all the available space on the axis you flag. If multiple neighboring nodes are set to expand, they'll share the space based on their stretch ratio. See `godot.Control.sizeFlagsStretchRatio`. Use with `godot.Control.sizeFlagsHorizontal` and `godot.Control.sizeFlagsVertical`.
	**/
	Expand;

	/**		
		Sets the node's size flags to both fill and expand. See the 2 constants above for more information.
	**/
	ExpandFill;

	/**		
		Tells the parent `godot.Container` to center the node in itself. It centers the control based on its bounding box, so it doesn't work with the fill or expand size flags. Use with `godot.Control.sizeFlagsHorizontal` and `godot.Control.sizeFlagsVertical`.
	**/
	ShrinkCenter;

	/**		
		Tells the parent `godot.Container` to align the node with its end, either the bottom or the right edge. It doesn't work with the fill or expand size flags. Use with `godot.Control.sizeFlagsHorizontal` and `godot.Control.sizeFlagsVertical`.
	**/
	ShrinkEnd;
}
