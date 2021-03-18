// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.UndoRedo.MergeMode")
@:csNative
extern enum UndoRedo_MergeMode {
	/**		
		Makes "do"/"undo" operations stay in separate actions.
	**/
	Disable;

	/**		
		Makes so that the action's "do" operation is from the first action created and the "undo" operation is from the last subsequent action with the same name.
	**/
	Ends;

	/**		
		Makes subsequent actions with the same name be merged into one.
	**/
	All;
}
