// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.Control.GrowDirection")
@:csNative
extern enum Control_GrowDirection {
	/**		
		The control will grow to the left or top to make up if its minimum size is changed to be greater than its current size on the respective axis.
	**/
	Begin;

	/**		
		The control will grow to the right or bottom to make up if its minimum size is changed to be greater than its current size on the respective axis.
	**/
	End;

	/**		
		The control will grow in both directions equally to make up if its minimum size is changed to be greater than its current size.
	**/
	Both;
}
