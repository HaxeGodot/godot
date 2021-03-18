// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
The VisibilityEnabler2D will disable `godot.RigidBody2D`, `godot.AnimationPlayer`, and other nodes when they are not visible. It will only affect nodes with the same root node as the VisibilityEnabler2D, and the root node itself.

If you just want to receive notifications, use `godot.VisibilityNotifier2D` instead.

Note: For performance reasons, VisibilityEnabler2D uses an approximate heuristic with precision determined by . If you need precise visibility checking, use another method such as adding an `godot.Area2D` node as a child of a `godot.Camera2D` node.

Note: VisibilityEnabler2D will not affect nodes added after scene initialization.
**/
@:libType
@:csNative
@:native("Godot.VisibilityEnabler2D")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisibilityEnabler2D extends godot.VisibilityNotifier2D {
	/**		
		If `true`, the parent's `godot.Node._PhysicsProcess` will be stopped.
	**/
	@:native("PhysicsProcessParent")
	public var physicsProcessParent:Bool;

	/**		
		If `true`, the parent's `godot.Node._Process` will be stopped.
	**/
	@:native("ProcessParent")
	public var processParent:Bool;

	/**		
		If `true`, `godot.AnimatedSprite` nodes will be paused.
	**/
	@:native("PauseAnimatedSprites")
	public var pauseAnimatedSprites:Bool;

	/**		
		If `true`, `godot.Particles2D` nodes will be paused.
	**/
	@:native("PauseParticles")
	public var pauseParticles:Bool;

	/**		
		If `true`, `godot.RigidBody2D` nodes will be paused.
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
		Sets active state of the enabler identified by given `godot.VisibilityEnabler2D_Enabler` constant.
	**/
	@:native("SetEnabler")
	public function setEnabler(enabler:godot.VisibilityEnabler2D_Enabler, enabled:Bool):Void;

	/**		
		Returns whether the enabler identified by given `godot.VisibilityEnabler2D_Enabler` constant is active.
	**/
	@:native("IsEnablerEnabled")
	public function isEnablerEnabled(enabler:godot.VisibilityEnabler2D_Enabler):Bool;
}
