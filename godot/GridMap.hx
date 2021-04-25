// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
GridMap lets you place meshes on a grid interactively. It works both from the editor and from scripts, which can help you create in-game level editors.

GridMaps use a `godot.MeshLibrary` which contains a list of tiles. Each tile is a mesh with materials plus optional collision and navigation shapes.

A GridMap contains a collection of cells. Each grid cell refers to a tile in the `godot.MeshLibrary`. All cells in the map have the same dimensions.

Internally, a GridMap is split into a sparse collection of octants for efficient rendering and physics processing. Every octant has the same dimensions and can contain several cells.

Note: GridMap doesn't extend `godot.VisualInstance` and therefore can't be hidden or cull masked based on `godot.VisualInstance.layers`. If you make a light not affect the first layer, the whole GridMap won't be lit by the light in question.
**/
@:libType
@:csNative
@:native("Godot.GridMap")
@:autoBuild(godot.Godot.buildUserClass())
extern class GridMap extends godot.Spatial {
	/**
		`cell_size_changed` signal.
	**/
	public var onCellSizeChanged(get, never):Signal<(cellSize:Vector3)->Void>;
	@:dox(hide) inline function get_onCellSizeChanged():Signal<(cellSize:Vector3)->Void> {
		return new Signal(this, "cell_size_changed", Signal.SignalHandlerVector3Void.connectSignal, Signal.SignalHandlerVector3Void.disconnectSignal, Signal.SignalHandlerVector3Void.isSignalConnected);
	}

	/**		
		The physics layers this GridMap detects collisions in. See [https://docs.godotengine.org/en/3.3/tutorials/physics/physics_introduction.html#collision-layers-and-masks](Collision layers and masks) in the documentation for more information.
	**/
	@:native("CollisionMask")
	public var collisionMask:UInt;

	/**		
		The physics layers this GridMap is in.
		
		GridMaps act as static bodies, meaning they aren't affected by gravity or other forces. They only affect other physics bodies that collide with them.
	**/
	@:native("CollisionLayer")
	public var collisionLayer:UInt;

	/**		
		The scale of the cell items.
		
		This does not affect the size of the grid cells themselves, only the items in them. This can be used to make cell items overlap their neighbors.
	**/
	@:native("CellScale")
	public var cellScale:Single;

	/**		
		If `true`, grid items are centered on the Z axis.
	**/
	@:native("CellCenterZ")
	public var cellCenterZ:Bool;

	/**		
		If `true`, grid items are centered on the Y axis.
	**/
	@:native("CellCenterY")
	public var cellCenterY:Bool;

	/**		
		If `true`, grid items are centered on the X axis.
	**/
	@:native("CellCenterX")
	public var cellCenterX:Bool;

	/**		
		The size of each octant measured in number of cells. This applies to all three axis.
	**/
	@:native("CellOctantSize")
	public var cellOctantSize:Int;

	/**		
		The dimensions of the grid's cells.
		
		This does not affect the size of the meshes. See `godot.GridMap.cellScale`.
	**/
	@:native("CellSize")
	public var cellSize:godot.Vector3;

	/**		
		Controls whether this GridMap will be baked in a `godot.BakedLightmap` or not.
	**/
	@:native("UseInBakedLight")
	public var useInBakedLight:Bool;

	/**		
		The assigned `godot.MeshLibrary`.
	**/
	@:native("MeshLibrary")
	public var meshLibrary:godot.MeshLibrary;

	/**		
		Invalid cell item that can be used in `godot.GridMap.setCellItem` to clear cells (or represent an empty cell in `godot.GridMap.getCellItem`).
	**/
	@:native("InvalidCellItem")
	public static var INVALID_CELL_ITEM(default, never):Int;

	@:native("new")
	public function new():Void;

	@:native("SetCollisionLayer")
	public function setCollisionLayer(layer:UInt):Void;

	@:native("GetCollisionLayer")
	public function getCollisionLayer():UInt;

	@:native("SetCollisionMask")
	public function setCollisionMask(mask:UInt):Void;

	@:native("GetCollisionMask")
	public function getCollisionMask():UInt;

	/**		
		Sets an individual bit on the `godot.GridMap.collisionMask`.
	**/
	@:native("SetCollisionMaskBit")
	public function setCollisionMaskBit(bit:Int, value:Bool):Void;

	/**		
		Returns an individual bit on the `godot.GridMap.collisionMask`.
	**/
	@:native("GetCollisionMaskBit")
	public function getCollisionMaskBit(bit:Int):Bool;

	/**		
		Sets an individual bit on the `godot.GridMap.collisionLayer`.
	**/
	@:native("SetCollisionLayerBit")
	public function setCollisionLayerBit(bit:Int, value:Bool):Void;

	/**		
		Returns an individual bit on the `godot.GridMap.collisionLayer`.
	**/
	@:native("GetCollisionLayerBit")
	public function getCollisionLayerBit(bit:Int):Bool;

	@:native("SetMeshLibrary")
	public function setMeshLibrary(meshLibrary:godot.MeshLibrary):Void;

	@:native("GetMeshLibrary")
	public function getMeshLibrary():godot.MeshLibrary;

	@:native("SetCellSize")
	public function setCellSize(size:godot.Vector3):Void;

	@:native("GetCellSize")
	public function getCellSize():godot.Vector3;

	@:native("SetCellScale")
	public function setCellScale(scale:Single):Void;

	@:native("GetCellScale")
	public function getCellScale():Single;

	@:native("SetOctantSize")
	public function setOctantSize(size:Int):Void;

	@:native("GetOctantSize")
	public function getOctantSize():Int;

	#if doc_gen
	/**		
		Sets the mesh index for the cell referenced by its grid-based X, Y and Z coordinates.
		
		A negative item index such as  will clear the cell.
		
		Optionally, the item's orientation can be passed. For valid orientation values, see `Basis.get_orthogonal_index`.
	**/
	@:native("SetCellItem")
	public function setCellItem(x:Int, y:Int, z:Int, item:Int, ?orientation:Int):Void;
	#else
	/**		
		Sets the mesh index for the cell referenced by its grid-based X, Y and Z coordinates.
		
		A negative item index such as  will clear the cell.
		
		Optionally, the item's orientation can be passed. For valid orientation values, see `Basis.get_orthogonal_index`.
	**/
	@:native("SetCellItem")
	public overload function setCellItem(x:Int, y:Int, z:Int, item:Int):Void;

	/**		
		Sets the mesh index for the cell referenced by its grid-based X, Y and Z coordinates.
		
		A negative item index such as  will clear the cell.
		
		Optionally, the item's orientation can be passed. For valid orientation values, see `Basis.get_orthogonal_index`.
	**/
	@:native("SetCellItem")
	public overload function setCellItem(x:Int, y:Int, z:Int, item:Int, orientation:Int):Void;
	#end

	/**		
		The `godot.MeshLibrary` item index located at the grid-based X, Y and Z coordinates. If the cell is empty,  will be returned.
	**/
	@:native("GetCellItem")
	public function getCellItem(x:Int, y:Int, z:Int):Int;

	/**		
		The orientation of the cell at the grid-based X, Y and Z coordinates. -1 is returned if the cell is empty.
	**/
	@:native("GetCellItemOrientation")
	public function getCellItemOrientation(x:Int, y:Int, z:Int):Int;

	/**		
		Returns the coordinates of the grid cell containing the given point.
		
		`pos` should be in the GridMap's local coordinate space.
	**/
	@:native("WorldToMap")
	public function worldToMap(pos:godot.Vector3):godot.Vector3;

	/**		
		Returns the position of a grid cell in the GridMap's local coordinate space.
	**/
	@:native("MapToWorld")
	public function mapToWorld(x:Int, y:Int, z:Int):godot.Vector3;

	@:native("ResourceChanged")
	public function resourceChanged(resource:godot.Resource):Void;

	@:native("SetCenterX")
	public function setCenterX(enable:Bool):Void;

	@:native("GetCenterX")
	public function getCenterX():Bool;

	@:native("SetCenterY")
	public function setCenterY(enable:Bool):Void;

	@:native("GetCenterY")
	public function getCenterY():Bool;

	@:native("SetCenterZ")
	public function setCenterZ(enable:Bool):Void;

	@:native("GetCenterZ")
	public function getCenterZ():Bool;

	#if doc_gen
	@:native("SetClip")
	public function setClip(enabled:Bool, ?clipabove:Bool, ?floor:Int, ?axis:godot.Vector3_Axis):Void;
	#else
	@:native("SetClip")
	public overload function setClip(enabled:Bool):Void;

	@:native("SetClip")
	public overload function setClip(enabled:Bool, clipabove:Bool):Void;

	@:native("SetClip")
	public overload function setClip(enabled:Bool, clipabove:Bool, floor:Int):Void;

	@:native("SetClip")
	public overload function setClip(enabled:Bool, clipabove:Bool, floor:Int, axis:godot.Vector3_Axis):Void;
	#end

	/**		
		Clear all cells.
	**/
	@:native("Clear")
	public function clear():Void;

	/**		
		Returns an array of `godot.Vector3` with the non-empty cell coordinates in the grid map.
	**/
	@:native("GetUsedCells")
	public function getUsedCells():godot.collections.Array;

	/**		
		Returns an array of `godot.Transform` and `godot.Mesh` references corresponding to the non-empty cells in the grid. The transforms are specified in world space.
	**/
	@:native("GetMeshes")
	public function getMeshes():godot.collections.Array;

	/**		
		Returns an array of `godot.ArrayMesh`es and `godot.Transform` references of all bake meshes that exist within the current GridMap.
	**/
	@:native("GetBakeMeshes")
	public function getBakeMeshes():godot.collections.Array;

	@:native("GetBakeMeshInstance")
	public function getBakeMeshInstance(idx:Int):godot.RID;

	@:native("ClearBakedMeshes")
	public function clearBakedMeshes():Void;

	#if doc_gen
	@:native("MakeBakedMeshes")
	public function makeBakedMeshes(?genLightmapUv:Bool, ?lightmapUvTexelSize:Single):Void;
	#else
	@:native("MakeBakedMeshes")
	public overload function makeBakedMeshes():Void;

	@:native("MakeBakedMeshes")
	public overload function makeBakedMeshes(genLightmapUv:Bool):Void;

	@:native("MakeBakedMeshes")
	public overload function makeBakedMeshes(genLightmapUv:Bool, lightmapUvTexelSize:Single):Void;
	#end

	@:native("SetUseInBakedLight")
	public function setUseInBakedLight(useInBakedLight:Bool):Void;

	@:native("GetUseInBakedLight")
	public function getUseInBakedLight():Bool;
}
