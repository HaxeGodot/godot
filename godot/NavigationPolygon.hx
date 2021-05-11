// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
There are two ways to create polygons. Either by using the `godot.NavigationPolygon.addOutline` method, or using the `godot.NavigationPolygon.addPolygon` method.

Using `godot.NavigationPolygon.addOutline`:

```

var polygon = NavigationPolygon.new()
var outline = PoolVector2Array([Vector2(0, 0), Vector2(0, 50), Vector2(50, 50), Vector2(50, 0)])
polygon.add_outline(outline)
polygon.make_polygons_from_outlines()
$NavigationPolygonInstance.navpoly = polygon

```

Using `godot.NavigationPolygon.addPolygon` and indices of the vertices array.

```

var polygon = NavigationPolygon.new()
var vertices = PoolVector2Array([Vector2(0, 0), Vector2(0, 50), Vector2(50, 50), Vector2(50, 0)])
polygon.set_vertices(vertices)
var indices = PoolIntArray(0, 3, 1)
polygon.add_polygon(indices)
$NavigationPolygonInstance.navpoly = polygon

```
**/
@:libType
@:csNative
@:native("Godot.NavigationPolygon")
@:autoBuild(godot.Godot.buildUserClass())
extern class NavigationPolygon extends godot.Resource {
	@:native("Outlines")
	public var outlines:godot.collections.Array;

	@:native("Polygons")
	public var polygons:godot.collections.Array;

	@:native("Vertices")
	public var vertices:cs.NativeArray<godot.Vector2>;

	@:native("new")
	public function new():Void;

	/**		
		Sets the vertices that can be then indexed to create polygons with the `godot.NavigationPolygon.addPolygon` method.
	**/
	@:native("SetVertices")
	public function setVertices(vertices:haxe.Rest<godot.Vector2>):Void;

	/**		
		Returns a `godot.Vector2` containing all the vertices being used to create the polygons.
	**/
	public extern inline function getVertices():std.Array<godot.Vector2> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetVertices()", this));
	}

	/**		
		Adds a polygon using the indices of the vertices you get when calling `godot.NavigationPolygon.getVertices`.
	**/
	@:native("AddPolygon")
	public function addPolygon(polygon:haxe.Rest<Int>):Void;

	/**		
		Returns the count of all polygons.
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
		Clears the array of polygons, but it doesn't clear the array of outlines and vertices.
	**/
	@:native("ClearPolygons")
	public function clearPolygons():Void;

	/**		
		Appends a `godot.Vector2` that contains the vertices of an outline to the internal array that contains all the outlines. You have to call `godot.NavigationPolygon.makePolygonsFromOutlines` in order for this array to be converted to polygons that the engine will use.
	**/
	@:native("AddOutline")
	public function addOutline(outline:haxe.Rest<godot.Vector2>):Void;

	/**		
		Adds a `godot.Vector2` that contains the vertices of an outline to the internal array that contains all the outlines at a fixed position. You have to call `godot.NavigationPolygon.makePolygonsFromOutlines` in order for this array to be converted to polygons that the engine will use.
	**/
	@:native("AddOutlineAtIndex")
	public function addOutlineAtIndex(outline:HaxeArray<godot.Vector2>, index:Int):Void;

	/**		
		Returns the number of outlines that were created in the editor or by script.
	**/
	@:native("GetOutlineCount")
	public function getOutlineCount():Int;

	/**		
		Changes an outline created in the editor or by script. You have to call `godot.NavigationPolygon.makePolygonsFromOutlines` for the polygons to update.
	**/
	@:native("SetOutline")
	public function setOutline(idx:Int, outline:haxe.Rest<godot.Vector2>):Void;

	/**		
		Returns a `godot.Vector2` containing the vertices of an outline that was created in the editor or by script.
	**/
	public extern inline function getOutline(idx:Int):std.Array<godot.Vector2> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetOutline({1})", this, idx));
	}

	/**		
		Removes an outline created in the editor or by script. You have to call `godot.NavigationPolygon.makePolygonsFromOutlines` for the polygons to update.
	**/
	@:native("RemoveOutline")
	public function removeOutline(idx:Int):Void;

	/**		
		Clears the array of the outlines, but it doesn't clear the vertices and the polygons that were created by them.
	**/
	@:native("ClearOutlines")
	public function clearOutlines():Void;

	/**		
		Creates polygons from the outlines added in the editor or by script.
	**/
	@:native("MakePolygonsFromOutlines")
	public function makePolygonsFromOutlines():Void;
}
