// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.AnimationPlayer.AnimationProcessMode")
@:csNative
extern enum AnimationPlayer_AnimationProcessMode {
	/**		
		Process animation during the physics process. This is especially useful when animating physics bodies.
	**/
	Physics;

	/**		
		Process animation during the idle process.
	**/
	Idle;

	/**		
		Do not process animation. Use `godot.AnimationPlayer.advance` to process the animation manually.
	**/
	Manual;
}
