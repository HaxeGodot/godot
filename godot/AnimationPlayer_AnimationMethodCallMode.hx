// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.AnimationPlayer.AnimationMethodCallMode")
@:csNative
extern enum AnimationPlayer_AnimationMethodCallMode {
	/**		
		Batch method calls during the animation process, then do the calls after events are processed. This avoids bugs involving deleting nodes or modifying the AnimationPlayer while playing.
	**/
	Deferred;

	/**		
		Make method calls immediately when reached in the animation.
	**/
	Immediate;
}
