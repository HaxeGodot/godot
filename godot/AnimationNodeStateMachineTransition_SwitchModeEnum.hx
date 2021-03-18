// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.AnimationNodeStateMachineTransition.SwitchModeEnum")
@:csNative
extern enum AnimationNodeStateMachineTransition_SwitchModeEnum {
	/**		
		Switch to the next state immediately. The current state will end and blend into the beginning of the new one.
	**/
	Immediate;

	/**		
		Switch to the next state immediately, but will seek the new state to the playback position of the old state.
	**/
	Sync;

	/**		
		Wait for the current state playback to end, then switch to the beginning of the next state animation.
	**/
	AtEnd;
}
