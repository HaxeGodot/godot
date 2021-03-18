// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A TileSet is a library of tiles for a `godot.TileMap`. It contains a list of tiles, each consisting of a sprite and optional collision shapes.

Tiles are referenced by a unique integer ID.
**/
@:libType
@:csNative
@:native("Godot.TileSet")
@:autoBuild(godot.Godot.buildUserClass())
extern class TileSet extends godot.Resource {
	@:native("new")
	public function new():Void;

	@:native("_ForwardAtlasSubtileSelection")
	public function _ForwardAtlasSubtileSelection(atlastileId:Int, tilemap:godot.Object, tileLocation:godot.Vector2):godot.Vector2;

	@:native("_ForwardSubtileSelection")
	public function _ForwardSubtileSelection(autotileId:Int, bitmask:Int, tilemap:godot.Object, tileLocation:godot.Vector2):godot.Vector2;

	/**		
		Determines when the auto-tiler should consider two different auto-tile IDs to be bound together.
		
		Note: `neighbor_id` will be `-1` () when checking a tile against an empty neighbor tile.
	**/
	@:native("_IsTileBound")
	public function _IsTileBound(drawnId:Int, neighborId:Int):Bool;

	/**		
		Creates a new tile with the given ID.
	**/
	@:native("CreateTile")
	public function createTile(id:Int):Void;

	/**		
		Clears all bitmask information of the autotile.
	**/
	@:native("AutotileClearBitmaskMap")
	public function autotileClearBitmaskMap(id:Int):Void;

	/**		
		Sets the subtile that will be used as an icon in an atlas/autotile given its coordinates.
		
		The subtile defined as the icon will be used as a fallback when the atlas/autotile's bitmask information is incomplete. It will also be used to represent it in the TileSet editor.
	**/
	@:native("AutotileSetIconCoordinate")
	public function autotileSetIconCoordinate(id:Int, coord:godot.Vector2):Void;

	/**		
		Returns the subtile that's being used as an icon in an atlas/autotile given its coordinates.
		
		The subtile defined as the icon will be used as a fallback when the atlas/autotile's bitmask information is incomplete. It will also be used to represent it in the TileSet editor.
	**/
	@:native("AutotileGetIconCoordinate")
	public function autotileGetIconCoordinate(id:Int):godot.Vector2;

	/**		
		Sets the priority of the subtile from an autotile given its coordinates.
		
		When more than one subtile has the same bitmask value, one of them will be picked randomly for drawing. Its priority will define how often it will be picked.
	**/
	@:native("AutotileSetSubtilePriority")
	public function autotileSetSubtilePriority(id:Int, coord:godot.Vector2, priority:Int):Void;

	/**		
		Returns the priority of the subtile from an autotile given its coordinates.
		
		When more than one subtile has the same bitmask value, one of them will be picked randomly for drawing. Its priority will define how often it will be picked.
	**/
	@:native("AutotileGetSubtilePriority")
	public function autotileGetSubtilePriority(id:Int, coord:godot.Vector2):Int;

	/**		
		Sets the drawing index of the subtile from an atlas/autotile given its coordinates.
	**/
	@:native("AutotileSetZIndex")
	public function autotileSetZIndex(id:Int, coord:godot.Vector2, zIndex:Int):Void;

	/**		
		Returns the drawing index of the subtile from an atlas/autotile given its coordinates.
	**/
	@:native("AutotileGetZIndex")
	public function autotileGetZIndex(id:Int, coord:godot.Vector2):Int;

	/**		
		Sets the light occluder of the subtile from an atlas/autotile given its coordinates.
	**/
	@:native("AutotileSetLightOccluder")
	public function autotileSetLightOccluder(id:Int, lightOccluder:godot.OccluderPolygon2D, coord:godot.Vector2):Void;

	/**		
		Returns the light occluder of the subtile from an atlas/autotile given its coordinates.
	**/
	@:native("AutotileGetLightOccluder")
	public function autotileGetLightOccluder(id:Int, coord:godot.Vector2):godot.OccluderPolygon2D;

	/**		
		Sets the navigation polygon of the subtile from an atlas/autotile given its coordinates.
	**/
	@:native("AutotileSetNavigationPolygon")
	public function autotileSetNavigationPolygon(id:Int, navigationPolygon:godot.NavigationPolygon, coord:godot.Vector2):Void;

	/**		
		Returns the navigation polygon of the subtile from an atlas/autotile given its coordinates.
	**/
	@:native("AutotileGetNavigationPolygon")
	public function autotileGetNavigationPolygon(id:Int, coord:godot.Vector2):godot.NavigationPolygon;

	/**		
		Sets the bitmask of the subtile from an autotile given its coordinates.
		
		The value is the sum of the values in `godot.TileSet_AutotileBindings` present in the subtile (e.g. a value of 5 means the bitmask has bindings in both the top left and top right).
	**/
	@:native("AutotileSetBitmask")
	public function autotileSetBitmask(id:Int, bitmask:godot.Vector2, flag:UInt):Void;

	/**		
		Returns the bitmask of the subtile from an autotile given its coordinates.
		
		The value is the sum of the values in `godot.TileSet_AutotileBindings` present in the subtile (e.g. a value of 5 means the bitmask has bindings in both the top left and top right).
	**/
	@:native("AutotileGetBitmask")
	public function autotileGetBitmask(id:Int, coord:godot.Vector2):UInt;

	/**		
		Sets the `godot.TileSet_BitmaskMode` of the autotile.
	**/
	@:native("AutotileSetBitmaskMode")
	public function autotileSetBitmaskMode(id:Int, mode:godot.TileSet_BitmaskMode):Void;

	/**		
		Returns the `godot.TileSet_BitmaskMode` of the autotile.
	**/
	@:native("AutotileGetBitmaskMode")
	public function autotileGetBitmaskMode(id:Int):godot.TileSet_BitmaskMode;

	/**		
		Sets the spacing between subtiles of the atlas/autotile.
	**/
	@:native("AutotileSetSpacing")
	public function autotileSetSpacing(id:Int, spacing:Int):Void;

	/**		
		Returns the spacing between subtiles of the atlas/autotile.
	**/
	@:native("AutotileGetSpacing")
	public function autotileGetSpacing(id:Int):Int;

	/**		
		Sets the size of the subtiles in an atlas/autotile.
	**/
	@:native("AutotileSetSize")
	public function autotileSetSize(id:Int, size:godot.Vector2):Void;

	/**		
		Returns the size of the subtiles in an atlas/autotile.
	**/
	@:native("AutotileGetSize")
	public function autotileGetSize(id:Int):godot.Vector2;

	/**		
		Sets the tile's name.
	**/
	@:native("TileSetName")
	public function tileSetName(id:Int, name:std.String):Void;

	/**		
		Returns the tile's name.
	**/
	@:native("TileGetName")
	public function tileGetName(id:Int):std.String;

	/**		
		Sets the tile's texture.
	**/
	@:native("TileSetTexture")
	public function tileSetTexture(id:Int, texture:godot.Texture):Void;

	/**		
		Returns the tile's texture.
	**/
	@:native("TileGetTexture")
	public function tileGetTexture(id:Int):godot.Texture;

	/**		
		Sets the tile's normal map texture.
		
		Note: Godot expects the normal map to use X+, Y-, and Z+ coordinates. See [http://wiki.polycount.com/wiki/Normal_Map_Technical_Details#Common_Swizzle_Coordinates](this page) for a comparison of normal map coordinates expected by popular engines.
	**/
	@:native("TileSetNormalMap")
	public function tileSetNormalMap(id:Int, normalMap:godot.Texture):Void;

	/**		
		Returns the tile's normal map texture.
	**/
	@:native("TileGetNormalMap")
	public function tileGetNormalMap(id:Int):godot.Texture;

	/**		
		Sets the tile's material.
	**/
	@:native("TileSetMaterial")
	public function tileSetMaterial(id:Int, material:godot.ShaderMaterial):Void;

	/**		
		Returns the tile's material.
	**/
	@:native("TileGetMaterial")
	public function tileGetMaterial(id:Int):godot.ShaderMaterial;

	/**		
		Sets the tile's modulation color.
	**/
	@:native("TileSetModulate")
	public function tileSetModulate(id:Int, color:godot.Color):Void;

	/**		
		Returns the tile's modulation color.
	**/
	@:native("TileGetModulate")
	public function tileGetModulate(id:Int):godot.Color;

	/**		
		Sets the tile's texture offset.
	**/
	@:native("TileSetTextureOffset")
	public function tileSetTextureOffset(id:Int, textureOffset:godot.Vector2):Void;

	/**		
		Returns the texture offset of the tile.
	**/
	@:native("TileGetTextureOffset")
	public function tileGetTextureOffset(id:Int):godot.Vector2;

	/**		
		Sets the tile's sub-region in the texture. This is common in texture atlases.
	**/
	@:native("TileSetRegion")
	public function tileSetRegion(id:Int, region:godot.Rect2):Void;

	/**		
		Returns the tile sub-region in the texture.
	**/
	@:native("TileGetRegion")
	public function tileGetRegion(id:Int):godot.Rect2;

	/**		
		Sets a shape for the tile, enabling collision.
	**/
	@:native("TileSetShape")
	public function tileSetShape(id:Int, shapeId:Int, shape:godot.Shape2D):Void;

	/**		
		Returns a tile's given shape.
	**/
	@:native("TileGetShape")
	public function tileGetShape(id:Int, shapeId:Int):godot.Shape2D;

	/**		
		Sets the offset of a tile's shape.
	**/
	@:native("TileSetShapeOffset")
	public function tileSetShapeOffset(id:Int, shapeId:Int, shapeOffset:godot.Vector2):Void;

	/**		
		Returns the offset of a tile's shape.
	**/
	@:native("TileGetShapeOffset")
	public function tileGetShapeOffset(id:Int, shapeId:Int):godot.Vector2;

	/**		
		Sets a `godot.Transform2D` on a tile's shape.
	**/
	@:native("TileSetShapeTransform")
	public function tileSetShapeTransform(id:Int, shapeId:Int, shapeTransform:godot.Transform2D):Void;

	/**		
		Returns the `godot.Transform2D` of a tile's shape.
	**/
	@:native("TileGetShapeTransform")
	public function tileGetShapeTransform(id:Int, shapeId:Int):godot.Transform2D;

	/**		
		Enables one-way collision on a tile's shape.
	**/
	@:native("TileSetShapeOneWay")
	public function tileSetShapeOneWay(id:Int, shapeId:Int, oneWay:Bool):Void;

	/**		
		Returns the one-way collision value of a tile's shape.
	**/
	@:native("TileGetShapeOneWay")
	public function tileGetShapeOneWay(id:Int, shapeId:Int):Bool;

	@:native("TileSetShapeOneWayMargin")
	public function tileSetShapeOneWayMargin(id:Int, shapeId:Int, oneWay:Single):Void;

	@:native("TileGetShapeOneWayMargin")
	public function tileGetShapeOneWayMargin(id:Int, shapeId:Int):Single;

	#if doc_gen
	/**		
		Adds a shape to the tile.
		
		@param autotileCoord If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("TileAddShape")
	public function tileAddShape(id:Int, shape:godot.Shape2D, shapeTransform:godot.Transform2D, ?oneWay:Bool, ?autotileCoord:Nullable1<godot.Vector2>):Void;
	#else
	/**		
		Adds a shape to the tile.
		
		@param autotileCoord If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("TileAddShape")
	public overload function tileAddShape(id:Int, shape:godot.Shape2D, shapeTransform:godot.Transform2D):Void;

	/**		
		Adds a shape to the tile.
		
		@param autotileCoord If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("TileAddShape")
	public overload function tileAddShape(id:Int, shape:godot.Shape2D, shapeTransform:godot.Transform2D, oneWay:Bool):Void;

	/**		
		Adds a shape to the tile.
		
		@param autotileCoord If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("TileAddShape")
	public overload function tileAddShape(id:Int, shape:godot.Shape2D, shapeTransform:godot.Transform2D, oneWay:Bool, autotileCoord:Nullable1<godot.Vector2>):Void;
	#end

	/**		
		Returns the number of shapes assigned to a tile.
	**/
	@:native("TileGetShapeCount")
	public function tileGetShapeCount(id:Int):Int;

	/**		
		Sets an array of shapes for the tile, enabling collision.
	**/
	@:native("TileSetShapes")
	public function tileSetShapes(id:Int, shapes:godot.collections.Array):Void;

	/**		
		Returns an array of dictionaries describing the tile's shapes.
		
		Dictionary structure in the array returned by this method:
		
		```
		
		{
		"autotile_coord": Vector2,
		"one_way": bool,
		"one_way_margin": int,
		"shape": CollisionShape2D,
		"shape_transform": Transform2D,
		}
		
		```
	**/
	@:native("TileGetShapes")
	public function tileGetShapes(id:Int):godot.collections.Array;

	/**		
		Sets the tile's `godot.TileSet_TileMode`.
	**/
	@:native("TileSetTileMode")
	public function tileSetTileMode(id:Int, tilemode:godot.TileSet_TileMode):Void;

	/**		
		Returns the tile's `godot.TileSet_TileMode`.
	**/
	@:native("TileGetTileMode")
	public function tileGetTileMode(id:Int):godot.TileSet_TileMode;

	/**		
		Sets the tile's navigation polygon.
	**/
	@:native("TileSetNavigationPolygon")
	public function tileSetNavigationPolygon(id:Int, navigationPolygon:godot.NavigationPolygon):Void;

	/**		
		Returns the navigation polygon of the tile.
	**/
	@:native("TileGetNavigationPolygon")
	public function tileGetNavigationPolygon(id:Int):godot.NavigationPolygon;

	/**		
		Sets an offset for the tile's navigation polygon.
	**/
	@:native("TileSetNavigationPolygonOffset")
	public function tileSetNavigationPolygonOffset(id:Int, navigationPolygonOffset:godot.Vector2):Void;

	/**		
		Returns the offset of the tile's navigation polygon.
	**/
	@:native("TileGetNavigationPolygonOffset")
	public function tileGetNavigationPolygonOffset(id:Int):godot.Vector2;

	/**		
		Sets a light occluder for the tile.
	**/
	@:native("TileSetLightOccluder")
	public function tileSetLightOccluder(id:Int, lightOccluder:godot.OccluderPolygon2D):Void;

	/**		
		Returns the tile's light occluder.
	**/
	@:native("TileGetLightOccluder")
	public function tileGetLightOccluder(id:Int):godot.OccluderPolygon2D;

	/**		
		Sets an offset for the tile's light occluder.
	**/
	@:native("TileSetOccluderOffset")
	public function tileSetOccluderOffset(id:Int, occluderOffset:godot.Vector2):Void;

	/**		
		Returns the offset of the tile's light occluder.
	**/
	@:native("TileGetOccluderOffset")
	public function tileGetOccluderOffset(id:Int):godot.Vector2;

	/**		
		Sets the tile's drawing index.
	**/
	@:native("TileSetZIndex")
	public function tileSetZIndex(id:Int, zIndex:Int):Void;

	/**		
		Returns the tile's Z index (drawing layer).
	**/
	@:native("TileGetZIndex")
	public function tileGetZIndex(id:Int):Int;

	/**		
		Removes the given tile ID.
	**/
	@:native("RemoveTile")
	public function removeTile(id:Int):Void;

	/**		
		Clears all tiles.
	**/
	@:native("Clear")
	public function clear():Void;

	/**		
		Returns the ID following the last currently used ID, useful when creating a new tile.
	**/
	@:native("GetLastUnusedTileId")
	public function getLastUnusedTileId():Int;

	/**		
		Returns the first tile matching the given name.
	**/
	@:native("FindTileByName")
	public function findTileByName(name:std.String):Int;

	/**		
		Returns an array of all currently used tile IDs.
	**/
	@:native("GetTilesIds")
	public function getTilesIds():godot.collections.Array;
}
