// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.VisibilityEnabler2D.Enabler")
@:csNative
extern enum VisibilityEnabler2D_Enabler {
	/**		
		This enabler will pause `godot.AnimationPlayer` nodes.
	**/
	PauseAnimations;

	/**		
		This enabler will freeze `godot.RigidBody2D` nodes.
	**/
	FreezeBodies;

	/**		
		This enabler will stop `godot.Particles2D` nodes.
	**/
	PauseParticles;

	/**		
		This enabler will stop the parent's _process function.
	**/
	ParentProcess;

	/**		
		This enabler will stop the parent's _physics_process function.
	**/
	ParentPhysicsProcess;

	/**		
		This enabler will stop `godot.AnimatedSprite` nodes animations.
	**/
	PauseAnimatedSprites;

	/**		
		Represents the size of the `godot.VisibilityEnabler2D_Enabler` enum.
	**/
	Max;
}
