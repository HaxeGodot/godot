// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Once added to the scene tree and enabled using `godot.Listener2D.makeCurrent`, this node will override the location sounds are heard from. Only one `godot.Listener2D` can be current. Using `godot.Listener2D.makeCurrent` will disable the previous `godot.Listener2D`.

If there is no active `godot.Listener2D` in the current `godot.Viewport`, center of the screen will be used as a hearing point for the audio. `godot.Listener2D` needs to be inside `godot.SceneTree` to function.
**/
@:libType
@:csNative
@:native("Godot.Listener2D")
@:autoBuild(godot.Godot.buildUserClass())
extern class Listener2D extends godot.Node2D {
	@:native("new")
	public function new():Void;

	/**		
		Makes the `godot.Listener2D` active, setting it as the hearing point for the sounds. If there is already another active `godot.Listener2D`, it will be disabled.
		
		This method will have no effect if the `godot.Listener2D` is not added to `godot.SceneTree`.
	**/
	@:native("MakeCurrent")
	public function makeCurrent():Void;

	/**		
		Disables the `godot.Listener2D`. If it's not set as current, this method will have no effect.
	**/
	@:native("ClearCurrent")
	public function clearCurrent():Void;

	/**		
		Returns `true` if this `godot.Listener2D` is currently active.
	**/
	@:native("IsCurrent")
	public function isCurrent():Bool;
}
