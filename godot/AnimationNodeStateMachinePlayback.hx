// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Allows control of `godot.AnimationTree` state machines created with `godot.AnimationNodeStateMachine`. Retrieve with `$AnimationTree.get("parameters/playback")`.

Example:

```

var state_machine = $AnimationTree.get("parameters/playback")
state_machine.travel("some_state")

```
**/
@:libType
@:csNative
@:native("Godot.AnimationNodeStateMachinePlayback")
@:autoBuild(godot.Godot.buildUserClass())
extern class AnimationNodeStateMachinePlayback extends godot.Resource {
	@:native("new")
	public function new():Void;

	/**		
		Transitions from the current state to another one, following the shortest path.
	**/
	@:native("Travel")
	public function travel(toNode:std.String):Void;

	/**		
		Starts playing the given animation.
	**/
	@:native("Start")
	public function start(node:std.String):Void;

	/**		
		Stops the currently playing animation.
	**/
	@:native("Stop")
	public function stop():Void;

	/**		
		Returns `true` if an animation is playing.
	**/
	@:native("IsPlaying")
	public function isPlaying():Bool;

	/**		
		Returns the currently playing animation state.
	**/
	@:native("GetCurrentNode")
	public function getCurrentNode():std.String;

	/**		
		Returns the current travel path as computed internally by the A* algorithm.
	**/
	@:native("GetTravelPath")
	public function getTravelPath():cs.NativeArray<std.String>;
}
