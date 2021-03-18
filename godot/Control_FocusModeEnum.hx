// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.Control.FocusModeEnum")
@:csNative
extern enum Control_FocusModeEnum {
	/**		
		The node cannot grab focus. Use with `godot.Control.focusMode`.
	**/
	None;

	/**		
		The node can only grab focus on mouse clicks. Use with `godot.Control.focusMode`.
	**/
	Click;

	/**		
		The node can grab focus on mouse click or using the arrows and the Tab keys on the keyboard. Use with `godot.Control.focusMode`.
	**/
	All;
}
