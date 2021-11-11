// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Contains collision data for `godot.KinematicBody2D` collisions. When a `godot.KinematicBody2D` is moved using `godot.KinematicBody2D.moveAndCollide`, it stops if it detects a collision with another body. If a collision is detected, a KinematicCollision2D object is returned.

This object contains information about the collision, including the colliding object, the remaining motion, and the collision position. This information can be used to calculate a collision response.
**/
@:libType
@:csNative
@:native("Godot.KinematicCollision2D")
@:autoBuild(godot.Godot.buildUserClass())
extern class KinematicCollision2D extends godot.Reference {
	/**		
		The colliding body's metadata. See `godot.Object`.
	**/
	@:native("ColliderMetadata")
	public var colliderMetadata(default, never):Dynamic;

	/**		
		The colliding object's velocity.
	**/
	@:native("ColliderVelocity")
	public var colliderVelocity(default, never):godot.Vector2;

	/**		
		The colliding shape's index. See `godot.CollisionObject2D`.
	**/
	@:native("ColliderShapeIndex")
	public var colliderShapeIndex(default, never):Int;

	/**		
		The colliding body's shape.
	**/
	@:native("ColliderShape")
	public var colliderShape(default, never):godot.Object;

	/**		
		The colliding body's `godot.RID` used by the `godot.Physics2DServer`.
	**/
	@:native("ColliderRid")
	public var colliderRid(default, never):godot.RID;

	/**		
		The colliding body's unique instance ID. See `godot.Object.getInstanceId`.
	**/
	@:native("ColliderId")
	public var colliderId(default, never):cs.types.UInt64;

	/**		
		The colliding body.
	**/
	@:native("Collider")
	public var collider(default, never):godot.Object;

	/**		
		The moving object's colliding shape.
	**/
	@:native("LocalShape")
	public var localShape(default, never):godot.Object;

	/**		
		The moving object's remaining movement vector.
	**/
	@:native("Remainder")
	public var remainder(default, never):godot.Vector2;

	/**		
		The distance the moving object traveled before collision.
	**/
	@:native("Travel")
	public var travel(default, never):godot.Vector2;

	/**		
		The colliding body's shape's normal at the point of collision.
	**/
	@:native("Normal")
	public var normal(default, never):godot.Vector2;

	/**		
		The point of collision, in global coordinates.
	**/
	@:native("Position")
	public var position(default, never):godot.Vector2;

	@:native("new")
	public function new():Void;

	@:native("GetPosition")
	public function getPosition():godot.Vector2;

	@:native("GetNormal")
	public function getNormal():godot.Vector2;

	@:native("GetTravel")
	public function getTravel():godot.Vector2;

	@:native("GetRemainder")
	public function getRemainder():godot.Vector2;

	#if doc_gen
	/**		
		The collision angle according to `up_direction`, which is `Vector2.UP` by default. This value is always positive.
		
		@param upDirection If the parameter is null, then the default value is new Vector2(0, -1)
	**/
	@:native("GetAngle")
	public function getAngle(?upDirection:Null<godot.Vector2>):Single;
	#else
	/**		
		The collision angle according to `up_direction`, which is `Vector2.UP` by default. This value is always positive.
		
		@param upDirection If the parameter is null, then the default value is new Vector2(0, -1)
	**/
	@:native("GetAngle")
	public overload function getAngle():Single;

	/**		
		The collision angle according to `up_direction`, which is `Vector2.UP` by default. This value is always positive.
		
		@param upDirection If the parameter is null, then the default value is new Vector2(0, -1)
	**/
	@:native("GetAngle")
	public overload function getAngle(upDirection:Nullable1<godot.Vector2>):Single;
	#end

	@:native("GetLocalShape")
	public function getLocalShape():godot.Object;

	@:native("GetCollider")
	public function getCollider():godot.Object;

	@:native("GetColliderId")
	public function getColliderId():cs.types.UInt64;

	@:native("GetColliderRid")
	public function getColliderRid():godot.RID;

	@:native("GetColliderShape")
	public function getColliderShape():godot.Object;

	@:native("GetColliderShapeIndex")
	public function getColliderShapeIndex():Int;

	@:native("GetColliderVelocity")
	public function getColliderVelocity():godot.Vector2;

	@:native("GetColliderMetadata")
	public function getColliderMetadata():Dynamic;
}
