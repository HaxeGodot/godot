// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This class contains the shape and other parameters for 2D intersection/collision queries.
**/
@:libType
@:csNative
@:native("Godot.Physics2DShapeQueryParameters")
@:autoBuild(godot.Godot.buildUserClass())
extern class Physics2DShapeQueryParameters extends godot.Reference {
	/**		
		If `true`, the query will take `godot.Area2D`s into account.
	**/
	@:native("CollideWithAreas")
	public var collideWithAreas:Bool;

	/**		
		If `true`, the query will take `godot.PhysicsBody2D`s into account.
	**/
	@:native("CollideWithBodies")
	public var collideWithBodies:Bool;

	/**		
		The queried shape's transform matrix.
	**/
	@:native("Transform")
	public var transform:godot.Transform2D;

	/**		
		The queried shape's `godot.RID`. See also `godot.Physics2DShapeQueryParameters.setShape`.
	**/
	@:native("ShapeRid")
	public var shapeRid:godot.RID;

	/**		
		The motion of the shape being queried for.
	**/
	@:native("Motion")
	public var motion:godot.Vector2;

	/**		
		The collision margin for the shape.
	**/
	@:native("Margin")
	public var margin:Single;

	/**		
		The list of objects or object `godot.RID`s that will be excluded from collisions.
	**/
	@:native("Exclude")
	public var exclude:godot.collections.Array;

	/**		
		The physics layer(s) the query will take into account (as a bitmask). See [https://docs.godotengine.org/en/3.4/tutorials/physics/physics_introduction.html#collision-layers-and-masks](Collision layers and masks) in the documentation for more information.
	**/
	@:native("CollisionLayer")
	public var collisionLayer:UInt;

	@:native("new")
	public function new():Void;

	/**		
		Sets the `godot.Shape2D` that will be used for collision/intersection queries.
	**/
	@:native("SetShape")
	public function setShape(shape:godot.Resource):Void;

	@:native("SetShapeRid")
	public function setShapeRid(shape:godot.RID):Void;

	@:native("GetShapeRid")
	public function getShapeRid():godot.RID;

	@:native("SetTransform")
	public function setTransform(transform:godot.Transform2D):Void;

	@:native("GetTransform")
	public function getTransform():godot.Transform2D;

	@:native("SetMotion")
	public function setMotion(motion:godot.Vector2):Void;

	@:native("GetMotion")
	public function getMotion():godot.Vector2;

	@:native("SetMargin")
	public function setMargin(margin:Single):Void;

	@:native("GetMargin")
	public function getMargin():Single;

	@:native("SetCollisionLayer")
	public function setCollisionLayer(collisionLayer:UInt):Void;

	@:native("GetCollisionLayer")
	public function getCollisionLayer():UInt;

	@:native("SetExclude")
	public function setExclude(exclude:godot.collections.Array):Void;

	@:native("GetExclude")
	public function getExclude():godot.collections.Array;

	@:native("SetCollideWithBodies")
	public function setCollideWithBodies(enable:Bool):Void;

	@:native("IsCollideWithBodiesEnabled")
	public function isCollideWithBodiesEnabled():Bool;

	@:native("SetCollideWithAreas")
	public function setCollideWithAreas(enable:Bool):Void;

	@:native("IsCollideWithAreasEnabled")
	public function isCollideWithAreasEnabled():Bool;
}
