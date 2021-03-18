// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Class that has everything pertaining to a world. A physics space, a visual scenario and a sound space. Spatial nodes register their resources into the current world.
**/
@:libType
@:csNative
@:native("Godot.World")
@:autoBuild(godot.Godot.buildUserClass())
extern class World extends godot.Resource {
	/**		
		Direct access to the world's physics 3D space state. Used for querying current and potential collisions. Must only be accessed from within `_physics_process(delta)`.
	**/
	@:native("DirectSpaceState")
	public var directSpaceState(default, never):godot.PhysicsDirectSpaceState;

	/**		
		The World's visual scenario.
	**/
	@:native("Scenario")
	public var scenario(default, never):godot.RID;

	/**		
		The World's physics space.
	**/
	@:native("Space")
	public var space(default, never):godot.RID;

	/**		
		The World's fallback_environment will be used if the World's `godot.Environment` fails or is missing.
	**/
	@:native("FallbackEnvironment")
	public var fallbackEnvironment:godot.Environment;

	/**		
		The World's `godot.Environment`.
	**/
	@:native("Environment")
	public var environment:godot.Environment;

	@:native("new")
	public function new():Void;

	@:native("GetSpace")
	public function getSpace():godot.RID;

	@:native("GetScenario")
	public function getScenario():godot.RID;

	@:native("SetEnvironment")
	public function setEnvironment(env:godot.Environment):Void;

	@:native("GetEnvironment")
	public function getEnvironment():godot.Environment;

	@:native("SetFallbackEnvironment")
	public function setFallbackEnvironment(env:godot.Environment):Void;

	@:native("GetFallbackEnvironment")
	public function getFallbackEnvironment():godot.Environment;

	@:native("GetDirectSpaceState")
	public function getDirectSpaceState():godot.PhysicsDirectSpaceState;
}
