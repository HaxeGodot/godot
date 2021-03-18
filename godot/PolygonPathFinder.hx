// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.PolygonPathFinder")
@:autoBuild(godot.Godot.buildUserClass())
extern class PolygonPathFinder extends godot.Resource {
	@:native("Data")
	public var data:godot.collections.Dictionary;

	@:native("new")
	public function new():Void;

	@:native("Setup")
	public function setup(points:cs.NativeArray<godot.Vector2>, connections:haxe.Rest<Int>):Void;

	@:native("FindPath")
	public function findPath(from:godot.Vector2, to:godot.Vector2):cs.NativeArray<godot.Vector2>;

	@:native("GetIntersections")
	public function getIntersections(from:godot.Vector2, to:godot.Vector2):cs.NativeArray<godot.Vector2>;

	@:native("GetClosestPoint")
	public function getClosestPoint(point:godot.Vector2):godot.Vector2;

	@:native("IsPointInside")
	public function isPointInside(point:godot.Vector2):Bool;

	@:native("SetPointPenalty")
	public function setPointPenalty(idx:Int, penalty:Single):Void;

	@:native("GetPointPenalty")
	public function getPointPenalty(idx:Int):Single;

	@:native("GetBounds")
	public function getBounds():godot.Rect2;
}
