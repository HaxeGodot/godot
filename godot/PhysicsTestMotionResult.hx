// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.PhysicsTestMotionResult")
@:autoBuild(godot.Godot.buildUserClass())
extern class PhysicsTestMotionResult extends godot.Reference {
	@:native("CollisionUnsafeFraction")
	public var collisionUnsafeFraction(default, never):Single;

	@:native("CollisionSafeFraction")
	public var collisionSafeFraction(default, never):Single;

	@:native("CollisionDepth")
	public var collisionDepth(default, never):Single;

	@:native("ColliderShape")
	public var colliderShape(default, never):Int;

	@:native("Collider")
	public var collider(default, never):godot.Object;

	@:native("ColliderRid")
	public var colliderRid(default, never):godot.RID;

	@:native("ColliderId")
	public var colliderId(default, never):cs.types.UInt64;

	@:native("ColliderVelocity")
	public var colliderVelocity(default, never):godot.Vector3;

	@:native("CollisionNormal")
	public var collisionNormal(default, never):godot.Vector3;

	@:native("CollisionPoint")
	public var collisionPoint(default, never):godot.Vector3;

	@:native("MotionRemainder")
	public var motionRemainder(default, never):godot.Vector3;

	@:native("Motion")
	public var motion(default, never):godot.Vector3;

	@:native("new")
	public function new():Void;

	@:native("GetMotion")
	public function getMotion():godot.Vector3;

	@:native("GetMotionRemainder")
	public function getMotionRemainder():godot.Vector3;

	@:native("GetCollisionPoint")
	public function getCollisionPoint():godot.Vector3;

	@:native("GetCollisionNormal")
	public function getCollisionNormal():godot.Vector3;

	@:native("GetColliderVelocity")
	public function getColliderVelocity():godot.Vector3;

	@:native("GetColliderId")
	public function getColliderId():cs.types.UInt64;

	@:native("GetColliderRid")
	public function getColliderRid():godot.RID;

	@:native("GetCollider")
	public function getCollider():godot.Object;

	@:native("GetColliderShape")
	public function getColliderShape():Int;

	@:native("GetCollisionDepth")
	public function getCollisionDepth():Single;

	@:native("GetCollisionSafeFraction")
	public function getCollisionSafeFraction():Single;

	@:native("GetCollisionUnsafeFraction")
	public function getCollisionUnsafeFraction():Single;
}
