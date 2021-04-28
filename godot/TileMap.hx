// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Node for 2D tile-based maps. Tilemaps use a `godot.TileSet` which contain a list of tiles (textures plus optional collision, navigation, and/or occluder shapes) which are used to create grid-based maps.

When doing physics queries against the tilemap, the cell coordinates are encoded as `metadata` for each detected collision shape returned by methods such as `godot.Physics2DDirectSpaceState.intersectShape`, `godot.Physics2DDirectBodyState.getContactColliderShapeMetadata`, etc.
**/
@:libType
@:csNative
@:native("Godot.TileMap")
@:autoBuild(godot.Godot.buildUserClass())
extern class TileMap extends godot.Node2D {
	/**
		`settings_changed` signal.
		
		Emitted when a tilemap setting has changed.
	**/
	public var onSettingsChanged(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onSettingsChanged():Signal<Void->Void> {
		return new Signal(this, "settings_changed", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**		
		The light mask assigned to all light occluders in the TileMap. The TileSet's light occluders will cast shadows only from Light2D(s) that have the same light mask(s).
	**/
	@:native("OccluderLightMask")
	public var occluderLightMask:Int;

	/**		
		The collision mask(s) for all colliders in the TileMap. See [https://docs.godotengine.org/en/3.3/tutorials/physics/physics_introduction.html#collision-layers-and-masks](Collision layers and masks) in the documentation for more information.
	**/
	@:native("CollisionMask")
	public var collisionMask:UInt;

	/**		
		The collision layer(s) for all colliders in the TileMap. See [https://docs.godotengine.org/en/3.3/tutorials/physics/physics_introduction.html#collision-layers-and-masks](Collision layers and masks) in the documentation for more information.
	**/
	@:native("CollisionLayer")
	public var collisionLayer:UInt;

	/**		
		Bounce value for static body collisions (see `collision_use_kinematic`).
	**/
	@:native("CollisionBounce")
	public var collisionBounce:Single;

	/**		
		Friction value for static body collisions (see `collision_use_kinematic`).
	**/
	@:native("CollisionFriction")
	public var collisionFriction:Single;

	/**		
		If `true`, TileMap collisions will be handled as a kinematic body. If `false`, collisions will be handled as static body.
	**/
	@:native("CollisionUseKinematic")
	public var collisionUseKinematic:Bool;

	/**		
		If `true`, this tilemap's collision shape will be added to the collision shape of the parent. The parent has to be a `godot.CollisionObject2D`.
	**/
	@:native("CollisionUseParent")
	public var collisionUseParent:Bool;

	/**		
		If `true`, the cell's UVs will be clipped.
	**/
	@:native("CellClipUv")
	public var cellClipUv:Bool;

	/**		
		If `true`, the textures will be centered in the middle of each tile. This is useful for certain isometric or top-down modes when textures are made larger or smaller than the tiles (e.g. to avoid flickering on tile edges). The offset is still applied, but from the center of the tile. If used, `godot.TileMap.compatibilityMode` is ignored.
		
		If `false`, the texture position start in the top-left corner unless `godot.TileMap.compatibilityMode` is enabled.
	**/
	@:native("CenteredTextures")
	public var centeredTextures:Bool;

	/**		
		If `true`, the compatibility with the tilemaps made in Godot 3.1 or earlier is maintained (textures move when the tile origin changes and rotate if the texture size is not homogeneous). This mode presents problems when doing `flip_h`, `flip_v` and `transpose` tile operations on non-homogeneous isometric tiles (e.g. 2:1), in which the texture could not coincide with the collision, thus it is not recommended for isometric or non-square tiles.
		
		If `false`, the textures do not move when doing `flip_h`, `flip_v` operations if no offset is used, nor when changing the tile origin.
		
		The compatibility mode doesn't work with the `godot.TileMap.centeredTextures` option, because displacing textures with the `godot.TileMap.cellTileOrigin` option or in irregular tiles is not relevant when centering those textures.
	**/
	@:native("CompatibilityMode")
	public var compatibilityMode:Bool;

	/**		
		If `true`, collision shapes are shown in the editor and at run-time. Requires Visible Collision Shapes to be enabled in the Debug menu for collision shapes to be visible at run-time.
	**/
	@:native("ShowCollision")
	public var showCollision:Bool;

	/**		
		If `true`, the TileMap's direct children will be drawn in order of their Y coordinate.
	**/
	@:native("CellYSort")
	public var cellYSort:Bool;

	/**		
		Position for tile origin. See `godot.TileMap_TileOrigin` for possible values.
	**/
	@:native("CellTileOrigin")
	public var cellTileOrigin:godot.TileMap_TileOrigin;

	/**		
		Amount to offset alternating tiles. See `godot.TileMap_HalfOffset` for possible values.
	**/
	@:native("CellHalfOffset")
	public var cellHalfOffset:godot.TileMap_HalfOffset;

	/**		
		The custom `godot.Transform2D` to be applied to the TileMap's cells.
	**/
	@:native("CellCustomTransform")
	public var cellCustomTransform:godot.Transform2D;

	/**		
		The TileMap's quadrant size. Optimizes drawing by batching, using chunks of this size.
	**/
	@:native("CellQuadrantSize")
	public var cellQuadrantSize:Int;

	/**		
		The TileMap's cell size.
	**/
	@:native("CellSize")
	public var cellSize:godot.Vector2;

	/**		
		The assigned `godot.TileSet`.
	**/
	@:native("TileSet")
	public var tileSet:godot.TileSet;

	/**		
		The TileMap orientation mode. See `godot.TileMap_ModeEnum` for possible values.
	**/
	@:native("Mode")
	public var mode:godot.TileMap_ModeEnum;

	/**		
		Returned when a cell doesn't exist.
	**/
	@:native("InvalidCell")
	public static var INVALID_CELL(default, never):Int;

	@:native("new")
	public function new():Void;

	@:native("SetTileset")
	public function setTileset(tileset:godot.TileSet):Void;

	@:native("GetTileset")
	public function getTileset():godot.TileSet;

	@:native("SetMode")
	public function setMode(mode:godot.TileMap_ModeEnum):Void;

	@:native("GetMode")
	public function getMode():godot.TileMap_ModeEnum;

	@:native("SetHalfOffset")
	public function setHalfOffset(halfOffset:godot.TileMap_HalfOffset):Void;

	@:native("GetHalfOffset")
	public function getHalfOffset():godot.TileMap_HalfOffset;

	@:native("SetCustomTransform")
	public function setCustomTransform(customTransform:godot.Transform2D):Void;

	@:native("GetCustomTransform")
	public function getCustomTransform():godot.Transform2D;

	@:native("SetCellSize")
	public function setCellSize(size:godot.Vector2):Void;

	@:native("GetCellSize")
	public function getCellSize():godot.Vector2;

	@:native("SetQuadrantSize")
	public function setQuadrantSize(size:Int):Void;

	@:native("GetQuadrantSize")
	public function getQuadrantSize():Int;

	@:native("SetTileOrigin")
	public function setTileOrigin(origin:godot.TileMap_TileOrigin):Void;

	@:native("GetTileOrigin")
	public function getTileOrigin():godot.TileMap_TileOrigin;

	@:native("SetClipUv")
	public function setClipUv(enable:Bool):Void;

	@:native("GetClipUv")
	public function getClipUv():Bool;

	@:native("SetYSortMode")
	public function setYSortMode(enable:Bool):Void;

	@:native("IsYSortModeEnabled")
	public function isYSortModeEnabled():Bool;

	@:native("SetCompatibilityMode")
	public function setCompatibilityMode(enable:Bool):Void;

	@:native("IsCompatibilityModeEnabled")
	public function isCompatibilityModeEnabled():Bool;

	@:native("SetShowCollision")
	public function setShowCollision(enable:Bool):Void;

	@:native("IsShowCollisionEnabled")
	public function isShowCollisionEnabled():Bool;

	@:native("SetCenteredTextures")
	public function setCenteredTextures(enable:Bool):Void;

	@:native("IsCenteredTexturesEnabled")
	public function isCenteredTexturesEnabled():Bool;

	@:native("SetCollisionUseKinematic")
	public function setCollisionUseKinematic(useKinematic:Bool):Void;

	@:native("GetCollisionUseKinematic")
	public function getCollisionUseKinematic():Bool;

	@:native("SetCollisionUseParent")
	public function setCollisionUseParent(useParent:Bool):Void;

	@:native("GetCollisionUseParent")
	public function getCollisionUseParent():Bool;

	@:native("SetCollisionLayer")
	public function setCollisionLayer(layer:UInt):Void;

	@:native("GetCollisionLayer")
	public function getCollisionLayer():UInt;

	@:native("SetCollisionMask")
	public function setCollisionMask(mask:UInt):Void;

	@:native("GetCollisionMask")
	public function getCollisionMask():UInt;

	/**		
		Sets the given collision layer bit.
	**/
	@:native("SetCollisionLayerBit")
	public function setCollisionLayerBit(bit:Int, value:Bool):Void;

	/**		
		Returns `true` if the given collision layer bit is set.
	**/
	@:native("GetCollisionLayerBit")
	public function getCollisionLayerBit(bit:Int):Bool;

	/**		
		Sets the given collision mask bit.
	**/
	@:native("SetCollisionMaskBit")
	public function setCollisionMaskBit(bit:Int, value:Bool):Void;

	/**		
		Returns `true` if the given collision mask bit is set.
	**/
	@:native("GetCollisionMaskBit")
	public function getCollisionMaskBit(bit:Int):Bool;

	@:native("SetCollisionFriction")
	public function setCollisionFriction(value:Single):Void;

	@:native("GetCollisionFriction")
	public function getCollisionFriction():Single;

	@:native("SetCollisionBounce")
	public function setCollisionBounce(value:Single):Void;

	@:native("GetCollisionBounce")
	public function getCollisionBounce():Single;

	@:native("SetOccluderLightMask")
	public function setOccluderLightMask(mask:Int):Void;

	@:native("GetOccluderLightMask")
	public function getOccluderLightMask():Int;

	#if doc_gen
	/**		
		Sets the tile index for the cell given by a Vector2.
		
		An index of `-1` clears the cell.
		
		Optionally, the tile can also be flipped, transposed, or given autotile coordinates. The autotile coordinate refers to the column and row of the subtile.
		
		Note: Data such as navigation polygons and collision shapes are not immediately updated for performance reasons.
		
		If you need these to be immediately updated, you can call `godot.TileMap.updateDirtyQuadrants`.
		
		Overriding this method also overrides it internally, allowing custom logic to be implemented when tiles are placed/removed:
		
		```
		
		func set_cell(x, y, tile, flip_x=false, flip_y=false, transpose=false, autotile_coord=Vector2()):
		# Write your custom logic here.
		# To call the default method:
		.set_cell(x, y, tile, flip_x, flip_y, transpose, autotile_coord)
		
		```
		
		@param autotileCoord If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("SetCell")
	public function setCell(x:Int, y:Int, tile:Int, ?flipX:Bool, ?flipY:Bool, ?transpose:Bool, ?autotileCoord:Null<godot.Vector2>):Void;
	#else
	/**		
		Sets the tile index for the cell given by a Vector2.
		
		An index of `-1` clears the cell.
		
		Optionally, the tile can also be flipped, transposed, or given autotile coordinates. The autotile coordinate refers to the column and row of the subtile.
		
		Note: Data such as navigation polygons and collision shapes are not immediately updated for performance reasons.
		
		If you need these to be immediately updated, you can call `godot.TileMap.updateDirtyQuadrants`.
		
		Overriding this method also overrides it internally, allowing custom logic to be implemented when tiles are placed/removed:
		
		```
		
		func set_cell(x, y, tile, flip_x=false, flip_y=false, transpose=false, autotile_coord=Vector2()):
		# Write your custom logic here.
		# To call the default method:
		.set_cell(x, y, tile, flip_x, flip_y, transpose, autotile_coord)
		
		```
		
		@param autotileCoord If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("SetCell")
	public overload function setCell(x:Int, y:Int, tile:Int):Void;

	/**		
		Sets the tile index for the cell given by a Vector2.
		
		An index of `-1` clears the cell.
		
		Optionally, the tile can also be flipped, transposed, or given autotile coordinates. The autotile coordinate refers to the column and row of the subtile.
		
		Note: Data such as navigation polygons and collision shapes are not immediately updated for performance reasons.
		
		If you need these to be immediately updated, you can call `godot.TileMap.updateDirtyQuadrants`.
		
		Overriding this method also overrides it internally, allowing custom logic to be implemented when tiles are placed/removed:
		
		```
		
		func set_cell(x, y, tile, flip_x=false, flip_y=false, transpose=false, autotile_coord=Vector2()):
		# Write your custom logic here.
		# To call the default method:
		.set_cell(x, y, tile, flip_x, flip_y, transpose, autotile_coord)
		
		```
		
		@param autotileCoord If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("SetCell")
	public overload function setCell(x:Int, y:Int, tile:Int, flipX:Bool):Void;

	/**		
		Sets the tile index for the cell given by a Vector2.
		
		An index of `-1` clears the cell.
		
		Optionally, the tile can also be flipped, transposed, or given autotile coordinates. The autotile coordinate refers to the column and row of the subtile.
		
		Note: Data such as navigation polygons and collision shapes are not immediately updated for performance reasons.
		
		If you need these to be immediately updated, you can call `godot.TileMap.updateDirtyQuadrants`.
		
		Overriding this method also overrides it internally, allowing custom logic to be implemented when tiles are placed/removed:
		
		```
		
		func set_cell(x, y, tile, flip_x=false, flip_y=false, transpose=false, autotile_coord=Vector2()):
		# Write your custom logic here.
		# To call the default method:
		.set_cell(x, y, tile, flip_x, flip_y, transpose, autotile_coord)
		
		```
		
		@param autotileCoord If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("SetCell")
	public overload function setCell(x:Int, y:Int, tile:Int, flipX:Bool, flipY:Bool):Void;

	/**		
		Sets the tile index for the cell given by a Vector2.
		
		An index of `-1` clears the cell.
		
		Optionally, the tile can also be flipped, transposed, or given autotile coordinates. The autotile coordinate refers to the column and row of the subtile.
		
		Note: Data such as navigation polygons and collision shapes are not immediately updated for performance reasons.
		
		If you need these to be immediately updated, you can call `godot.TileMap.updateDirtyQuadrants`.
		
		Overriding this method also overrides it internally, allowing custom logic to be implemented when tiles are placed/removed:
		
		```
		
		func set_cell(x, y, tile, flip_x=false, flip_y=false, transpose=false, autotile_coord=Vector2()):
		# Write your custom logic here.
		# To call the default method:
		.set_cell(x, y, tile, flip_x, flip_y, transpose, autotile_coord)
		
		```
		
		@param autotileCoord If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("SetCell")
	public overload function setCell(x:Int, y:Int, tile:Int, flipX:Bool, flipY:Bool, transpose:Bool):Void;

	/**		
		Sets the tile index for the cell given by a Vector2.
		
		An index of `-1` clears the cell.
		
		Optionally, the tile can also be flipped, transposed, or given autotile coordinates. The autotile coordinate refers to the column and row of the subtile.
		
		Note: Data such as navigation polygons and collision shapes are not immediately updated for performance reasons.
		
		If you need these to be immediately updated, you can call `godot.TileMap.updateDirtyQuadrants`.
		
		Overriding this method also overrides it internally, allowing custom logic to be implemented when tiles are placed/removed:
		
		```
		
		func set_cell(x, y, tile, flip_x=false, flip_y=false, transpose=false, autotile_coord=Vector2()):
		# Write your custom logic here.
		# To call the default method:
		.set_cell(x, y, tile, flip_x, flip_y, transpose, autotile_coord)
		
		```
		
		@param autotileCoord If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("SetCell")
	public overload function setCell(x:Int, y:Int, tile:Int, flipX:Bool, flipY:Bool, transpose:Bool, autotileCoord:Nullable1<godot.Vector2>):Void;
	#end

	#if doc_gen
	/**		
		Sets the tile index for the given cell.
		
		An index of `-1` clears the cell.
		
		Optionally, the tile can also be flipped or transposed.
		
		Note: Data such as navigation polygons and collision shapes are not immediately updated for performance reasons.
		
		If you need these to be immediately updated, you can call `godot.TileMap.updateDirtyQuadrants`.
	**/
	@:native("SetCellv")
	public function setCellv(position:godot.Vector2, tile:Int, ?flipX:Bool, ?flipY:Bool, ?transpose:Bool):Void;
	#else
	/**		
		Sets the tile index for the given cell.
		
		An index of `-1` clears the cell.
		
		Optionally, the tile can also be flipped or transposed.
		
		Note: Data such as navigation polygons and collision shapes are not immediately updated for performance reasons.
		
		If you need these to be immediately updated, you can call `godot.TileMap.updateDirtyQuadrants`.
	**/
	@:native("SetCellv")
	public overload function setCellv(position:godot.Vector2, tile:Int):Void;

	/**		
		Sets the tile index for the given cell.
		
		An index of `-1` clears the cell.
		
		Optionally, the tile can also be flipped or transposed.
		
		Note: Data such as navigation polygons and collision shapes are not immediately updated for performance reasons.
		
		If you need these to be immediately updated, you can call `godot.TileMap.updateDirtyQuadrants`.
	**/
	@:native("SetCellv")
	public overload function setCellv(position:godot.Vector2, tile:Int, flipX:Bool):Void;

	/**		
		Sets the tile index for the given cell.
		
		An index of `-1` clears the cell.
		
		Optionally, the tile can also be flipped or transposed.
		
		Note: Data such as navigation polygons and collision shapes are not immediately updated for performance reasons.
		
		If you need these to be immediately updated, you can call `godot.TileMap.updateDirtyQuadrants`.
	**/
	@:native("SetCellv")
	public overload function setCellv(position:godot.Vector2, tile:Int, flipX:Bool, flipY:Bool):Void;

	/**		
		Sets the tile index for the given cell.
		
		An index of `-1` clears the cell.
		
		Optionally, the tile can also be flipped or transposed.
		
		Note: Data such as navigation polygons and collision shapes are not immediately updated for performance reasons.
		
		If you need these to be immediately updated, you can call `godot.TileMap.updateDirtyQuadrants`.
	**/
	@:native("SetCellv")
	public overload function setCellv(position:godot.Vector2, tile:Int, flipX:Bool, flipY:Bool, transpose:Bool):Void;
	#end

	/**		
		Returns the tile index of the given cell. If no tile exists in the cell, returns .
	**/
	@:native("GetCell")
	public function getCell(x:Int, y:Int):Int;

	/**		
		Returns the tile index of the cell given by a Vector2. If no tile exists in the cell, returns .
	**/
	@:native("GetCellv")
	public function getCellv(position:godot.Vector2):Int;

	/**		
		Returns `true` if the given cell is flipped in the X axis.
	**/
	@:native("IsCellXFlipped")
	public function isCellXFlipped(x:Int, y:Int):Bool;

	/**		
		Returns `true` if the given cell is flipped in the Y axis.
	**/
	@:native("IsCellYFlipped")
	public function isCellYFlipped(x:Int, y:Int):Bool;

	/**		
		Returns `true` if the given cell is transposed, i.e. the X and Y axes are swapped.
	**/
	@:native("IsCellTransposed")
	public function isCellTransposed(x:Int, y:Int):Bool;

	/**		
		Returns the coordinate (subtile column and row) of the autotile variation in the tileset. Returns a zero vector if the cell doesn't have autotiling.
	**/
	@:native("GetCellAutotileCoord")
	public function getCellAutotileCoord(x:Int, y:Int):godot.Vector2;

	/**		
		Clears cells that do not exist in the tileset.
	**/
	@:native("FixInvalidTiles")
	public function fixInvalidTiles():Void;

	/**		
		Clears all cells.
	**/
	@:native("Clear")
	public function clear():Void;

	/**		
		Returns a `godot.Vector2` array with the positions of all cells containing a tile from the tileset (i.e. a tile index different from `-1`).
	**/
	@:native("GetUsedCells")
	public function getUsedCells():godot.collections.Array;

	/**		
		Returns an array of all cells with the given tile index specified in `id`.
	**/
	@:native("GetUsedCellsById")
	public function getUsedCellsById(id:Int):godot.collections.Array;

	/**		
		Returns a rectangle enclosing the used (non-empty) tiles of the map.
	**/
	@:native("GetUsedRect")
	public function getUsedRect():godot.Rect2;

	#if doc_gen
	/**		
		Returns the local position of the top left corner of the cell corresponding to the given tilemap (grid-based) coordinates.
		
		To get the global position, use `godot.Node2D.toGlobal`:
		
		```
		
		var local_position = my_tilemap.map_to_world(map_position)
		var global_position = my_tilemap.to_global(local_position)
		
		```
		
		Optionally, the tilemap's half offset can be ignored.
	**/
	@:native("MapToWorld")
	public function mapToWorld(mapPosition:godot.Vector2, ?ignoreHalfOfs:Bool):godot.Vector2;
	#else
	/**		
		Returns the local position of the top left corner of the cell corresponding to the given tilemap (grid-based) coordinates.
		
		To get the global position, use `godot.Node2D.toGlobal`:
		
		```
		
		var local_position = my_tilemap.map_to_world(map_position)
		var global_position = my_tilemap.to_global(local_position)
		
		```
		
		Optionally, the tilemap's half offset can be ignored.
	**/
	@:native("MapToWorld")
	public overload function mapToWorld(mapPosition:godot.Vector2):godot.Vector2;

	/**		
		Returns the local position of the top left corner of the cell corresponding to the given tilemap (grid-based) coordinates.
		
		To get the global position, use `godot.Node2D.toGlobal`:
		
		```
		
		var local_position = my_tilemap.map_to_world(map_position)
		var global_position = my_tilemap.to_global(local_position)
		
		```
		
		Optionally, the tilemap's half offset can be ignored.
	**/
	@:native("MapToWorld")
	public overload function mapToWorld(mapPosition:godot.Vector2, ignoreHalfOfs:Bool):godot.Vector2;
	#end

	/**		
		Returns the tilemap (grid-based) coordinates corresponding to the given local position.
		
		To use this with a global position, first determine the local position with `godot.Node2D.toLocal`:
		
		```
		
		var local_position = my_tilemap.to_local(global_position)
		var map_position = my_tilemap.world_to_map(local_position)
		
		```
	**/
	@:native("WorldToMap")
	public function worldToMap(worldPosition:godot.Vector2):godot.Vector2;

	/**		
		Updates the tile map's quadrants, allowing things such as navigation and collision shapes to be immediately used if modified.
	**/
	@:native("UpdateDirtyQuadrants")
	public function updateDirtyQuadrants():Void;

	/**		
		Applies autotiling rules to the cell (and its adjacent cells) referenced by its grid-based X and Y coordinates.
	**/
	@:native("UpdateBitmaskArea")
	public function updateBitmaskArea(position:godot.Vector2):Void;

	#if doc_gen
	/**		
		Applies autotiling rules to the cells in the given region (specified by grid-based X and Y coordinates).
		
		Calling with invalid (or missing) parameters applies autotiling rules for the entire tilemap.
		
		@param start If the parameter is null, then the default value is new Vector2(0, 0)
		@param end If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("UpdateBitmaskRegion")
	public function updateBitmaskRegion(?start:Null<godot.Vector2>, ?end:Null<godot.Vector2>):Void;
	#else
	/**		
		Applies autotiling rules to the cells in the given region (specified by grid-based X and Y coordinates).
		
		Calling with invalid (or missing) parameters applies autotiling rules for the entire tilemap.
		
		@param start If the parameter is null, then the default value is new Vector2(0, 0)
		@param end If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("UpdateBitmaskRegion")
	public overload function updateBitmaskRegion():Void;

	/**		
		Applies autotiling rules to the cells in the given region (specified by grid-based X and Y coordinates).
		
		Calling with invalid (or missing) parameters applies autotiling rules for the entire tilemap.
		
		@param start If the parameter is null, then the default value is new Vector2(0, 0)
		@param end If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("UpdateBitmaskRegion")
	public overload function updateBitmaskRegion(start:Nullable1<godot.Vector2>):Void;

	/**		
		Applies autotiling rules to the cells in the given region (specified by grid-based X and Y coordinates).
		
		Calling with invalid (or missing) parameters applies autotiling rules for the entire tilemap.
		
		@param start If the parameter is null, then the default value is new Vector2(0, 0)
		@param end If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("UpdateBitmaskRegion")
	public overload function updateBitmaskRegion(start:Nullable1<godot.Vector2>, end:Nullable1<godot.Vector2>):Void;
	#end
}
