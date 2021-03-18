// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.AnimationTree.AnimationProcessMode")
@:csNative
extern enum AnimationTree_AnimationProcessMode {
	/**		
		The animations will progress during the physics frame (i.e. `godot.Node._PhysicsProcess`).
	**/
	Physics;

	/**		
		The animations will progress during the idle frame (i.e. `godot.Node._Process`).
	**/
	Idle;

	/**		
		The animations will only progress manually (see `godot.AnimationTree.advance`).
	**/
	Manual;
}
