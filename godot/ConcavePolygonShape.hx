// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Concave polygon shape resource, which can be set into a `godot.PhysicsBody` or area. This shape is created by feeding a list of triangles.

Note: when used for collision, `godot.ConcavePolygonShape` is intended to work with static `godot.PhysicsBody` nodes like `godot.StaticBody` and will not work with `godot.KinematicBody` or `godot.RigidBody` with a mode other than Static.
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
	public function setFaces(faces:haxe.Rest<godot.Vector3>):Void;

	/**		
		Returns the faces (an array of triangles).
	**/
	@:native("GetFaces")
	public function getFaces():cs.NativeArray<godot.Vector3>;
}
