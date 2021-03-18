// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.Input.MouseMode")
@:csNative
extern enum Input_MouseMode {
	/**		
		Makes the mouse cursor visible if it is hidden.
	**/
	Visible;

	/**		
		Makes the mouse cursor hidden if it is visible.
	**/
	Hidden;

	/**		
		Captures the mouse. The mouse will be hidden and its position locked at the center of the screen.
		
		Note: If you want to process the mouse's movement in this mode, you need to use `godot.InputEventMouseMotion.relative`.
	**/
	Captured;

	/**		
		Makes the mouse cursor visible but confines it to the game window.
	**/
	Confined;
}
