// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.Input.CursorShape")
@:csNative
extern enum Input_CursorShape {
	/**		
		Arrow cursor. Standard, default pointing cursor.
	**/
	Arrow;

	/**		
		I-beam cursor. Usually used to show where the text cursor will appear when the mouse is clicked.
	**/
	Ibeam;

	/**		
		Pointing hand cursor. Usually used to indicate the pointer is over a link or other interactable item.
	**/
	PointingHand;

	/**		
		Cross cursor. Typically appears over regions in which a drawing operation can be performed or for selections.
	**/
	Cross;

	/**		
		Wait cursor. Indicates that the application is busy performing an operation. This cursor shape denotes that the application is still usable during the operation.
	**/
	Wait;

	/**		
		Busy cursor. Indicates that the application is busy performing an operation. This cursor shape denotes that the application isn't usable during the operation (e.g. something is blocking its main thread).
	**/
	Busy;

	/**		
		Drag cursor. Usually displayed when dragging something.
	**/
	Drag;

	/**		
		Can drop cursor. Usually displayed when dragging something to indicate that it can be dropped at the current position.
	**/
	CanDrop;

	/**		
		Forbidden cursor. Indicates that the current action is forbidden (for example, when dragging something) or that the control at a position is disabled.
	**/
	Forbidden;

	/**		
		Vertical resize mouse cursor. A double-headed vertical arrow. It tells the user they can resize the window or the panel vertically.
	**/
	Vsize;

	/**		
		Horizontal resize mouse cursor. A double-headed horizontal arrow. It tells the user they can resize the window or the panel horizontally.
	**/
	Hsize;

	/**		
		Window resize mouse cursor. The cursor is a double-headed arrow that goes from the bottom left to the top right. It tells the user they can resize the window or the panel both horizontally and vertically.
	**/
	Bdiagsize;

	/**		
		Window resize mouse cursor. The cursor is a double-headed arrow that goes from the top left to the bottom right, the opposite of . It tells the user they can resize the window or the panel both horizontally and vertically.
	**/
	Fdiagsize;

	/**		
		Move cursor. Indicates that something can be moved.
	**/
	Move;

	/**		
		Vertical split mouse cursor. On Windows, it's the same as .
	**/
	Vsplit;

	/**		
		Horizontal split mouse cursor. On Windows, it's the same as .
	**/
	Hsplit;

	/**		
		Help cursor. Usually a question mark.
	**/
	Help;
}
