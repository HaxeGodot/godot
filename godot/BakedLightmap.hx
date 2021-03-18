// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Baked lightmaps are an alternative workflow for adding indirect (or baked) lighting to a scene. Unlike the `godot.GIProbe` approach, baked lightmaps work fine on low-end PCs and mobile devices as they consume almost no resources in run-time.

Note: This node has many known bugs and will be [https://godotengine.org/article/godot-40-will-get-new-modernized-lightmapper](rewritten for Godot 4.0). See [https://github.com/godotengine/godot/issues/30929](GitHub issue #30929).
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
		The location where lightmaps will be saved.
	**/
	@:native("ImagePath")
	public var imagePath:std.String;

	/**		
		Grid size used for real-time capture information on dynamic objects. Cannot be larger than `godot.BakedLightmap.bakeCellSize`.
	**/
	@:native("CaptureCellSize")
	public var captureCellSize:Single;

	/**		
		If a `godot.Mesh.lightmapSizeHint` isn't specified, the lightmap baker will dynamically set the lightmap size using this value. This value is measured in texels per world unit. The maximum lightmap texture size is 4096x4096.
	**/
	@:native("BakeDefaultTexelsPerUnit")
	public var bakeDefaultTexelsPerUnit:Single;

	/**		
		The size of the affected area.
	**/
	@:native("BakeExtents")
	public var bakeExtents:godot.Vector3;

	/**		
		If `true`, the lightmap can capture light values greater than `1.0`. Turning this off will result in a smaller file size.
	**/
	@:native("BakeHdr")
	public var bakeHdr:Bool;

	/**		
		Multiplies the light sources' intensity by this value. For instance, if the value is set to 2, lights will be twice as bright. If the value is set to 0.5, lights will be half as bright.
	**/
	@:native("BakeEnergy")
	public var bakeEnergy:Single;

	/**		
		Defines how far the light will travel before it is no longer effective. The higher the number, the farther the light will travel. For instance, if the value is set to 2, the light will go twice as far. If the value is set to 0.5, the light will only go half as far.
	**/
	@:native("BakePropagation")
	public var bakePropagation:Single;

	/**		
		Lightmapping mode. See `godot.BakedLightmap_BakeModeEnum`.
	**/
	@:native("BakeMode")
	public var bakeMode:godot.BakedLightmap_BakeModeEnum;

	/**		
		Three quality modes are available. Higher quality requires more rendering time. See `godot.BakedLightmap_BakeQualityEnum`.
	**/
	@:native("BakeQuality")
	public var bakeQuality:godot.BakedLightmap_BakeQualityEnum;

	/**		
		Grid subdivision size for lightmapper calculation. The default value will work for most cases. Increase for better lighting on small details or if your scene is very large.
	**/
	@:native("BakeCellSize")
	public var bakeCellSize:Single;

	@:native("new")
	public function new():Void;

	@:native("SetLightData")
	public function setLightData(data:godot.BakedLightmapData):Void;

	@:native("GetLightData")
	public function getLightData():godot.BakedLightmapData;

	@:native("SetBakeCellSize")
	public function setBakeCellSize(bakeCellSize:Single):Void;

	@:native("GetBakeCellSize")
	public function getBakeCellSize():Single;

	@:native("SetCaptureCellSize")
	public function setCaptureCellSize(captureCellSize:Single):Void;

	@:native("GetCaptureCellSize")
	public function getCaptureCellSize():Single;

	@:native("SetBakeQuality")
	public function setBakeQuality(bakeQuality:godot.BakedLightmap_BakeQualityEnum):Void;

	@:native("GetBakeQuality")
	public function getBakeQuality():godot.BakedLightmap_BakeQualityEnum;

	@:native("SetBakeMode")
	public function setBakeMode(bakeMode:godot.BakedLightmap_BakeModeEnum):Void;

	@:native("GetBakeMode")
	public function getBakeMode():godot.BakedLightmap_BakeModeEnum;

	@:native("SetExtents")
	public function setExtents(extents:godot.Vector3):Void;

	@:native("GetExtents")
	public function getExtents():godot.Vector3;

	@:native("SetBakeDefaultTexelsPerUnit")
	public function setBakeDefaultTexelsPerUnit(texels:Single):Void;

	@:native("GetBakeDefaultTexelsPerUnit")
	public function getBakeDefaultTexelsPerUnit():Single;

	@:native("SetPropagation")
	public function setPropagation(propagation:Single):Void;

	@:native("GetPropagation")
	public function getPropagation():Single;

	@:native("SetEnergy")
	public function setEnergy(energy:Single):Void;

	@:native("GetEnergy")
	public function getEnergy():Single;

	@:native("SetHdr")
	public function setHdr(hdr:Bool):Void;

	@:native("IsHdr")
	public function isHdr():Bool;

	@:native("SetImagePath")
	public function setImagePath(imagePath:std.String):Void;

	@:native("GetImagePath")
	public function getImagePath():std.String;

	#if doc_gen
	/**		
		Bakes the lightmaps within the currently edited scene. Returns a `godot.BakedLightmap_BakeError` to signify if the bake was successful, or if unsuccessful, how the bake failed.
	**/
	@:native("Bake")
	public function bake(?fromNode:godot.Node, ?createVisualDebug:Bool):godot.BakedLightmap_BakeError;
	#else
	/**		
		Bakes the lightmaps within the currently edited scene. Returns a `godot.BakedLightmap_BakeError` to signify if the bake was successful, or if unsuccessful, how the bake failed.
	**/
	@:native("Bake")
	public overload function bake():godot.BakedLightmap_BakeError;

	/**		
		Bakes the lightmaps within the currently edited scene. Returns a `godot.BakedLightmap_BakeError` to signify if the bake was successful, or if unsuccessful, how the bake failed.
	**/
	@:native("Bake")
	public overload function bake(fromNode:godot.Node):godot.BakedLightmap_BakeError;

	/**		
		Bakes the lightmaps within the currently edited scene. Returns a `godot.BakedLightmap_BakeError` to signify if the bake was successful, or if unsuccessful, how the bake failed.
	**/
	@:native("Bake")
	public overload function bake(fromNode:godot.Node, createVisualDebug:Bool):godot.BakedLightmap_BakeError;
	#end

	/**		
		Executes a dry run bake of lightmaps within the currently edited scene.
	**/
	@:native("DebugBake")
	public function debugBake():Void;
}
