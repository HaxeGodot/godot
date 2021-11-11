// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Baked lightmaps are an alternative workflow for adding indirect (or baked) lighting to a scene. Unlike the `godot.GIProbe` approach, baked lightmaps work fine on low-end PCs and mobile devices as they consume almost no resources in run-time.

Note: Due to how lightmaps work, most properties only have a visible effect once lightmaps are baked again.
**/
@:libType
@:csNative
@:native("Godot.BakedLightmap")
@:autoBuild(godot.Godot.buildUserClass())
extern class BakedLightmap extends godot.VisualInstance {
	/**		
		The calculated light data.
	**/
	@:native("LightData")
	public var lightData:godot.BakedLightmapData;

	/**		
		Deprecated, in previous versions it determined the location where lightmaps were be saved.
	**/
	@:native("ImagePath")
	public var imagePath:std.String;

	/**		
		Bias value to reduce the amount of light proagation in the captured octree.
	**/
	@:native("CapturePropagation")
	public var capturePropagation:Single;

	/**		
		Bake quality of the capture data.
	**/
	@:native("CaptureQuality")
	public var captureQuality:godot.BakedLightmap_BakeQuality;

	/**		
		Grid size used for real-time capture information on dynamic objects.
	**/
	@:native("CaptureCellSize")
	public var captureCellSize:Single;

	/**		
		When enabled, an octree containing the scene's lighting information will be computed. This octree will then be used to light dynamic objects in the scene.
	**/
	@:native("CaptureEnabled")
	public var captureEnabled:Bool;

	/**		
		Minimum ambient light for all the lightmap texels. This doesn't take into account any occlusion from the scene's geometry, it simply ensures a minimum amount of light on all the lightmap texels. Can be used for artistic control on shadow color.
	**/
	@:native("EnvironmentMinLight")
	public var environmentMinLight:godot.Color;

	/**		
		The energy scaling factor when when `godot.BakedLightmap.environmentMode` is set to `godot.BakedLightmap_EnvironmentModeEnum.customColor` or `godot.BakedLightmap_EnvironmentModeEnum.customSky`.
	**/
	@:native("EnvironmentCustomEnergy")
	public var environmentCustomEnergy:Single;

	/**		
		The environment color when `godot.BakedLightmap.environmentMode` is set to `godot.BakedLightmap_EnvironmentModeEnum.customColor`.
	**/
	@:native("EnvironmentCustomColor")
	public var environmentCustomColor:godot.Color;

	/**		
		The rotation of the baked custom sky.
	**/
	@:native("EnvironmentCustomSkyRotationDegrees")
	public var environmentCustomSkyRotationDegrees:godot.Vector3;

	/**		
		The `godot.Sky` resource to use when `godot.BakedLightmap.environmentMode` is set o `godot.BakedLightmap_EnvironmentModeEnum.customSky`.
	**/
	@:native("EnvironmentCustomSky")
	public var environmentCustomSky:godot.Sky;

	/**		
		Decides which environment to use during baking.
	**/
	@:native("EnvironmentMode")
	public var environmentMode:godot.BakedLightmap_EnvironmentModeEnum;

	/**		
		Maximum size of each lightmap layer, only used when `godot.BakedLightmap.atlasGenerate` is enabled.
	**/
	@:native("AtlasMaxSize")
	public var atlasMaxSize:Int;

	/**		
		When enabled, the lightmapper will merge the textures for all meshes into a single large layered texture. Not supported in GLES2.
	**/
	@:native("AtlasGenerate")
	public var atlasGenerate:Bool;

	/**		
		If a baked mesh doesn't have a UV2 size hint, this value will be used to roughly compute a suitable lightmap size.
	**/
	@:native("DefaultTexelsPerUnit")
	public var defaultTexelsPerUnit:Single;

	/**		
		Raycasting bias used during baking to avoid floating point precision issues.
	**/
	@:native("Bias")
	public var bias:Single;

	/**		
		Store full color values in the lightmap textures. When disabled, lightmap textures will store a single brightness channel. Can be disabled to reduce disk usage if the scene contains only white lights or you don't mind losing color information in indirect lighting.
	**/
	@:native("UseColor")
	public var useColor:Bool;

	/**		
		If `true`, stores the lightmap textures in a high dynamic range format (EXR). If `false`, stores the lightmap texture in a low dynamic range PNG image. This can be set to `false` to reduce disk usage, but light values over 1.0 will be clamped and you may see banding caused by the reduced precision.
		
		Note: Setting `godot.BakedLightmap.useHdr` to `true` will decrease lightmap banding even when using the GLES2 backend or if  is `false`.
	**/
	@:native("UseHdr")
	public var useHdr:Bool;

	/**		
		When enabled, a lightmap denoiser will be used to reduce the noise inherent to Monte Carlo based global illumination.
	**/
	@:native("UseDenoiser")
	public var useDenoiser:Bool;

	/**		
		The energy multiplier for each bounce. Higher values will make indirect lighting brighter. A value of `1.0` represents physically accurate behavior, but higher values can be used to make indirect lighting propagate more visibly when using a low number of bounces. This can be used to speed up bake times by lowering the number of `godot.BakedLightmap.bounces` then increasing `godot.BakedLightmap.bounceIndirectEnergy`. Unlike `godot.BakedLightmapData.energy`, this property does not affect direct lighting emitted by light nodes, emissive materials and the environment.
		
		Note: `godot.BakedLightmap.bounceIndirectEnergy` only has an effect if `godot.BakedLightmap.bounces` is set to a value greater than or equal to `1`.
	**/
	@:native("BounceIndirectEnergy")
	public var bounceIndirectEnergy:Single;

	/**		
		Number of light bounces that are taken into account during baking. See also `godot.BakedLightmap.bounceIndirectEnergy`.
	**/
	@:native("Bounces")
	public var bounces:Int;

	/**		
		Determines the amount of samples per texel used in indrect light baking. The amount of samples for each quality level can be configured in the project settings.
	**/
	@:native("Quality")
	public var quality:godot.BakedLightmap_BakeQuality;

	/**		
		Size of the baked lightmap. Only meshes inside this region will be included in the baked lightmap, also used as the bounds of the captured region for dynamic lighting.
	**/
	@:native("Extents")
	public var extents:godot.Vector3;

	@:native("new")
	public function new():Void;

	@:native("SetLightData")
	public function setLightData(data:godot.BakedLightmapData):Void;

	@:native("GetLightData")
	public function getLightData():godot.BakedLightmapData;

	@:native("SetBakeQuality")
	public function setBakeQuality(quality:godot.BakedLightmap_BakeQuality):Void;

	@:native("GetBakeQuality")
	public function getBakeQuality():godot.BakedLightmap_BakeQuality;

	@:native("SetBounces")
	public function setBounces(bounces:Int):Void;

	@:native("GetBounces")
	public function getBounces():Int;

	@:native("SetBounceIndirectEnergy")
	public function setBounceIndirectEnergy(bounceIndirectEnergy:Single):Void;

	@:native("GetBounceIndirectEnergy")
	public function getBounceIndirectEnergy():Single;

	@:native("SetBias")
	public function setBias(bias:Single):Void;

	@:native("GetBias")
	public function getBias():Single;

	@:native("SetEnvironmentMode")
	public function setEnvironmentMode(mode:godot.BakedLightmap_EnvironmentModeEnum):Void;

	@:native("GetEnvironmentMode")
	public function getEnvironmentMode():godot.BakedLightmap_EnvironmentModeEnum;

	@:native("SetEnvironmentCustomSky")
	public function setEnvironmentCustomSky(sky:godot.Sky):Void;

	@:native("GetEnvironmentCustomSky")
	public function getEnvironmentCustomSky():godot.Sky;

	@:native("SetEnvironmentCustomSkyRotationDegrees")
	public function setEnvironmentCustomSkyRotationDegrees(rotation:godot.Vector3):Void;

	@:native("GetEnvironmentCustomSkyRotationDegrees")
	public function getEnvironmentCustomSkyRotationDegrees():godot.Vector3;

	@:native("SetEnvironmentCustomColor")
	public function setEnvironmentCustomColor(color:godot.Color):Void;

	@:native("GetEnvironmentCustomColor")
	public function getEnvironmentCustomColor():godot.Color;

	@:native("SetEnvironmentCustomEnergy")
	public function setEnvironmentCustomEnergy(energy:Single):Void;

	@:native("GetEnvironmentCustomEnergy")
	public function getEnvironmentCustomEnergy():Single;

	@:native("SetEnvironmentMinLight")
	public function setEnvironmentMinLight(minLight:godot.Color):Void;

	@:native("GetEnvironmentMinLight")
	public function getEnvironmentMinLight():godot.Color;

	@:native("SetUseDenoiser")
	public function setUseDenoiser(useDenoiser:Bool):Void;

	@:native("IsUsingDenoiser")
	public function isUsingDenoiser():Bool;

	@:native("SetUseHdr")
	public function setUseHdr(useDenoiser:Bool):Void;

	@:native("IsUsingHdr")
	public function isUsingHdr():Bool;

	@:native("SetUseColor")
	public function setUseColor(useDenoiser:Bool):Void;

	@:native("IsUsingColor")
	public function isUsingColor():Bool;

	@:native("SetGenerateAtlas")
	public function setGenerateAtlas(enabled:Bool):Void;

	@:native("IsGenerateAtlasEnabled")
	public function isGenerateAtlasEnabled():Bool;

	@:native("SetMaxAtlasSize")
	public function setMaxAtlasSize(maxAtlasSize:Int):Void;

	@:native("GetMaxAtlasSize")
	public function getMaxAtlasSize():Int;

	@:native("SetCaptureQuality")
	public function setCaptureQuality(captureQuality:godot.BakedLightmap_BakeQuality):Void;

	@:native("GetCaptureQuality")
	public function getCaptureQuality():godot.BakedLightmap_BakeQuality;

	@:native("SetExtents")
	public function setExtents(extents:godot.Vector3):Void;

	@:native("GetExtents")
	public function getExtents():godot.Vector3;

	@:native("SetDefaultTexelsPerUnit")
	public function setDefaultTexelsPerUnit(texels:Single):Void;

	@:native("GetDefaultTexelsPerUnit")
	public function getDefaultTexelsPerUnit():Single;

	@:native("SetCapturePropagation")
	public function setCapturePropagation(propagation:Single):Void;

	@:native("GetCapturePropagation")
	public function getCapturePropagation():Single;

	@:native("SetCaptureEnabled")
	public function setCaptureEnabled(enabled:Bool):Void;

	@:native("GetCaptureEnabled")
	public function getCaptureEnabled():Bool;

	@:native("SetCaptureCellSize")
	public function setCaptureCellSize(captureCellSize:Single):Void;

	@:native("GetCaptureCellSize")
	public function getCaptureCellSize():Single;

	@:native("SetImagePath")
	public function setImagePath(imagePath:std.String):Void;

	@:native("GetImagePath")
	public function getImagePath():std.String;

	#if doc_gen
	/**		
		Bakes the lightmap, scanning from the given `from_node` root and saves the resulting `godot.BakedLightmapData` in `data_save_path`. If no root node is provided, parent of this node will be used as root instead. If no save path is provided it will try to match the path from the current `godot.BakedLightmap.lightData`.
	**/
	@:native("Bake")
	public function bake(?fromNode:godot.Node, ?dataSavePath:std.String):godot.BakedLightmap_BakeError;
	#else
	/**		
		Bakes the lightmap, scanning from the given `from_node` root and saves the resulting `godot.BakedLightmapData` in `data_save_path`. If no root node is provided, parent of this node will be used as root instead. If no save path is provided it will try to match the path from the current `godot.BakedLightmap.lightData`.
	**/
	@:native("Bake")
	public overload function bake():godot.BakedLightmap_BakeError;

	/**		
		Bakes the lightmap, scanning from the given `from_node` root and saves the resulting `godot.BakedLightmapData` in `data_save_path`. If no root node is provided, parent of this node will be used as root instead. If no save path is provided it will try to match the path from the current `godot.BakedLightmap.lightData`.
	**/
	@:native("Bake")
	public overload function bake(fromNode:godot.Node):godot.BakedLightmap_BakeError;

	/**		
		Bakes the lightmap, scanning from the given `from_node` root and saves the resulting `godot.BakedLightmapData` in `data_save_path`. If no root node is provided, parent of this node will be used as root instead. If no save path is provided it will try to match the path from the current `godot.BakedLightmap.lightData`.
	**/
	@:native("Bake")
	public overload function bake(fromNode:godot.Node, dataSavePath:std.String):godot.BakedLightmap_BakeError;
	#end
}
