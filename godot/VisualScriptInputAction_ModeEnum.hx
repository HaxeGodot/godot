// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.VisualScriptInputAction.ModeEnum")
@:csNative
extern enum VisualScriptInputAction_ModeEnum {
	/**		
		`True` if action is pressed.
	**/
	Pressed;

	/**		
		`True` if action is released (i.e. not pressed).
	**/
	Released;

	/**		
		`True` on the frame the action was pressed.
	**/
	JustPressed;

	/**		
		`True` on the frame the action was released.
	**/
	JustReleased;
}
