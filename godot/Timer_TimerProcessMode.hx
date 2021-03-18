// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.Timer.TimerProcessMode")
@:csNative
extern enum Timer_TimerProcessMode {
	/**		
		Update the timer during the physics step at each frame (fixed framerate processing).
	**/
	Physics;

	/**		
		Update the timer during the idle time at each frame.
	**/
	Idle;
}
