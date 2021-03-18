// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.Node.DuplicateFlags")
@:csNative
extern enum Node_DuplicateFlags {
	/**		
		Duplicate the node's signals.
	**/
	Signals;

	/**		
		Duplicate the node's groups.
	**/
	Groups;

	/**		
		Duplicate the node's scripts.
	**/
	Scripts;

	/**		
		Duplicate using instancing.
		
		An instance stays linked to the original so when the original changes, the instance changes too.
	**/
	UseInstancing;
}
