// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Once added to the scene tree and enabled using `godot.Listener.makeCurrent`, this node will override the location sounds are heard from. This can be used to listen from a location different from the `godot.Camera`.

Note: There is no 2D equivalent for this node yet.
**/
@:libType
@:csNative
@:native("Godot.Listener")
@:autoBuild(godot.Godot.buildUserClass())
extern class Listener extends godot.Spatial {
	@:native("new")
	public function new():Void;

	/**		
		Enables the listener. This will override the current camera's listener.
	**/
	@:native("MakeCurrent")
	public function makeCurrent():Void;

	/**		
		Disables the listener to use the current camera's listener instead.
	**/
	@:native("ClearCurrent")
	public function clearCurrent():Void;

	/**		
		Returns `true` if the listener was made current using `godot.Listener.makeCurrent`, `false` otherwise.
		
		Note: There may be more than one Listener marked as "current" in the scene tree, but only the one that was made current last will be used.
	**/
	@:native("IsCurrent")
	public function isCurrent():Bool;

	/**		
		Returns the listener's global orthonormalized `godot.Transform`.
	**/
	@:native("GetListenerTransform")
	public function getListenerTransform():godot.Transform;
}
