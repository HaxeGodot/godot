// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Resource for environment nodes (like `godot.WorldEnvironment`) that define multiple environment operations (such as background `godot.Sky` or `godot.Color`, ambient light, fog, depth-of-field...). These parameters affect the final render of the scene. The order of these operations is:

- Depth of Field Blur

- Glow

- Tonemap (Auto Exposure)

- Adjustments

If the target `godot.Viewport` is set to "2D Without Sampling", all post-processing effects will be unavailable. With "3D Without Effects", the following options will be unavailable:

- Ssao

- Ss Reflections

This can be configured for the root Viewport with , or for specific Viewports via the `godot.Viewport.usage` property.

Note that  has a mobile platform override to use "3D Without Effects" by default. It improves the performance on mobile devices, but at the same time affects the screen display on mobile devices.
**/
@:libType
@:csNative
@:native("Godot.Environment")
@:autoBuild(godot.Godot.buildUserClass())
extern class Environment extends godot.Resource {
	/**		
		Applies the provided `godot.Texture` resource to affect the global color aspect of the rendered scene. Effective only if `adjustment_enabled` is `true`.
	**/
	@:native("AdjustmentColorCorrection")
	public var adjustmentColorCorrection:godot.Texture;

	/**		
		The global color saturation value of the rendered scene (default value is 1). Effective only if `adjustment_enabled` is `true`.
	**/
	@:native("AdjustmentSaturation")
	public var adjustmentSaturation:Single;

	/**		
		The global contrast value of the rendered scene (default value is 1). Effective only if `adjustment_enabled` is `true`.
	**/
	@:native("AdjustmentContrast")
	public var adjustmentContrast:Single;

	/**		
		The global brightness value of the rendered scene. Effective only if `adjustment_enabled` is `true`.
	**/
	@:native("AdjustmentBrightness")
	public var adjustmentBrightness:Single;

	/**		
		If `true`, enables the `adjustment_*` properties provided by this resource. If `false`, modifications to the `adjustment_*` properties will have no effect on the rendered scene.
	**/
	@:native("AdjustmentEnabled")
	public var adjustmentEnabled:Bool;

	/**		
		Takes more samples during downsample pass of glow. This ensures that single pixels are captured by glow which makes the glow look smoother and more stable during movement. However, it is very expensive and makes the glow post process take twice as long.
	**/
	@:native("GlowHighQuality")
	public var glowHighQuality:Bool;

	/**		
		Smooths out the blockiness created by sampling higher levels, at the cost of performance.
		
		Note: When using the GLES2 renderer, this is only available if the GPU supports the `GL_EXT_gpu_shader4` extension.
	**/
	@:native("GlowBicubicUpscale")
	public var glowBicubicUpscale:Bool;

	/**		
		The bleed scale of the HDR glow.
	**/
	@:native("GlowHdrScale")
	public var glowHdrScale:Single;

	/**		
		The higher threshold of the HDR glow. Areas brighter than this threshold will be clamped for the purposes of the glow effect.
	**/
	@:native("GlowHdrLuminanceCap")
	public var glowHdrLuminanceCap:Single;

	/**		
		The lower threshold of the HDR glow. When using the GLES2 renderer (which doesn't support HDR), this needs to be below `1.0` for glow to be visible. A value of `0.9` works well in this case.
	**/
	@:native("GlowHdrThreshold")
	public var glowHdrThreshold:Single;

	/**		
		The glow blending mode.
	**/
	@:native("GlowBlendMode")
	public var glowBlendMode:godot.Environment_GlowBlendModeEnum;

	/**		
		The bloom's intensity. If set to a value higher than `0`, this will make glow visible in areas darker than the `godot.Environment.glowHdrThreshold`.
	**/
	@:native("GlowBloom")
	public var glowBloom:Single;

	/**		
		The glow strength. When using the GLES2 renderer, this should be increased to 1.3 to compensate for the lack of HDR rendering.
	**/
	@:native("GlowStrength")
	public var glowStrength:Single;

	/**		
		The glow intensity. When using the GLES2 renderer, this should be increased to 1.5 to compensate for the lack of HDR rendering.
	**/
	@:native("GlowIntensity")
	public var glowIntensity:Single;

	/**		
		If `true`, the 7th level of glow is enabled. This is the most "global" level (blurriest).
	**/
	@:native("GlowLevels__7")
	public var glowLevels__7:Bool;

	/**		
		If `true`, the 6th level of glow is enabled.
	**/
	@:native("GlowLevels__6")
	public var glowLevels__6:Bool;

	/**		
		If `true`, the 5th level of glow is enabled.
	**/
	@:native("GlowLevels__5")
	public var glowLevels__5:Bool;

	/**		
		If `true`, the 4th level of glow is enabled.
	**/
	@:native("GlowLevels__4")
	public var glowLevels__4:Bool;

	/**		
		If `true`, the 3th level of glow is enabled.
	**/
	@:native("GlowLevels__3")
	public var glowLevels__3:Bool;

	/**		
		If `true`, the 2th level of glow is enabled.
	**/
	@:native("GlowLevels__2")
	public var glowLevels__2:Bool;

	/**		
		If `true`, the 1st level of glow is enabled. This is the most "local" level (least blurry).
	**/
	@:native("GlowLevels__1")
	public var glowLevels__1:Bool;

	/**		
		If `true`, the glow effect is enabled.
		
		Note: Only effective if  is 3D (not 3D Without Effects). On mobile,  defaults to 3D Without Effects by default, so its `.mobile` override needs to be changed to 3D.
		
		Note: When using GLES3 on mobile, HDR rendering is disabled by default for performance reasons. This means glow will only be visible if `godot.Environment.glowHdrThreshold` is decreased below `1.0` or if `godot.Environment.glowBloom` is increased above `0.0`. Also consider increasing `godot.Environment.glowIntensity` to `1.5`. If you want glow to behave on mobile like it does on desktop (at a performance cost), enable 's `.mobile` override.
	**/
	@:native("GlowEnabled")
	public var glowEnabled:Bool;

	/**		
		The depth-of-field near blur's quality. Higher values can mitigate the visible banding effect seen at higher strengths, but are much slower.
	**/
	@:native("DofBlurNearQuality")
	public var dofBlurNearQuality:godot.Environment_DOFBlurQuality;

	/**		
		The amount of near blur for the depth-of-field effect.
	**/
	@:native("DofBlurNearAmount")
	public var dofBlurNearAmount:Single;

	/**		
		The length of the transition between the near blur and no-blur area.
	**/
	@:native("DofBlurNearTransition")
	public var dofBlurNearTransition:Single;

	/**		
		Distance from the camera where the near blur effect affects the rendering.
	**/
	@:native("DofBlurNearDistance")
	public var dofBlurNearDistance:Single;

	/**		
		If `true`, enables the depth-of-field near blur effect.
	**/
	@:native("DofBlurNearEnabled")
	public var dofBlurNearEnabled:Bool;

	/**		
		The depth-of-field far blur's quality. Higher values can mitigate the visible banding effect seen at higher strengths, but are much slower.
	**/
	@:native("DofBlurFarQuality")
	public var dofBlurFarQuality:godot.Environment_DOFBlurQuality;

	/**		
		The amount of far blur for the depth-of-field effect.
	**/
	@:native("DofBlurFarAmount")
	public var dofBlurFarAmount:Single;

	/**		
		The length of the transition between the no-blur area and far blur.
	**/
	@:native("DofBlurFarTransition")
	public var dofBlurFarTransition:Single;

	/**		
		The distance from the camera where the far blur effect affects the rendering.
	**/
	@:native("DofBlurFarDistance")
	public var dofBlurFarDistance:Single;

	/**		
		If `true`, enables the depth-of-field far blur effect.
	**/
	@:native("DofBlurFarEnabled")
	public var dofBlurFarEnabled:Bool;

	/**		
		The screen-space ambient occlusion edge sharpness.
	**/
	@:native("SsaoEdgeSharpness")
	public var ssaoEdgeSharpness:Single;

	/**		
		The screen-space ambient occlusion blur quality. See `godot.Environment_SSAOBlur` for possible values.
	**/
	@:native("SsaoBlur")
	public var ssaoBlur:godot.Environment_SSAOBlur;

	/**		
		The screen-space ambient occlusion quality. Higher qualities will make better use of small objects for ambient occlusion, but are slower.
	**/
	@:native("SsaoQuality")
	public var ssaoQuality:godot.Environment_SSAOQuality;

	/**		
		The screen-space ambient occlusion color.
	**/
	@:native("SsaoColor")
	public var ssaoColor:godot.Color;

	/**		
		The screen-space ambient occlusion intensity on materials that have an AO texture defined. Values higher than `0` will make the SSAO effect visible in areas darkened by AO textures.
	**/
	@:native("SsaoAoChannelAffect")
	public var ssaoAoChannelAffect:Single;

	/**		
		The screen-space ambient occlusion intensity in direct light. In real life, ambient occlusion only applies to indirect light, which means its effects can't be seen in direct light. Values higher than `0` will make the SSAO effect visible in direct light.
	**/
	@:native("SsaoLightAffect")
	public var ssaoLightAffect:Single;

	/**		
		The screen-space ambient occlusion bias. This should be kept high enough to prevent "smooth" curves from being affected by ambient occlusion.
	**/
	@:native("SsaoBias")
	public var ssaoBias:Single;

	/**		
		The secondary screen-space ambient occlusion intensity. See also `godot.Environment.ssaoRadius2`.
	**/
	@:native("SsaoIntensity2")
	public var ssaoIntensity2:Single;

	/**		
		The secondary screen-space ambient occlusion radius. If set to a value higher than `0`, enables the secondary screen-space ambient occlusion effect which can be used to improve the effect's appearance (at the cost of performance).
	**/
	@:native("SsaoRadius2")
	public var ssaoRadius2:Single;

	/**		
		The primary screen-space ambient occlusion intensity. See also `godot.Environment.ssaoRadius`.
	**/
	@:native("SsaoIntensity")
	public var ssaoIntensity:Single;

	/**		
		The primary screen-space ambient occlusion radius.
	**/
	@:native("SsaoRadius")
	public var ssaoRadius:Single;

	/**		
		If `true`, the screen-space ambient occlusion effect is enabled. This darkens objects' corners and cavities to simulate ambient light not reaching the entire object as in real life. This works well for small, dynamic objects, but baked lighting or ambient occlusion textures will do a better job at displaying ambient occlusion on large static objects. This is a costly effect and should be disabled first when running into performance issues.
	**/
	@:native("SsaoEnabled")
	public var ssaoEnabled:Bool;

	/**		
		If `true`, screen-space reflections will take the material roughness into account.
	**/
	@:native("SsReflectionsRoughness")
	public var ssReflectionsRoughness:Bool;

	/**		
		The depth tolerance for screen-space reflections.
	**/
	@:native("SsReflectionsDepthTolerance")
	public var ssReflectionsDepthTolerance:Single;

	/**		
		The fade-out distance for screen-space reflections. Affects the area from the screen-space reflection to the "global" reflection.
	**/
	@:native("SsReflectionsFadeOut")
	public var ssReflectionsFadeOut:Single;

	/**		
		The fade-in distance for screen-space reflections. Affects the area from the reflected material to the screen-space reflection).
	**/
	@:native("SsReflectionsFadeIn")
	public var ssReflectionsFadeIn:Single;

	/**		
		The maximum number of steps for screen-space reflections. Higher values are slower.
	**/
	@:native("SsReflectionsMaxSteps")
	public var ssReflectionsMaxSteps:Int;

	/**		
		If `true`, screen-space reflections are enabled. Screen-space reflections are more accurate than reflections from `godot.GIProbe`s or `godot.ReflectionProbe`s, but are slower and can't reflect surfaces occluded by others.
	**/
	@:native("SsReflectionsEnabled")
	public var ssReflectionsEnabled:Bool;

	/**		
		The speed of the auto exposure effect. Affects the time needed for the camera to perform auto exposure.
	**/
	@:native("AutoExposureSpeed")
	public var autoExposureSpeed:Single;

	/**		
		The maximum luminance value for the auto exposure.
	**/
	@:native("AutoExposureMaxLuma")
	public var autoExposureMaxLuma:Single;

	/**		
		The minimum luminance value for the auto exposure.
	**/
	@:native("AutoExposureMinLuma")
	public var autoExposureMinLuma:Single;

	/**		
		The scale of the auto exposure effect. Affects the intensity of auto exposure.
	**/
	@:native("AutoExposureScale")
	public var autoExposureScale:Single;

	/**		
		If `true`, enables the tonemapping auto exposure mode of the scene renderer. If `true`, the renderer will automatically determine the exposure setting to adapt to the scene's illumination and the observed light.
	**/
	@:native("AutoExposureEnabled")
	public var autoExposureEnabled:Bool;

	/**		
		The white reference value for tonemapping. Only effective if the `godot.Environment.tonemapMode` isn't set to `godot.Environment_ToneMapper.linear`.
	**/
	@:native("TonemapWhite")
	public var tonemapWhite:Single;

	/**		
		The default exposure used for tonemapping.
	**/
	@:native("TonemapExposure")
	public var tonemapExposure:Single;

	/**		
		The tonemapping mode to use. Tonemapping is the process that "converts" HDR values to be suitable for rendering on a LDR display. (Godot doesn't support rendering on HDR displays yet.)
	**/
	@:native("TonemapMode")
	public var tonemapMode:godot.Environment_ToneMapper;

	/**		
		The height fog's intensity. A number of presets are available in the Inspector by right-clicking the curve.
	**/
	@:native("FogHeightCurve")
	public var fogHeightCurve:Single;

	/**		
		The Y coordinate where the height fog will be the most intense. If this value is greater than `godot.Environment.fogHeightMin`, fog will be displayed from bottom to top. Otherwise, it will be displayed from top to bottom.
	**/
	@:native("FogHeightMax")
	public var fogHeightMax:Single;

	/**		
		The Y coordinate where the height fog will be the least intense. If this value is greater than `godot.Environment.fogHeightMax`, fog will be displayed from top to bottom. Otherwise, it will be displayed from bottom to top.
	**/
	@:native("FogHeightMin")
	public var fogHeightMin:Single;

	/**		
		If `true`, the height fog effect is enabled. When enabled, fog will appear in a defined height range, regardless of the distance from the camera. This can be used to simulate "deep water" effects with a lower performance cost compared to a dedicated shader.
	**/
	@:native("FogHeightEnabled")
	public var fogHeightEnabled:Bool;

	/**		
		The intensity of the fog light transmittance effect. Amount of light that the fog transmits.
	**/
	@:native("FogTransmitCurve")
	public var fogTransmitCurve:Single;

	/**		
		Enables fog's light transmission effect. If `true`, light will be more visible in the fog to simulate light scattering as in real life.
	**/
	@:native("FogTransmitEnabled")
	public var fogTransmitEnabled:Bool;

	/**		
		The fog depth's intensity curve. A number of presets are available in the Inspector by right-clicking the curve.
	**/
	@:native("FogDepthCurve")
	public var fogDepthCurve:Single;

	/**		
		The fog's depth end distance from the camera. If this value is set to 0, it will be equal to the current camera's `godot.Camera.far` value.
	**/
	@:native("FogDepthEnd")
	public var fogDepthEnd:Single;

	/**		
		The fog's depth starting distance from the camera.
	**/
	@:native("FogDepthBegin")
	public var fogDepthBegin:Single;

	/**		
		If `true`, the depth fog effect is enabled. When enabled, fog will appear in the distance (relative to the camera).
	**/
	@:native("FogDepthEnabled")
	public var fogDepthEnabled:Bool;

	/**		
		The intensity of the depth fog color transition when looking towards the sun. The sun's direction is determined automatically using the DirectionalLight node in the scene.
	**/
	@:native("FogSunAmount")
	public var fogSunAmount:Single;

	/**		
		The depth fog's `godot.Color` when looking towards the sun.
	**/
	@:native("FogSunColor")
	public var fogSunColor:godot.Color;

	/**		
		The fog's `godot.Color`.
	**/
	@:native("FogColor")
	public var fogColor:godot.Color;

	/**		
		If `true`, fog effects are enabled. `godot.Environment.fogHeightEnabled` and/or `godot.Environment.fogDepthEnabled` must be set to `true` to actually display fog.
	**/
	@:native("FogEnabled")
	public var fogEnabled:Bool;

	/**		
		Defines the amount of light that the sky brings on the scene. A value of `0.0` means that the sky's light emission has no effect on the scene illumination, thus all ambient illumination is provided by the ambient light. On the contrary, a value of `1.0` means that all the light that affects the scene is provided by the sky, thus the ambient light parameter has no effect on the scene.
		
		Note: `godot.Environment.ambientLightSkyContribution` is internally clamped between `0.0` and `1.0` (inclusive).
	**/
	@:native("AmbientLightSkyContribution")
	public var ambientLightSkyContribution:Single;

	/**		
		The ambient light's energy. The higher the value, the stronger the light.
	**/
	@:native("AmbientLightEnergy")
	public var ambientLightEnergy:Single;

	/**		
		The ambient light's `godot.Color`.
	**/
	@:native("AmbientLightColor")
	public var ambientLightColor:godot.Color;

	/**		
		The ID of the camera feed to show in the background.
	**/
	@:native("BackgroundCameraFeedId")
	public var backgroundCameraFeedId:Int;

	/**		
		The maximum layer ID to display. Only effective when using the `godot.Environment_BGMode.canvas` background mode.
	**/
	@:native("BackgroundCanvasMaxLayer")
	public var backgroundCanvasMaxLayer:Int;

	/**		
		The power of the light emitted by the background.
	**/
	@:native("BackgroundEnergy")
	public var backgroundEnergy:Single;

	/**		
		The `godot.Color` displayed for clear areas of the scene. Only effective when using the `godot.Environment_BGMode.color` or `godot.Environment_BGMode.colorSky` background modes).
	**/
	@:native("BackgroundColor")
	public var backgroundColor:godot.Color;

	/**		
		The `godot.Sky` resource's rotation expressed as Euler angles in degrees.
	**/
	@:native("BackgroundSkyRotationDegrees")
	public var backgroundSkyRotationDegrees:godot.Vector3;

	/**		
		The `godot.Sky` resource's rotation expressed as Euler angles in radians.
	**/
	@:native("BackgroundSkyRotation")
	public var backgroundSkyRotation:godot.Vector3;

	/**		
		The `godot.Sky` resource's rotation expressed as a `godot.Basis`.
	**/
	@:native("BackgroundSkyOrientation")
	public var backgroundSkyOrientation:godot.Basis;

	/**		
		The `godot.Sky` resource's custom field of view.
	**/
	@:native("BackgroundSkyCustomFov")
	public var backgroundSkyCustomFov:Single;

	/**		
		The `godot.Sky` resource defined as background.
	**/
	@:native("BackgroundSky")
	public var backgroundSky:godot.Sky;

	/**		
		The background mode. See `godot.Environment_BGMode` for possible values.
	**/
	@:native("BackgroundMode")
	public var backgroundMode:godot.Environment_BGMode;

	@:native("new")
	public function new():Void;

	@:native("SetBackground")
	public function setBackground(mode:godot.Environment_BGMode):Void;

	@:native("SetSky")
	public function setSky(sky:godot.Sky):Void;

	@:native("SetSkyCustomFov")
	public function setSkyCustomFov(scale:Single):Void;

	@:native("SetSkyOrientation")
	public function setSkyOrientation(orientation:godot.Basis):Void;

	@:native("SetSkyRotation")
	public function setSkyRotation(eulerRadians:godot.Vector3):Void;

	@:native("SetSkyRotationDegrees")
	public function setSkyRotationDegrees(eulerDegrees:godot.Vector3):Void;

	@:native("SetBgColor")
	public function setBgColor(color:godot.Color):Void;

	@:native("SetBgEnergy")
	public function setBgEnergy(energy:Single):Void;

	@:native("SetCanvasMaxLayer")
	public function setCanvasMaxLayer(layer:Int):Void;

	@:native("SetAmbientLightColor")
	public function setAmbientLightColor(color:godot.Color):Void;

	@:native("SetAmbientLightEnergy")
	public function setAmbientLightEnergy(energy:Single):Void;

	@:native("SetAmbientLightSkyContribution")
	public function setAmbientLightSkyContribution(energy:Single):Void;

	@:native("SetCameraFeedId")
	public function setCameraFeedId(cameraFeedId:Int):Void;

	@:native("GetBackground")
	public function getBackground():godot.Environment_BGMode;

	@:native("GetSky")
	public function getSky():godot.Sky;

	@:native("GetSkyCustomFov")
	public function getSkyCustomFov():Single;

	@:native("GetSkyOrientation")
	public function getSkyOrientation():godot.Basis;

	@:native("GetSkyRotation")
	public function getSkyRotation():godot.Vector3;

	@:native("GetSkyRotationDegrees")
	public function getSkyRotationDegrees():godot.Vector3;

	@:native("GetBgColor")
	public function getBgColor():godot.Color;

	@:native("GetBgEnergy")
	public function getBgEnergy():Single;

	@:native("GetCanvasMaxLayer")
	public function getCanvasMaxLayer():Int;

	@:native("GetAmbientLightColor")
	public function getAmbientLightColor():godot.Color;

	@:native("GetAmbientLightEnergy")
	public function getAmbientLightEnergy():Single;

	@:native("GetAmbientLightSkyContribution")
	public function getAmbientLightSkyContribution():Single;

	@:native("GetCameraFeedId")
	public function getCameraFeedId():Int;

	@:native("SetFogEnabled")
	public function setFogEnabled(enabled:Bool):Void;

	@:native("IsFogEnabled")
	public function isFogEnabled():Bool;

	@:native("SetFogColor")
	public function setFogColor(color:godot.Color):Void;

	@:native("GetFogColor")
	public function getFogColor():godot.Color;

	@:native("SetFogSunColor")
	public function setFogSunColor(color:godot.Color):Void;

	@:native("GetFogSunColor")
	public function getFogSunColor():godot.Color;

	@:native("SetFogSunAmount")
	public function setFogSunAmount(amount:Single):Void;

	@:native("GetFogSunAmount")
	public function getFogSunAmount():Single;

	@:native("SetFogDepthEnabled")
	public function setFogDepthEnabled(enabled:Bool):Void;

	@:native("IsFogDepthEnabled")
	public function isFogDepthEnabled():Bool;

	@:native("SetFogDepthBegin")
	public function setFogDepthBegin(distance:Single):Void;

	@:native("GetFogDepthBegin")
	public function getFogDepthBegin():Single;

	@:native("SetFogDepthEnd")
	public function setFogDepthEnd(distance:Single):Void;

	@:native("GetFogDepthEnd")
	public function getFogDepthEnd():Single;

	@:native("SetFogDepthCurve")
	public function setFogDepthCurve(curve:Single):Void;

	@:native("GetFogDepthCurve")
	public function getFogDepthCurve():Single;

	@:native("SetFogTransmitEnabled")
	public function setFogTransmitEnabled(enabled:Bool):Void;

	@:native("IsFogTransmitEnabled")
	public function isFogTransmitEnabled():Bool;

	@:native("SetFogTransmitCurve")
	public function setFogTransmitCurve(curve:Single):Void;

	@:native("GetFogTransmitCurve")
	public function getFogTransmitCurve():Single;

	@:native("SetFogHeightEnabled")
	public function setFogHeightEnabled(enabled:Bool):Void;

	@:native("IsFogHeightEnabled")
	public function isFogHeightEnabled():Bool;

	@:native("SetFogHeightMin")
	public function setFogHeightMin(height:Single):Void;

	@:native("GetFogHeightMin")
	public function getFogHeightMin():Single;

	@:native("SetFogHeightMax")
	public function setFogHeightMax(height:Single):Void;

	@:native("GetFogHeightMax")
	public function getFogHeightMax():Single;

	@:native("SetFogHeightCurve")
	public function setFogHeightCurve(curve:Single):Void;

	@:native("GetFogHeightCurve")
	public function getFogHeightCurve():Single;

	@:native("SetTonemapper")
	public function setTonemapper(mode:godot.Environment_ToneMapper):Void;

	@:native("GetTonemapper")
	public function getTonemapper():godot.Environment_ToneMapper;

	@:native("SetTonemapExposure")
	public function setTonemapExposure(exposure:Single):Void;

	@:native("GetTonemapExposure")
	public function getTonemapExposure():Single;

	@:native("SetTonemapWhite")
	public function setTonemapWhite(white:Single):Void;

	@:native("GetTonemapWhite")
	public function getTonemapWhite():Single;

	@:native("SetTonemapAutoExposure")
	public function setTonemapAutoExposure(autoExposure:Bool):Void;

	@:native("GetTonemapAutoExposure")
	public function getTonemapAutoExposure():Bool;

	@:native("SetTonemapAutoExposureMax")
	public function setTonemapAutoExposureMax(exposureMax:Single):Void;

	@:native("GetTonemapAutoExposureMax")
	public function getTonemapAutoExposureMax():Single;

	@:native("SetTonemapAutoExposureMin")
	public function setTonemapAutoExposureMin(exposureMin:Single):Void;

	@:native("GetTonemapAutoExposureMin")
	public function getTonemapAutoExposureMin():Single;

	@:native("SetTonemapAutoExposureSpeed")
	public function setTonemapAutoExposureSpeed(exposureSpeed:Single):Void;

	@:native("GetTonemapAutoExposureSpeed")
	public function getTonemapAutoExposureSpeed():Single;

	@:native("SetTonemapAutoExposureGrey")
	public function setTonemapAutoExposureGrey(exposureGrey:Single):Void;

	@:native("GetTonemapAutoExposureGrey")
	public function getTonemapAutoExposureGrey():Single;

	@:native("SetSsrEnabled")
	public function setSsrEnabled(enabled:Bool):Void;

	@:native("IsSsrEnabled")
	public function isSsrEnabled():Bool;

	@:native("SetSsrMaxSteps")
	public function setSsrMaxSteps(maxSteps:Int):Void;

	@:native("GetSsrMaxSteps")
	public function getSsrMaxSteps():Int;

	@:native("SetSsrFadeIn")
	public function setSsrFadeIn(fadeIn:Single):Void;

	@:native("GetSsrFadeIn")
	public function getSsrFadeIn():Single;

	@:native("SetSsrFadeOut")
	public function setSsrFadeOut(fadeOut:Single):Void;

	@:native("GetSsrFadeOut")
	public function getSsrFadeOut():Single;

	@:native("SetSsrDepthTolerance")
	public function setSsrDepthTolerance(depthTolerance:Single):Void;

	@:native("GetSsrDepthTolerance")
	public function getSsrDepthTolerance():Single;

	@:native("SetSsrRough")
	public function setSsrRough(rough:Bool):Void;

	@:native("IsSsrRough")
	public function isSsrRough():Bool;

	@:native("SetSsaoEnabled")
	public function setSsaoEnabled(enabled:Bool):Void;

	@:native("IsSsaoEnabled")
	public function isSsaoEnabled():Bool;

	@:native("SetSsaoRadius")
	public function setSsaoRadius(radius:Single):Void;

	@:native("GetSsaoRadius")
	public function getSsaoRadius():Single;

	@:native("SetSsaoIntensity")
	public function setSsaoIntensity(intensity:Single):Void;

	@:native("GetSsaoIntensity")
	public function getSsaoIntensity():Single;

	@:native("SetSsaoRadius2")
	public function setSsaoRadius2(radius:Single):Void;

	@:native("GetSsaoRadius2")
	public function getSsaoRadius2():Single;

	@:native("SetSsaoIntensity2")
	public function setSsaoIntensity2(intensity:Single):Void;

	@:native("GetSsaoIntensity2")
	public function getSsaoIntensity2():Single;

	@:native("SetSsaoBias")
	public function setSsaoBias(bias:Single):Void;

	@:native("GetSsaoBias")
	public function getSsaoBias():Single;

	@:native("SetSsaoDirectLightAffect")
	public function setSsaoDirectLightAffect(amount:Single):Void;

	@:native("GetSsaoDirectLightAffect")
	public function getSsaoDirectLightAffect():Single;

	@:native("SetSsaoAoChannelAffect")
	public function setSsaoAoChannelAffect(amount:Single):Void;

	@:native("GetSsaoAoChannelAffect")
	public function getSsaoAoChannelAffect():Single;

	@:native("SetSsaoColor")
	public function setSsaoColor(color:godot.Color):Void;

	@:native("GetSsaoColor")
	public function getSsaoColor():godot.Color;

	@:native("SetSsaoBlur")
	public function setSsaoBlur(mode:godot.Environment_SSAOBlur):Void;

	@:native("GetSsaoBlur")
	public function getSsaoBlur():godot.Environment_SSAOBlur;

	@:native("SetSsaoQuality")
	public function setSsaoQuality(quality:godot.Environment_SSAOQuality):Void;

	@:native("GetSsaoQuality")
	public function getSsaoQuality():godot.Environment_SSAOQuality;

	@:native("SetSsaoEdgeSharpness")
	public function setSsaoEdgeSharpness(edgeSharpness:Single):Void;

	@:native("GetSsaoEdgeSharpness")
	public function getSsaoEdgeSharpness():Single;

	@:native("SetDofBlurFarEnabled")
	public function setDofBlurFarEnabled(enabled:Bool):Void;

	@:native("IsDofBlurFarEnabled")
	public function isDofBlurFarEnabled():Bool;

	@:native("SetDofBlurFarDistance")
	public function setDofBlurFarDistance(intensity:Single):Void;

	@:native("GetDofBlurFarDistance")
	public function getDofBlurFarDistance():Single;

	@:native("SetDofBlurFarTransition")
	public function setDofBlurFarTransition(intensity:Single):Void;

	@:native("GetDofBlurFarTransition")
	public function getDofBlurFarTransition():Single;

	@:native("SetDofBlurFarAmount")
	public function setDofBlurFarAmount(intensity:Single):Void;

	@:native("GetDofBlurFarAmount")
	public function getDofBlurFarAmount():Single;

	@:native("SetDofBlurFarQuality")
	public function setDofBlurFarQuality(intensity:godot.Environment_DOFBlurQuality):Void;

	@:native("GetDofBlurFarQuality")
	public function getDofBlurFarQuality():godot.Environment_DOFBlurQuality;

	@:native("SetDofBlurNearEnabled")
	public function setDofBlurNearEnabled(enabled:Bool):Void;

	@:native("IsDofBlurNearEnabled")
	public function isDofBlurNearEnabled():Bool;

	@:native("SetDofBlurNearDistance")
	public function setDofBlurNearDistance(intensity:Single):Void;

	@:native("GetDofBlurNearDistance")
	public function getDofBlurNearDistance():Single;

	@:native("SetDofBlurNearTransition")
	public function setDofBlurNearTransition(intensity:Single):Void;

	@:native("GetDofBlurNearTransition")
	public function getDofBlurNearTransition():Single;

	@:native("SetDofBlurNearAmount")
	public function setDofBlurNearAmount(intensity:Single):Void;

	@:native("GetDofBlurNearAmount")
	public function getDofBlurNearAmount():Single;

	@:native("SetDofBlurNearQuality")
	public function setDofBlurNearQuality(level:godot.Environment_DOFBlurQuality):Void;

	@:native("GetDofBlurNearQuality")
	public function getDofBlurNearQuality():godot.Environment_DOFBlurQuality;

	@:native("SetGlowEnabled")
	public function setGlowEnabled(enabled:Bool):Void;

	@:native("IsGlowEnabled")
	public function isGlowEnabled():Bool;

	/**		
		Enables or disables the glow level at index `idx`. Each level relies on the previous level. This means that enabling higher glow levels will slow down the glow effect rendering, even if previous levels aren't enabled.
	**/
	@:native("SetGlowLevel")
	public function setGlowLevel(idx:Int, enabled:Bool):Void;

	/**		
		Returns `true` if the glow level `idx` is specified, `false` otherwise.
	**/
	@:native("IsGlowLevelEnabled")
	public function isGlowLevelEnabled(idx:Int):Bool;

	@:native("SetGlowIntensity")
	public function setGlowIntensity(intensity:Single):Void;

	@:native("GetGlowIntensity")
	public function getGlowIntensity():Single;

	@:native("SetGlowStrength")
	public function setGlowStrength(strength:Single):Void;

	@:native("GetGlowStrength")
	public function getGlowStrength():Single;

	@:native("SetGlowBloom")
	public function setGlowBloom(amount:Single):Void;

	@:native("GetGlowBloom")
	public function getGlowBloom():Single;

	@:native("SetGlowBlendMode")
	public function setGlowBlendMode(mode:godot.Environment_GlowBlendModeEnum):Void;

	@:native("GetGlowBlendMode")
	public function getGlowBlendMode():godot.Environment_GlowBlendModeEnum;

	@:native("SetGlowHdrBleedThreshold")
	public function setGlowHdrBleedThreshold(threshold:Single):Void;

	@:native("GetGlowHdrBleedThreshold")
	public function getGlowHdrBleedThreshold():Single;

	@:native("SetGlowHdrLuminanceCap")
	public function setGlowHdrLuminanceCap(amount:Single):Void;

	@:native("GetGlowHdrLuminanceCap")
	public function getGlowHdrLuminanceCap():Single;

	@:native("SetGlowHdrBleedScale")
	public function setGlowHdrBleedScale(scale:Single):Void;

	@:native("GetGlowHdrBleedScale")
	public function getGlowHdrBleedScale():Single;

	@:native("SetGlowBicubicUpscale")
	public function setGlowBicubicUpscale(enabled:Bool):Void;

	@:native("IsGlowBicubicUpscaleEnabled")
	public function isGlowBicubicUpscaleEnabled():Bool;

	@:native("SetGlowHighQuality")
	public function setGlowHighQuality(enabled:Bool):Void;

	@:native("IsGlowHighQualityEnabled")
	public function isGlowHighQualityEnabled():Bool;

	@:native("SetAdjustmentEnable")
	public function setAdjustmentEnable(enabled:Bool):Void;

	@:native("IsAdjustmentEnabled")
	public function isAdjustmentEnabled():Bool;

	@:native("SetAdjustmentBrightness")
	public function setAdjustmentBrightness(brightness:Single):Void;

	@:native("GetAdjustmentBrightness")
	public function getAdjustmentBrightness():Single;

	@:native("SetAdjustmentContrast")
	public function setAdjustmentContrast(contrast:Single):Void;

	@:native("GetAdjustmentContrast")
	public function getAdjustmentContrast():Single;

	@:native("SetAdjustmentSaturation")
	public function setAdjustmentSaturation(saturation:Single):Void;

	@:native("GetAdjustmentSaturation")
	public function getAdjustmentSaturation():Single;

	@:native("SetAdjustmentColorCorrection")
	public function setAdjustmentColorCorrection(colorCorrection:godot.Texture):Void;

	@:native("GetAdjustmentColorCorrection")
	public function getAdjustmentColorCorrection():godot.Texture;
}
