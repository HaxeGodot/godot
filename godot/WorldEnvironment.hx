// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
The `godot.WorldEnvironment` node is used to configure the default `godot.Environment` for the scene.

The parameters defined in the `godot.WorldEnvironment` can be overridden by an `godot.Environment` node set on the current `godot.Camera`. Additionally, only one `godot.WorldEnvironment` may be instanced in a given scene at a time.

The `godot.WorldEnvironment` allows the user to specify default lighting parameters (e.g. ambient lighting), various post-processing effects (e.g. SSAO, DOF, Tonemapping), and how to draw the background (e.g. solid color, skybox). Usually, these are added in order to improve the realism/color balance of the scene.
**/
@:libType
@:csNative
@:native("Godot.WorldEnvironment")
@:autoBuild(godot.Godot.buildUserClass())
extern class WorldEnvironment extends godot.Node {
	/**		
		The `godot.Environment` resource used by this `godot.WorldEnvironment`, defining the default properties.
	**/
	@:native("Environment")
	public var environment:godot.Environment;

	@:native("new")
	public function new():Void;

	@:native("SetEnvironment")
	public function setEnvironment(env:godot.Environment):Void;

	@:native("GetEnvironment")
	public function getEnvironment():godot.Environment;
}
