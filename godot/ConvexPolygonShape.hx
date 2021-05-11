// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Convex polygon shape resource, which can be added to a `godot.PhysicsBody` or area.
**/
@:libType
@:csNative
@:native("Godot.ConvexPolygonShape")
@:autoBuild(godot.Godot.buildUserClass())
extern class ConvexPolygonShape extends godot.Shape {
	/**		
		The list of 3D points forming the convex polygon shape.
	**/
	@:native("Points")
	public var points:cs.NativeArray<godot.Vector3>;

	@:native("new")
	public function new():Void;

	@:native("SetPoints")
	public function setPoints(points:haxe.Rest<godot.Vector3>):Void;

	public extern inline function getPoints():std.Array<godot.Vector3> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetPoints()", this));
	}
}
