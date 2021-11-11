// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Light is the abstract base class for light nodes. As it can't be instanced, it shouldn't be used directly. Other types of light nodes inherit from it. Light contains the common variables and parameters used for lighting.
**/
@:libType
@:csNative
@:native("Godot.Light")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class Light extends godot.VisualInstance {
	/**		
		If `true`, the light only appears in the editor and will not be visible at runtime.
	**/
	@:native("EditorOnly")
	public var editorOnly:Bool;

	/**		
		If `true`, reverses the backface culling of the mesh. This can be useful when you have a flat mesh that has a light behind it. If you need to cast a shadow on both sides of the mesh, set the mesh to use double-sided shadows with `godot.GeometryInstance_ShadowCastingSetting.doubleSided`.
	**/
	@:native("ShadowReverseCullFace")
	public var shadowReverseCullFace:Bool;

	/**		
		Attempts to reduce `godot.Light.shadowBias` gap.
	**/
	@:native("ShadowContact")
	public var shadowContact:Single;

	/**		
		Used to adjust shadow appearance. Too small a value results in self-shadowing ("shadow acne"), while too large a value causes shadows to separate from casters ("peter-panning"). Adjust as needed.
	**/
	@:native("ShadowBias")
	public var shadowBias:Single;

	/**		
		The color of shadows cast by this light.
	**/
	@:native("ShadowColor")
	public var shadowColor:godot.Color;

	/**		
		If `true`, the light will cast shadows.
	**/
	@:native("ShadowEnabled")
	public var shadowEnabled:Bool;

	/**		
		The light will affect objects in the selected layers.
	**/
	@:native("LightCullMask")
	public var lightCullMask:UInt;

	/**		
		The light's bake mode. See `godot.Light_BakeMode`.
	**/
	@:native("LightBakeMode")
	public var lightBakeMode:godot.Light_BakeMode;

	/**		
		The intensity of the specular blob in objects affected by the light. At `0`, the light becomes a pure diffuse light. When not baking emission, this can be used to avoid unrealistic reflections when placing lights above an emissive surface.
	**/
	@:native("LightSpecular")
	public var lightSpecular:Single;

	/**		
		If `true`, the light's effect is reversed, darkening areas and casting bright shadows.
	**/
	@:native("LightNegative")
	public var lightNegative:Bool;

	/**		
		The size of the light in Godot units. Only considered in baked lightmaps and only if `godot.Light.lightBakeMode` is set to `godot.Light_BakeMode.all`. Increasing this value will make the shadows appear blurrier. This can be used to simulate area lights to an extent.
	**/
	@:native("LightSize")
	public var lightSize:Single;

	/**		
		Secondary multiplier used with indirect light (light bounces). This works on both `godot.BakedLightmap` and `godot.GIProbe`.
	**/
	@:native("LightIndirectEnergy")
	public var lightIndirectEnergy:Single;

	/**		
		The light's strength multiplier (this is not a physical unit). For `godot.OmniLight` and `godot.SpotLight`, changing this value will only change the light color's intensity, not the light's radius.
	**/
	@:native("LightEnergy")
	public var lightEnergy:Single;

	/**		
		The light's color. An overbright color can be used to achieve a result equivalent to increasing the light's `godot.Light.lightEnergy`.
	**/
	@:native("LightColor")
	public var lightColor:godot.Color;

	@:native("SetEditorOnly")
	public function setEditorOnly(editorOnly:Bool):Void;

	@:native("IsEditorOnly")
	public function isEditorOnly():Bool;

	/**		
		Sets the value of the specified `godot.Light_Param` parameter.
	**/
	@:native("SetParam")
	public function setParam(param:godot.Light_Param, value:Single):Void;

	/**		
		Returns the value of the specified `godot.Light_Param` parameter.
	**/
	@:native("GetParam")
	public function getParam(param:godot.Light_Param):Single;

	@:native("SetShadow")
	public function setShadow(enabled:Bool):Void;

	@:native("HasShadow")
	public function hasShadow():Bool;

	@:native("SetNegative")
	public function setNegative(enabled:Bool):Void;

	@:native("IsNegative")
	public function isNegative():Bool;

	@:native("SetCullMask")
	public function setCullMask(cullMask:UInt):Void;

	@:native("GetCullMask")
	public function getCullMask():UInt;

	@:native("SetColor")
	public function setColor(color:godot.Color):Void;

	@:native("GetColor")
	public function getColor():godot.Color;

	@:native("SetShadowReverseCullFace")
	public function setShadowReverseCullFace(enable:Bool):Void;

	@:native("GetShadowReverseCullFace")
	public function getShadowReverseCullFace():Bool;

	@:native("SetShadowColor")
	public function setShadowColor(shadowColor:godot.Color):Void;

	@:native("GetShadowColor")
	public function getShadowColor():godot.Color;

	@:native("SetBakeMode")
	public function setBakeMode(bakeMode:godot.Light_BakeMode):Void;

	@:native("GetBakeMode")
	public function getBakeMode():godot.Light_BakeMode;
}
