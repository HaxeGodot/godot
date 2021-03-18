// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A directional light is a type of `godot.Light` node that models an infinite number of parallel rays covering the entire scene. It is used for lights with strong intensity that are located far away from the scene to model sunlight or moonlight. The worldspace location of the DirectionalLight transform (origin) is ignored. Only the basis is used to determine light direction.
**/
@:libType
@:csNative
@:native("Godot.DirectionalLight")
@:autoBuild(godot.Godot.buildUserClass())
extern class DirectionalLight extends godot.Light {
	/**		
		The maximum distance for shadow splits.
	**/
	@:native("DirectionalShadowMaxDistance")
	public var directionalShadowMaxDistance:Single;

	/**		
		Optimizes shadow rendering for detail versus movement. See `godot.DirectionalLight_ShadowDepthRange`.
	**/
	@:native("DirectionalShadowDepthRange")
	public var directionalShadowDepthRange:godot.DirectionalLight_ShadowDepthRange;

	/**		
		Amount of extra bias for shadow splits that are far away. If self-shadowing occurs only on the splits far away, increasing this value can fix them.
	**/
	@:native("DirectionalShadowBiasSplitScale")
	public var directionalShadowBiasSplitScale:Single;

	/**		
		Can be used to fix special cases of self shadowing when objects are perpendicular to the light.
	**/
	@:native("DirectionalShadowNormalBias")
	public var directionalShadowNormalBias:Single;

	/**		
		If `true`, shadow detail is sacrificed in exchange for smoother transitions between splits.
	**/
	@:native("DirectionalShadowBlendSplits")
	public var directionalShadowBlendSplits:Bool;

	/**		
		The distance from shadow split 2 to split 3. Relative to `godot.DirectionalLight.directionalShadowMaxDistance`. Only used when `godot.DirectionalLight.directionalShadowMode` is `SHADOW_PARALLEL_4_SPLITS`.
	**/
	@:native("DirectionalShadowSplit3")
	public var directionalShadowSplit3:Single;

	/**		
		The distance from shadow split 1 to split 2. Relative to `godot.DirectionalLight.directionalShadowMaxDistance`. Only used when `godot.DirectionalLight.directionalShadowMode` is `SHADOW_PARALLEL_2_SPLITS` or `SHADOW_PARALLEL_4_SPLITS`.
	**/
	@:native("DirectionalShadowSplit2")
	public var directionalShadowSplit2:Single;

	/**		
		The distance from camera to shadow split 1. Relative to `godot.DirectionalLight.directionalShadowMaxDistance`. Only used when `godot.DirectionalLight.directionalShadowMode` is `SHADOW_PARALLEL_2_SPLITS` or `SHADOW_PARALLEL_4_SPLITS`.
	**/
	@:native("DirectionalShadowSplit1")
	public var directionalShadowSplit1:Single;

	/**		
		The light's shadow rendering algorithm. See `godot.DirectionalLight_ShadowMode`.
	**/
	@:native("DirectionalShadowMode")
	public var directionalShadowMode:godot.DirectionalLight_ShadowMode;

	@:native("new")
	public function new():Void;

	@:native("SetShadowMode")
	public function setShadowMode(mode:godot.DirectionalLight_ShadowMode):Void;

	@:native("GetShadowMode")
	public function getShadowMode():godot.DirectionalLight_ShadowMode;

	@:native("SetShadowDepthRange")
	public function setShadowDepthRange(mode:godot.DirectionalLight_ShadowDepthRange):Void;

	@:native("GetShadowDepthRange")
	public function getShadowDepthRange():godot.DirectionalLight_ShadowDepthRange;

	@:native("SetBlendSplits")
	public function setBlendSplits(enabled:Bool):Void;

	@:native("IsBlendSplitsEnabled")
	public function isBlendSplitsEnabled():Bool;
}
