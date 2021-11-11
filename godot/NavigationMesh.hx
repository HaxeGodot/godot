// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A navigation mesh is a collection of polygons that define which areas of an environment are traversable to aid agents in pathfinding through complicated spaces.
**/
@:libType
@:csNative
@:native("Godot.NavigationMesh")
@:autoBuild(godot.Godot.buildUserClass())
extern class NavigationMesh extends godot.Resource {
	/**		
		If `true`, marks walkable spans as not walkable if the clearance above the span is less than `godot.NavigationMesh.agent__height`.
	**/
	@:native("Filter__filterWalkableLowHeightSpans")
	public var filter__filterWalkableLowHeightSpans:Bool;

	/**		
		If `true`, marks spans that are ledges as non-walkable.
	**/
	@:native("Filter__ledgeSpans")
	public var filter__ledgeSpans:Bool;

	/**		
		If `true`, marks non-walkable spans as walkable if their maximum is within `godot.NavigationMesh.agent__maxClimb` of a walkable neighbor.
	**/
	@:native("Filter__lowHangingObstacles")
	public var filter__lowHangingObstacles:Bool;

	/**		
		The maximum distance the detail mesh surface should deviate from heightfield, in cell unit.
	**/
	@:native("Detail__sampleMaxError")
	public var detail__sampleMaxError:Single;

	/**		
		The sampling distance to use when generating the detail mesh, in cell unit.
	**/
	@:native("Detail__sampleDistance")
	public var detail__sampleDistance:Single;

	/**		
		The maximum number of vertices allowed for polygons generated during the contour to polygon conversion process.
	**/
	@:native("Polygon__vertsPerPoly")
	public var polygon__vertsPerPoly:Single;

	/**		
		The maximum distance a simplfied contour's border edges should deviate the original raw contour.
	**/
	@:native("Edge__maxError")
	public var edge__maxError:Single;

	/**		
		The maximum allowed length for contour edges along the border of the mesh.
		
		Note: While baking, this value will be rounded up to the nearest multiple of `godot.NavigationMesh.cell__size`.
	**/
	@:native("Edge__maxLength")
	public var edge__maxLength:Single;

	/**		
		Any regions with a size smaller than this will be merged with larger regions if possible.
		
		Note: This value will be squared to calculate the number of cells. For example, a value of 20 will set the number of cells to 400.
	**/
	@:native("Region__mergeSize")
	public var region__mergeSize:Single;

	/**		
		The minimum size of a region for it to be created.
		
		Note: This value will be squared to calculate the minimum number of cells allowed to form isolated island areas. For example, a value of 8 will set the number of cells to 64.
	**/
	@:native("Region__minSize")
	public var region__minSize:Single;

	/**		
		The maximum slope that is considered walkable, in degrees.
	**/
	@:native("Agent__maxSlope")
	public var agent__maxSlope:Single;

	/**		
		The minimum ledge height that is considered to still be traversable.
		
		Note: While baking, this value will be rounded down to the nearest multiple of `godot.NavigationMesh.cell__height`.
	**/
	@:native("Agent__maxClimb")
	public var agent__maxClimb:Single;

	/**		
		The distance to erode/shrink the walkable area of the heightfield away from obstructions.
		
		Note: While baking, this value will be rounded up to the nearest multiple of `godot.NavigationMesh.cell__size`.
	**/
	@:native("Agent__radius")
	public var agent__radius:Single;

	/**		
		The minimum floor to ceiling height that will still allow the floor area to be considered walkable.
		
		Note: While baking, this value will be rounded up to the nearest multiple of `godot.NavigationMesh.cell__height`.
	**/
	@:native("Agent__height")
	public var agent__height:Single;

	/**		
		The Y axis cell size to use for fields.
	**/
	@:native("Cell__height")
	public var cell__height:Single;

	/**		
		The XZ plane cell size to use for fields.
	**/
	@:native("Cell__size")
	public var cell__size:Single;

	/**		
		The name of the group to scan for geometry.
		
		Only used when `godot.NavigationMesh.geometry__sourceGeometryMode` is `godot.NavigationMesh_SourceGeometryMode.groupsWithChildren` or `godot.NavigationMesh_SourceGeometryMode.groupsExplicit`.
	**/
	@:native("Geometry__sourceGroupName")
	public var geometry__sourceGroupName:std.String;

	/**		
		The source of the geometry used when baking. See `godot.NavigationMesh_SourceGeometryMode` for possible values.
	**/
	@:native("Geometry__sourceGeometryMode")
	public var geometry__sourceGeometryMode:godot.NavigationMesh_SourceGeometryMode;

	/**		
		The physics layers to scan for static colliders.
		
		Only used when `godot.NavigationMesh.geometry__parsedGeometryType` is `godot.NavigationMesh_ParsedGeometryType.staticColliders` or `godot.NavigationMesh_ParsedGeometryType.both`.
	**/
	@:native("Geometry__collisionMask")
	public var geometry__collisionMask:UInt;

	/**		
		Determines which type of nodes will be parsed as geometry. See `godot.NavigationMesh_ParsedGeometryType` for possible values.
	**/
	@:native("Geometry__parsedGeometryType")
	public var geometry__parsedGeometryType:godot.NavigationMesh_ParsedGeometryType;

	/**		
		Partitioning algorithm for creating the navigation mesh polys. See `godot.NavigationMesh_SamplePartitionType` for possible values.
	**/
	@:native("SamplePartitionType__samplePartitionType")
	public var samplePartitionType__samplePartitionType:godot.NavigationMesh_SamplePartitionType;

	@:native("Polygons")
	public var polygons:godot.collections.Array;

	@:native("Vertices")
	public var vertices:cs.NativeArray<godot.Vector3>;

	@:native("new")
	public function new():Void;

	@:native("SetSamplePartitionType")
	public function setSamplePartitionType(samplePartitionType:godot.NavigationMesh_SamplePartitionType):Void;

	@:native("GetSamplePartitionType")
	public function getSamplePartitionType():godot.NavigationMesh_SamplePartitionType;

	@:native("SetParsedGeometryType")
	public function setParsedGeometryType(geometryType:godot.NavigationMesh_ParsedGeometryType):Void;

	@:native("GetParsedGeometryType")
	public function getParsedGeometryType():godot.NavigationMesh_ParsedGeometryType;

	@:native("SetCollisionMask")
	public function setCollisionMask(mask:UInt):Void;

	@:native("GetCollisionMask")
	public function getCollisionMask():UInt;

	/**		
		If `value` is `true`, sets the specified `bit` in the `godot.NavigationMesh.geometry__collisionMask`.
		
		If `value` is `false`, clears the specified `bit` in the `godot.NavigationMesh.geometry__collisionMask`.
	**/
	@:native("SetCollisionMaskBit")
	public function setCollisionMaskBit(bit:Int, value:Bool):Void;

	/**		
		Returns whether the specified `bit` of the `godot.NavigationMesh.geometry__collisionMask` is set.
	**/
	@:native("GetCollisionMaskBit")
	public function getCollisionMaskBit(bit:Int):Bool;

	@:native("SetSourceGeometryMode")
	public function setSourceGeometryMode(mask:godot.NavigationMesh_SourceGeometryMode):Void;

	@:native("GetSourceGeometryMode")
	public function getSourceGeometryMode():godot.NavigationMesh_SourceGeometryMode;

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

	/**		
		Sets the vertices that can be then indexed to create polygons with the `godot.NavigationMesh.addPolygon` method.
	**/
	@:native("SetVertices")
	public function setVertices(vertices:HaxeArray<godot.Vector3>):Void;

	/**		
		Returns a `godot.Vector3` containing all the vertices being used to create the polygons.
	**/
	public extern inline function getVertices():std.Array<godot.Vector3> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetVertices()", this));
	}

	/**		
		Adds a polygon using the indices of the vertices you get when calling `godot.NavigationMesh.getVertices`.
	**/
	@:native("AddPolygon")
	public function addPolygon(polygon:HaxeArray<Int>):Void;

	/**		
		Returns the number of polygons in the navigation mesh.
	**/
	@:native("GetPolygonCount")
	public function getPolygonCount():Int;

	/**		
		Returns a `Int` containing the indices of the vertices of a created polygon.
	**/
	public extern inline function getPolygon(idx:Int):std.Array<Int> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetPolygon({1})", this, idx));
	}

	/**		
		Clears the array of polygons, but it doesn't clear the array of vertices.
	**/
	@:native("ClearPolygons")
	public function clearPolygons():Void;

	/**		
		Initializes the navigation mesh by setting the vertices and indices according to a `godot.Mesh`.
	**/
	@:native("CreateFromMesh")
	public function createFromMesh(mesh:godot.Mesh):Void;
}
