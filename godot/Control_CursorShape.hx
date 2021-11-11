// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.Control.CursorShape")
@:csNative
extern enum Control_CursorShape {
	/**		
		Show the system's arrow mouse cursor when the user hovers the node. Use with `godot.Control.mouseDefaultCursorShape`.
	**/
	Arrow;

	/**		
		Show the system's I-beam mouse cursor when the user hovers the node. The I-beam pointer has a shape similar to "I". It tells the user they can highlight or insert text.
	**/
	Ibeam;

	/**		
		Show the system's pointing hand mouse cursor when the user hovers the node.
	**/
	PointingHand;

	/**		
		Show the system's cross mouse cursor when the user hovers the node.
	**/
	Cross;

	/**		
		Show the system's wait mouse cursor, often an hourglass, when the user hovers the node.
	**/
	Wait;

	/**		
		Show the system's busy mouse cursor when the user hovers the node. Often an hourglass.
	**/
	Busy;

	/**		
		Show the system's drag mouse cursor, often a closed fist or a cross symbol, when the user hovers the node. It tells the user they're currently dragging an item, like a node in the Scene dock.
	**/
	Drag;

	/**		
		Show the system's drop mouse cursor when the user hovers the node. It can be an open hand. It tells the user they can drop an item they're currently grabbing, like a node in the Scene dock.
	**/
	CanDrop;

	/**		
		Show the system's forbidden mouse cursor when the user hovers the node. Often a crossed circle.
	**/
	Forbidden;

	/**		
		Show the system's vertical resize mouse cursor when the user hovers the node. A double-headed vertical arrow. It tells the user they can resize the window or the panel vertically.
	**/
	Vsize;

	/**		
		Show the system's horizontal resize mouse cursor when the user hovers the node. A double-headed horizontal arrow. It tells the user they can resize the window or the panel horizontally.
	**/
	Hsize;

	/**		
		Show the system's window resize mouse cursor when the user hovers the node. The cursor is a double-headed arrow that goes from the bottom left to the top right. It tells the user they can resize the window or the panel both horizontally and vertically.
	**/
	Bdiagsize;

	/**		
		Show the system's window resize mouse cursor when the user hovers the node. The cursor is a double-headed arrow that goes from the top left to the bottom right, the opposite of `godot.Control_CursorShape.bdiagsize`. It tells the user they can resize the window or the panel both horizontally and vertically.
	**/
	Fdiagsize;

	/**		
		Show the system's move mouse cursor when the user hovers the node. It shows 2 double-headed arrows at a 90 degree angle. It tells the user they can move a UI element freely.
	**/
	Move;

	/**		
		Show the system's vertical split mouse cursor when the user hovers the node. On Windows, it's the same as `godot.Control_CursorShape.vsize`.
	**/
	Vsplit;

	/**		
		Show the system's horizontal split mouse cursor when the user hovers the node. On Windows, it's the same as `godot.Control_CursorShape.hsize`.
	**/
	Hsplit;

	/**		
		Show the system's help mouse cursor when the user hovers the node, a question mark.
	**/
	Help;
}
