// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.NavigationMesh")
@:autoBuild(godot.Godot.buildUserClass())
extern class NavigationMesh extends godot.Resource {
	@:native("Filter__filterWalkableLowHeightSpans")
	public var filter__filterWalkableLowHeightSpans:Bool;

	@:native("Filter__ledgeSpans")
	public var filter__ledgeSpans:Bool;

	@:native("Filter__lowHangingObstacles")
	public var filter__lowHangingObstacles:Bool;

	@:native("Detail__sampleMaxError")
	public var detail__sampleMaxError:Single;

	@:native("Detail__sampleDistance")
	public var detail__sampleDistance:Single;

	@:native("Polygon__vertsPerPoly")
	public var polygon__vertsPerPoly:Single;

	@:native("Edge__maxError")
	public var edge__maxError:Single;

	@:native("Edge__maxLength")
	public var edge__maxLength:Single;

	@:native("Region__mergeSize")
	public var region__mergeSize:Single;

	@:native("Region__minSize")
	public var region__minSize:Single;

	@:native("Agent__maxSlope")
	public var agent__maxSlope:Single;

	@:native("Agent__maxClimb")
	public var agent__maxClimb:Single;

	@:native("Agent__radius")
	public var agent__radius:Single;

	@:native("Agent__height")
	public var agent__height:Single;

	@:native("Cell__height")
	public var cell__height:Single;

	@:native("Cell__size")
	public var cell__size:Single;

	@:native("Geometry__sourceGroupName")
	public var geometry__sourceGroupName:std.String;

	@:native("Geometry__sourceGeometryMode")
	public var geometry__sourceGeometryMode:Int;

	@:native("Geometry__collisionMask")
	public var geometry__collisionMask:UInt;

	@:native("Geometry__parsedGeometryType")
	public var geometry__parsedGeometryType:Int;

	@:native("SamplePartitionType__samplePartitionType")
	public var samplePartitionType__samplePartitionType:Int;

	@:native("Polygons")
	public var polygons:godot.collections.Array;

	@:native("Vertices")
	public var vertices:cs.NativeArray<godot.Vector3>;

	@:native("ParsedGeometryBoth")
	public static var PARSED_GEOMETRY_BOTH(default, never):Int;

	@:native("ParsedGeometryStaticColliders")
	public static var PARSED_GEOMETRY_STATIC_COLLIDERS(default, never):Int;

	@:native("ParsedGeometryMeshInstances")
	public static var PARSED_GEOMETRY_MESH_INSTANCES(default, never):Int;

	@:native("SamplePartitionLayers")
	public static var SAMPLE_PARTITION_LAYERS(default, never):Int;

	@:native("SamplePartitionMonotone")
	public static var SAMPLE_PARTITION_MONOTONE(default, never):Int;

	@:native("SamplePartitionWatershed")
	public static var SAMPLE_PARTITION_WATERSHED(default, never):Int;

	@:native("new")
	public function new():Void;

	@:native("SetSamplePartitionType")
	public function setSamplePartitionType(samplePartitionType:Int):Void;

	@:native("GetSamplePartitionType")
	public function getSamplePartitionType():Int;

	@:native("SetParsedGeometryType")
	public function setParsedGeometryType(geometryType:Int):Void;

	@:native("GetParsedGeometryType")
	public function getParsedGeometryType():Int;

	@:native("SetCollisionMask")
	public function setCollisionMask(mask:UInt):Void;

	@:native("GetCollisionMask")
	public function getCollisionMask():UInt;

	@:native("SetCollisionMaskBit")
	public function setCollisionMaskBit(bit:Int, value:Bool):Void;

	@:native("GetCollisionMaskBit")
	public function getCollisionMaskBit(bit:Int):Bool;

	@:native("SetSourceGeometryMode")
	public function setSourceGeometryMode(mask:Int):Void;

	@:native("GetSourceGeometryMode")
	public function getSourceGeometryMode():Int;

	@:native("SetSourceGroupName")
	public function setSourceGroupName(mask:std.String):Void;

	@:native("GetSourceGroupName")
	public function getSourceGroupName():std.String;

	@:native("SetCellSize")
	public function setCellSize(cellSize:Single):Void;

	@:native("GetCellSize")
	public function getCellSize():Single;

	@:native("SetCellHeight")
	public function setCellHeight(cellHeight:Single):Void;

	@:native("GetCellHeight")
	public function getCellHeight():Single;

	@:native("SetAgentHeight")
	public function setAgentHeight(agentHeight:Single):Void;

	@:native("GetAgentHeight")
	public function getAgentHeight():Single;

	@:native("SetAgentRadius")
	public function setAgentRadius(agentRadius:Single):Void;

	@:native("GetAgentRadius")
	public function getAgentRadius():Single;

	@:native("SetAgentMaxClimb")
	public function setAgentMaxClimb(agentMaxClimb:Single):Void;

	@:native("GetAgentMaxClimb")
	public function getAgentMaxClimb():Single;

	@:native("SetAgentMaxSlope")
	public function setAgentMaxSlope(agentMaxSlope:Single):Void;

	@:native("GetAgentMaxSlope")
	public function getAgentMaxSlope():Single;

	@:native("SetRegionMinSize")
	public function setRegionMinSize(regionMinSize:Single):Void;

	@:native("GetRegionMinSize")
	public function getRegionMinSize():Single;

	@:native("SetRegionMergeSize")
	public function setRegionMergeSize(regionMergeSize:Single):Void;

	@:native("GetRegionMergeSize")
	public function getRegionMergeSize():Single;

	@:native("SetEdgeMaxLength")
	public function setEdgeMaxLength(edgeMaxLength:Single):Void;

	@:native("GetEdgeMaxLength")
	public function getEdgeMaxLength():Single;

	@:native("SetEdgeMaxError")
	public function setEdgeMaxError(edgeMaxError:Single):Void;

	@:native("GetEdgeMaxError")
	public function getEdgeMaxError():Single;

	@:native("SetVertsPerPoly")
	public function setVertsPerPoly(vertsPerPoly:Single):Void;

	@:native("GetVertsPerPoly")
	public function getVertsPerPoly():Single;

	@:native("SetDetailSampleDistance")
	public function setDetailSampleDistance(detailSampleDist:Single):Void;

	@:native("GetDetailSampleDistance")
	public function getDetailSampleDistance():Single;

	@:native("SetDetailSampleMaxError")
	public function setDetailSampleMaxError(detailSampleMaxError:Single):Void;

	@:native("GetDetailSampleMaxError")
	public function getDetailSampleMaxError():Single;

	@:native("SetFilterLowHangingObstacles")
	public function setFilterLowHangingObstacles(filterLowHangingObstacles:Bool):Void;

	@:native("GetFilterLowHangingObstacles")
	public function getFilterLowHangingObstacles():Bool;

	@:native("SetFilterLedgeSpans")
	public function setFilterLedgeSpans(filterLedgeSpans:Bool):Void;

	@:native("GetFilterLedgeSpans")
	public function getFilterLedgeSpans():Bool;

	@:native("SetFilterWalkableLowHeightSpans")
	public function setFilterWalkableLowHeightSpans(filterWalkableLowHeightSpans:Bool):Void;

	@:native("GetFilterWalkableLowHeightSpans")
	public function getFilterWalkableLowHeightSpans():Bool;

	@:native("SetVertices")
	public function setVertices(vertices:haxe.Rest<godot.Vector3>):Void;

	public extern inline function getVertices():std.Array<godot.Vector3> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetVertices()", this));
	}

	@:native("AddPolygon")
	public function addPolygon(polygon:haxe.Rest<Int>):Void;

	@:native("GetPolygonCount")
	public function getPolygonCount():Int;

	public extern inline function getPolygon(idx:Int):std.Array<Int> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetPolygon({1})", this, idx));
	}

	@:native("ClearPolygons")
	public function clearPolygons():Void;

	@:native("CreateFromMesh")
	public function createFromMesh(mesh:godot.Mesh):Void;
}
