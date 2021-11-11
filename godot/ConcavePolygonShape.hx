// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Concave polygon shape resource, which can be set into a `godot.PhysicsBody` or area. This shape is created by feeding a list of triangles.

Note: When used for collision, `godot.ConcavePolygonShape` is intended to work with static `godot.PhysicsBody` nodes like `godot.StaticBody` and will not work with `godot.KinematicBody` or `godot.RigidBody` with a mode other than Static.
**/
@:libType
@:csNative
@:native("Godot.ConcavePolygonShape")
@:autoBuild(godot.Godot.buildUserClass())
extern class ConcavePolygonShape extends godot.Shape {
	@:native("Data")
	public var data:cs.NativeArray<godot.Vector3>;

	@:native("new")
	public function new():Void;

	/**		
		Sets the faces (an array of triangles).
	**/
	@:native("SetFaces")
	public function setFaces(faces:HaxeArray<godot.Vector3>):Void;

	/**		
		Returns the faces (an array of triangles).
	**/
	public extern inline function getFaces():std.Array<godot.Vector3> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetFaces()", this));
	}
}
