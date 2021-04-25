// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
An Omnidirectional light is a type of `godot.Light` that emits light in all directions. The light is attenuated by distance and this attenuation can be configured by changing its energy, radius, and attenuation parameters.

Note: By default, only 32 OmniLights may affect a single mesh resource at once. Consider splitting your level into several meshes to decrease the likelihood that more than 32 lights will affect the same mesh resource. Splitting the level mesh will also improve frustum culling effectiveness, leading to greater performance. If you need to use more lights per mesh, you can increase  at the cost of shader compilation times.
**/
@:libType
@:csNative
@:native("Godot.OmniLight")
@:autoBuild(godot.Godot.buildUserClass())
extern class OmniLight extends godot.Light {
	/**		
		See `godot.OmniLight_ShadowDetail`.
	**/
	@:native("OmniShadowDetail")
	public var omniShadowDetail:godot.OmniLight_ShadowDetail;

	/**		
		See `godot.OmniLight_ShadowMode`.
	**/
	@:native("OmniShadowMode")
	public var omniShadowMode:godot.OmniLight_ShadowMode;

	/**		
		The light's attenuation (drop-off) curve. A number of presets are available in the Inspector by right-clicking the curve.
	**/
	@:native("OmniAttenuation")
	public var omniAttenuation:Single;

	/**		
		The light's radius. Note that the effectively lit area may appear to be smaller depending on the `godot.OmniLight.omniAttenuation` in use. No matter the `godot.OmniLight.omniAttenuation` in use, the light will never reach anything outside this radius.
	**/
	@:native("OmniRange")
	public var omniRange:Single;

	@:native("new")
	public function new():Void;

	@:native("SetShadowMode")
	public function setShadowMode(mode:godot.OmniLight_ShadowMode):Void;

	@:native("GetShadowMode")
	public function getShadowMode():godot.OmniLight_ShadowMode;

	@:native("SetShadowDetail")
	public function setShadowDetail(detail:godot.OmniLight_ShadowDetail):Void;

	@:native("GetShadowDetail")
	public function getShadowDetail():godot.OmniLight_ShadowDetail;
}
