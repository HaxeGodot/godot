// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
The VisibilityEnabler will disable `godot.RigidBody` and `godot.AnimationPlayer` nodes when they are not visible. It will only affect other nodes within the same scene as the VisibilityEnabler itself.

If you just want to receive notifications, use `godot.VisibilityNotifier` instead.

Note: VisibilityEnabler uses an approximate heuristic for performance reasons. It doesn't take walls and other occlusion into account. The heuristic is an implementation detail and may change in future versions. If you need precise visibility checking, use another method such as adding an `godot.Area` node as a child of a `godot.Camera` node and/or `Vector3.dot`.

Note: VisibilityEnabler will not affect nodes added after scene initialization.
**/
@:libType
@:csNative
@:native("Godot.VisibilityEnabler")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisibilityEnabler extends godot.VisibilityNotifier {
	/**		
		If `true`, `godot.RigidBody` nodes will be paused.
	**/
	@:native("FreezeBodies")
	public var freezeBodies:Bool;

	/**		
		If `true`, `godot.AnimationPlayer` nodes will be paused.
	**/
	@:native("PauseAnimations")
	public var pauseAnimations:Bool;

	@:native("new")
	public function new():Void;

	/**		
		Sets active state of the enabler identified by given `godot.VisibilityEnabler_Enabler` constant.
	**/
	@:native("SetEnabler")
	public function setEnabler(enabler:godot.VisibilityEnabler_Enabler, enabled:Bool):Void;

	/**		
		Returns whether the enabler identified by given `godot.VisibilityEnabler_Enabler` constant is active.
	**/
	@:native("IsEnablerEnabled")
	public function isEnablerEnabled(enabler:godot.VisibilityEnabler_Enabler):Bool;
}
