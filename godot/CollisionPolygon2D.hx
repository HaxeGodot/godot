// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Provides a 2D collision polygon to a `godot.CollisionObject2D` parent. Polygons can be drawn in the editor or specified by a list of vertices.
**/
@:libType
@:csNative
@:native("Godot.CollisionPolygon2D")
@:autoBuild(godot.Godot.buildUserClass())
extern class CollisionPolygon2D extends godot.Node2D {
	/**		
		The margin used for one-way collision (in pixels). Higher values will make the shape thicker, and work better for colliders that enter the polygon at a high velocity.
	**/
	@:native("OneWayCollisionMargin")
	public var oneWayCollisionMargin:Single;

	/**		
		If `true`, only edges that face up, relative to `godot.CollisionPolygon2D`'s rotation, will collide with other objects.
	**/
	@:native("OneWayCollision")
	public var oneWayCollision:Bool;

	/**		
		If `true`, no collisions will be detected.
	**/
	@:native("Disabled")
	public var disabled:Bool;

	/**		
		The polygon's list of vertices. The final point will be connected to the first. The returned value is a clone of the `godot.Vector2`, not a reference.
	**/
	@:native("Polygon")
	public var polygon:cs.NativeArray<godot.Vector2>;

	/**		
		Collision build mode. Use one of the `godot.CollisionPolygon2D_BuildModeEnum` constants.
	**/
	@:native("BuildMode")
	public var buildMode:godot.CollisionPolygon2D_BuildModeEnum;

	@:native("new")
	public function new():Void;

	@:native("SetPolygon")
	public function setPolygon(polygon:HaxeArray<godot.Vector2>):Void;

	public extern inline function getPolygon():std.Array<godot.Vector2> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetPolygon()", this));
	}

	@:native("SetBuildMode")
	public function setBuildMode(buildMode:godot.CollisionPolygon2D_BuildModeEnum):Void;

	@:native("GetBuildMode")
	public function getBuildMode():godot.CollisionPolygon2D_BuildModeEnum;

	@:native("SetDisabled")
	public function setDisabled(disabled:Bool):Void;

	@:native("IsDisabled")
	public function isDisabled():Bool;

	@:native("SetOneWayCollision")
	public function setOneWayCollision(enabled:Bool):Void;

	@:native("IsOneWayCollisionEnabled")
	public function isOneWayCollisionEnabled():Bool;

	@:native("SetOneWayCollisionMargin")
	public function setOneWayCollisionMargin(margin:Single):Void;

	@:native("GetOneWayCollisionMargin")
	public function getOneWayCollisionMargin():Single;
}
