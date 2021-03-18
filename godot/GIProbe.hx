// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
`godot.GIProbe`s are used to provide high-quality real-time indirect light to scenes. They precompute the effect of objects that emit light and the effect of static geometry to simulate the behavior of complex light in real-time. `godot.GIProbe`s need to be baked before using, however, once baked, dynamic objects will receive light from them. Further, lights can be fully dynamic or baked.

Having `godot.GIProbe`s in a scene can be expensive, the quality of the probe can be turned down in exchange for better performance in the `godot.ProjectSettings` using .
**/
@:libType
@:csNative
@:native("Godot.GIProbe")
@:autoBuild(godot.Godot.buildUserClass())
extern class GIProbe extends godot.VisualInstance {
	/**		
		The `godot.GIProbeData` resource that holds the data for this `godot.GIProbe`.
	**/
	@:native("Data")
	public var data:godot.GIProbeData;

	/**		
		If `true`, the data for this `godot.GIProbe` will be compressed. Compression saves space, but results in far worse visual quality.
	**/
	@:native("Compress")
	public var compress:Bool;

	/**		
		If `true`, ignores the sky contribution when calculating lighting.
	**/
	@:native("Interior")
	public var interior:Bool;

	/**		
		Offsets the lookup into the `godot.GIProbe` based on the object's normal direction. Can be used to reduce some self-shadowing artifacts.
	**/
	@:native("NormalBias")
	public var normalBias:Single;

	/**		
		Offsets the lookup of the light contribution from the `godot.GIProbe`. This can be used to avoid self-shadowing, but may introduce light leaking at higher values. This and `godot.GIProbe.normalBias` should be played around with to minimize self-shadowing and light leaking.
		
		Note: `bias` should usually be above 1.0 as that is the size of the voxels.
	**/
	@:native("Bias")
	public var bias:Single;

	/**		
		How much light propagates through the probe internally. A higher value allows light to spread further.
	**/
	@:native("Propagation")
	public var propagation:Single;

	/**		
		Energy multiplier. Makes the lighting contribution from the `godot.GIProbe` brighter.
	**/
	@:native("Energy")
	public var energy:Single;

	/**		
		The maximum brightness that the `godot.GIProbe` will recognize. Brightness will be scaled within this range.
	**/
	@:native("DynamicRange")
	public var dynamicRange:Int;

	/**		
		The size of the area covered by the `godot.GIProbe`. If you make the extents larger without increasing the subdivisions with `godot.GIProbe.subdiv`, the size of each cell will increase and result in lower detailed lighting.
	**/
	@:native("Extents")
	public var extents:godot.Vector3;

	/**		
		Number of times to subdivide the grid that the `godot.GIProbe` operates on. A higher number results in finer detail and thus higher visual quality, while lower numbers result in better performance.
	**/
	@:native("Subdiv")
	public var subdiv:godot.GIProbe_SubdivEnum;

	@:native("new")
	public function new():Void;

	@:native("SetProbeData")
	public function setProbeData(data:godot.GIProbeData):Void;

	@:native("GetProbeData")
	public function getProbeData():godot.GIProbeData;

	@:native("SetSubdiv")
	public function setSubdiv(subdiv:godot.GIProbe_SubdivEnum):Void;

	@:native("GetSubdiv")
	public function getSubdiv():godot.GIProbe_SubdivEnum;

	@:native("SetExtents")
	public function setExtents(extents:godot.Vector3):Void;

	@:native("GetExtents")
	public function getExtents():godot.Vector3;

	@:native("SetDynamicRange")
	public function setDynamicRange(max:Int):Void;

	@:native("GetDynamicRange")
	public function getDynamicRange():Int;

	@:native("SetEnergy")
	public function setEnergy(max:Single):Void;

	@:native("GetEnergy")
	public function getEnergy():Single;

	@:native("SetBias")
	public function setBias(max:Single):Void;

	@:native("GetBias")
	public function getBias():Single;

	@:native("SetNormalBias")
	public function setNormalBias(max:Single):Void;

	@:native("GetNormalBias")
	public function getNormalBias():Single;

	@:native("SetPropagation")
	public function setPropagation(max:Single):Void;

	@:native("GetPropagation")
	public function getPropagation():Single;

	@:native("SetInterior")
	public function setInterior(enable:Bool):Void;

	@:native("IsInterior")
	public function isInterior():Bool;

	@:native("SetCompress")
	public function setCompress(enable:Bool):Void;

	@:native("IsCompressed")
	public function isCompressed():Bool;

	#if doc_gen
	/**		
		Bakes the effect from all `godot.GeometryInstance`s marked with `godot.GeometryInstance.useInBakedLight` and `godot.Light`s marked with either  or . If `create_visual_debug` is `true`, after baking the light, this will generate a `godot.MultiMesh` that has a cube representing each solid cell with each cube colored to the cell's albedo color. This can be used to visualize the `godot.GIProbe`'s data and debug any issues that may be occurring.
	**/
	@:native("Bake")
	public function bake(?fromNode:godot.Node, ?createVisualDebug:Bool):Void;
	#else
	/**		
		Bakes the effect from all `godot.GeometryInstance`s marked with `godot.GeometryInstance.useInBakedLight` and `godot.Light`s marked with either  or . If `create_visual_debug` is `true`, after baking the light, this will generate a `godot.MultiMesh` that has a cube representing each solid cell with each cube colored to the cell's albedo color. This can be used to visualize the `godot.GIProbe`'s data and debug any issues that may be occurring.
	**/
	@:native("Bake")
	public overload function bake():Void;

	/**		
		Bakes the effect from all `godot.GeometryInstance`s marked with `godot.GeometryInstance.useInBakedLight` and `godot.Light`s marked with either  or . If `create_visual_debug` is `true`, after baking the light, this will generate a `godot.MultiMesh` that has a cube representing each solid cell with each cube colored to the cell's albedo color. This can be used to visualize the `godot.GIProbe`'s data and debug any issues that may be occurring.
	**/
	@:native("Bake")
	public overload function bake(fromNode:godot.Node):Void;

	/**		
		Bakes the effect from all `godot.GeometryInstance`s marked with `godot.GeometryInstance.useInBakedLight` and `godot.Light`s marked with either  or . If `create_visual_debug` is `true`, after baking the light, this will generate a `godot.MultiMesh` that has a cube representing each solid cell with each cube colored to the cell's albedo color. This can be used to visualize the `godot.GIProbe`'s data and debug any issues that may be occurring.
	**/
	@:native("Bake")
	public overload function bake(fromNode:godot.Node, createVisualDebug:Bool):Void;
	#end

	/**		
		Calls `godot.GIProbe.bake` with `create_visual_debug` enabled.
	**/
	@:native("DebugBake")
	public function debugBake():Void;
}
