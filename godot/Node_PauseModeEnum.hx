// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.Node.PauseModeEnum")
@:csNative
extern enum Node_PauseModeEnum {
	/**		
		Inherits pause mode from the node's parent. For the root node, it is equivalent to `godot.Node_PauseModeEnum.stop`. Default.
	**/
	Inherit;

	/**		
		Stops processing when the `godot.SceneTree` is paused.
	**/
	Stop;

	/**		
		Continue to process regardless of the `godot.SceneTree` pause state.
	**/
	Process;
}
