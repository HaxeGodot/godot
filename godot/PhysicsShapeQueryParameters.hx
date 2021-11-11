// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This class contains the shape and other parameters for 3D intersection/collision queries.
**/
@:libType
@:csNative
@:native("Godot.PhysicsShapeQueryParameters")
@:autoBuild(godot.Godot.buildUserClass())
extern class PhysicsShapeQueryParameters extends godot.Reference {
	/**		
		If `true`, the query will take `godot.Area`s into account.
	**/
	@:native("CollideWithAreas")
	public var collideWithAreas:Bool;

	/**		
		If `true`, the query will take `godot.PhysicsBody`s into account.
	**/
	@:native("CollideWithBodies")
	public var collideWithBodies:Bool;

	/**		
		The queried shape's transform matrix.
	**/
	@:native("Transform")
	public var transform:godot.Transform;

	/**		
		The queried shape's `godot.RID`. See also `godot.PhysicsShapeQueryParameters.setShape`.
	**/
	@:native("ShapeRid")
	public var shapeRid:godot.RID;

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
	@:native("CollisionMask")
	public var collisionMask:UInt;

	@:native("new")
	public function new():Void;

	/**		
		Sets the `godot.Shape` that will be used for collision/intersection queries.
	**/
	@:native("SetShape")
	public function setShape(shape:godot.Resource):Void;

	@:native("SetShapeRid")
	public function setShapeRid(shape:godot.RID):Void;

	@:native("GetShapeRid")
	public function getShapeRid():godot.RID;

	@:native("SetTransform")
	public function setTransform(transform:godot.Transform):Void;

	@:native("GetTransform")
	public function getTransform():godot.Transform;

	@:native("SetMargin")
	public function setMargin(margin:Single):Void;

	@:native("GetMargin")
	public function getMargin():Single;

	@:native("SetCollisionMask")
	public function setCollisionMask(collisionMask:UInt):Void;

	@:native("GetCollisionMask")
	public function getCollisionMask():UInt;

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
