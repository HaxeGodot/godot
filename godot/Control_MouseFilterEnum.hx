// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.Control.MouseFilterEnum")
@:csNative
extern enum Control_MouseFilterEnum {
	/**		
		The control will receive mouse button input events through `godot.Control._GuiInput` if clicked on. And the control will receive the `mouse_entered` and `mouse_exited` signals. These events are automatically marked as handled, and they will not propagate further to other controls. This also results in blocking signals in other controls.
	**/
	Stop;

	/**		
		The control will receive mouse button input events through `godot.Control._GuiInput` if clicked on. And the control will receive the `mouse_entered` and `mouse_exited` signals. If this control does not handle the event, the parent control (if any) will be considered, and so on until there is no more parent control to potentially handle it. This also allows signals to fire in other controls. Even if no control handled it at all, the event will still be handled automatically, so unhandled input will not be fired.
	**/
	Pass;

	/**		
		The control will not receive mouse button input events through `godot.Control._GuiInput`. The control will also not receive the `mouse_entered` nor `mouse_exited` signals. This will not block other controls from receiving these events or firing the signals. Ignored events will not be handled automatically.
	**/
	Ignore;
}
