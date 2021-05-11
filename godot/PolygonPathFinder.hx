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
	public function setup(points:HaxeArray<godot.Vector2>, connections:haxe.Rest<Int>):Void;

	public extern inline function findPath(from:godot.Vector2, to:godot.Vector2):std.Array<godot.Vector2> {
		return cs.Lib.array(cs.Syntax.code("{0}.FindPath({1}, {2})", this, from, to));
	}

	public extern inline function getIntersections(from:godot.Vector2, to:godot.Vector2):std.Array<godot.Vector2> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetIntersections({1}, {2})", this, from, to));
	}

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
