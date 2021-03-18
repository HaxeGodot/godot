// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.SceneTree.GroupCallFlags")
@:csNative
extern enum SceneTree_GroupCallFlags {
	/**		
		Call a group with no flags (default).
	**/
	Default;

	/**		
		Call a group in reverse scene order.
	**/
	Reverse;

	/**		
		Call a group immediately (calls are normally made on idle).
	**/
	Realtime;

	/**		
		Call a group only once even if the call is executed many times.
	**/
	Unique;
}
