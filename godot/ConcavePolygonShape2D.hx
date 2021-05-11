// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Concave polygon 2D shape resource for physics. It is made out of segments and is optimal for complex polygonal concave collisions. However, it is not advised to use for `godot.RigidBody2D` nodes. A CollisionPolygon2D in convex decomposition mode (solids) or several convex objects are advised for that instead. Otherwise, a concave polygon 2D shape is better for static collisions.

The main difference between a `godot.ConvexPolygonShape2D` and a `godot.ConcavePolygonShape2D` is that a concave polygon assumes it is concave and uses a more complex method of collision detection, and a convex one forces itself to be convex in order to speed up collision detection.
**/
@:libType
@:csNative
@:native("Godot.ConcavePolygonShape2D")
@:autoBuild(godot.Godot.buildUserClass())
extern class ConcavePolygonShape2D extends godot.Shape2D {
	/**		
		The array of points that make up the `godot.ConcavePolygonShape2D`'s line segments.
	**/
	@:native("Segments")
	public var segments:cs.NativeArray<godot.Vector2>;

	@:native("new")
	public function new():Void;

	@:native("SetSegments")
	public function setSegments(segments:haxe.Rest<godot.Vector2>):Void;

	public extern inline function getSegments():std.Array<godot.Vector2> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetSegments()", this));
	}
}
