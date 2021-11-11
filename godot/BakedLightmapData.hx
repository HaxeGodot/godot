// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.BakedLightmapData")
@:autoBuild(godot.Godot.buildUserClass())
extern class BakedLightmapData extends godot.Resource {
	@:native("UserData")
	public var userData:godot.collections.Array;

	@:native("Octree")
	public var octree:cs.NativeArray<cs.types.UInt8>;

	/**		
		Controls whether dynamic capture objects receive environment lighting or not.
	**/
	@:native("Interior")
	public var interior:Bool;

	/**		
		Global energy multiplier for baked and dynamic capture objects. This can be changed at run-time without having to bake lightmaps again.
		
		To adjust only the energy of indirect lighting (without affecting direct lighting or emissive materials), adjust `godot.BakedLightmap.bounceIndirectEnergy` and bake lightmaps again.
	**/
	@:native("Energy")
	public var energy:Single;

	@:native("CellSubdiv")
	public var cellSubdiv:Int;

	@:native("CellSpaceTransform")
	public var cellSpaceTransform:godot.Transform;

	@:native("Bounds")
	public var bounds:godot.AABB;

	@:native("new")
	public function new():Void;

	@:native("SetBounds")
	public function setBounds(bounds:godot.AABB):Void;

	@:native("GetBounds")
	public function getBounds():godot.AABB;

	@:native("SetCellSpaceTransform")
	public function setCellSpaceTransform(xform:godot.Transform):Void;

	@:native("GetCellSpaceTransform")
	public function getCellSpaceTransform():godot.Transform;

	@:native("SetCellSubdiv")
	public function setCellSubdiv(cellSubdiv:Int):Void;

	@:native("GetCellSubdiv")
	public function getCellSubdiv():Int;

	@:native("SetOctree")
	public function setOctree(octree:HaxeArray<cs.types.UInt8>):Void;

	public extern inline function getOctree():std.Array<cs.types.UInt8> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetOctree()", this));
	}

	@:native("SetEnergy")
	public function setEnergy(energy:Single):Void;

	@:native("GetEnergy")
	public function getEnergy():Single;

	@:native("SetInterior")
	public function setInterior(interior:Bool):Void;

	@:native("IsInterior")
	public function isInterior():Bool;

	@:native("AddUser")
	public function addUser(path:godot.NodePath, lightmap:godot.Resource, lightmapSlice:Int, lightmapUvRect:godot.Rect2, instance:Int):Void;

	@:native("GetUserCount")
	public function getUserCount():Int;

	@:native("GetUserPath")
	public function getUserPath(userIdx:Int):godot.NodePath;

	@:native("GetUserLightmap")
	public function getUserLightmap(userIdx:Int):godot.Resource;

	@:native("ClearUsers")
	public function clearUsers():Void;

	@:native("ClearData")
	public function clearData():Void;
}
