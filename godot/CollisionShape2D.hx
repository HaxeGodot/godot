// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Editor facility for creating and editing collision shapes in 2D space. You can use this node to represent all sorts of collision shapes, for example, add this to an `godot.Area2D` to give it a detection shape, or add it to a `godot.PhysicsBody2D` to create a solid object. IMPORTANT: this is an Editor-only helper to create shapes, use `godot.CollisionObject2D.shapeOwnerGetShape` to get the actual shape.
**/
@:libType
@:csNative
@:native("Godot.CollisionShape2D")
@:autoBuild(godot.Godot.buildUserClass())
extern class CollisionShape2D extends godot.Node2D {
	/**		
		The margin used for one-way collision (in pixels). Higher values will make the shape thicker, and work better for colliders that enter the shape at a high velocity.
	**/
	@:native("OneWayCollisionMargin")
	public var oneWayCollisionMargin:Single;

	/**		
		Sets whether this collision shape should only detect collision on one side (top or bottom).
	**/
	@:native("OneWayCollision")
	public var oneWayCollision:Bool;

	/**		
		A disabled collision shape has no effect in the world. This property should be changed with `godot.Object.setDeferred`.
	**/
	@:native("Disabled")
	public var disabled:Bool;

	/**		
		The actual shape owned by this collision shape.
	**/
	@:native("Shape")
	public var shape:godot.Shape2D;

	@:native("new")
	public function new():Void;

	@:native("SetShape")
	public function setShape(shape:godot.Shape2D):Void;

	@:native("GetShape")
	public function getShape():godot.Shape2D;

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
