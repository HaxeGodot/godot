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
	public function setOctree(octree:haxe.Rest<cs.types.UInt8>):Void;

	@:native("GetOctree")
	public function getOctree():cs.NativeArray<cs.types.UInt8>;

	@:native("SetEnergy")
	public function setEnergy(energy:Single):Void;

	@:native("GetEnergy")
	public function getEnergy():Single;

	@:native("AddUser")
	public function addUser(path:godot.NodePath, lightmap:godot.Texture, instance:Int):Void;

	@:native("GetUserCount")
	public function getUserCount():Int;

	@:native("GetUserPath")
	public function getUserPath(userIdx:Int):godot.NodePath;

	@:native("GetUserLightmap")
	public function getUserLightmap(userIdx:Int):godot.Texture;

	@:native("ClearUsers")
	public function clearUsers():Void;
}
