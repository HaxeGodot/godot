// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.PhysicsTestMotionResult")
@:autoBuild(godot.Godot.buildUserClass())
extern class PhysicsTestMotionResult extends godot.Reference {
	@:native("CollisionUnsafeFraction") @:readOnly
	public var collisionUnsafeFraction(default, never):Single;

	@:native("CollisionSafeFraction") @:readOnly
	public var collisionSafeFraction(default, never):Single;

	@:native("CollisionDepth") @:readOnly
	public var collisionDepth(default, never):Single;

	@:native("ColliderShape") @:readOnly
	public var colliderShape(default, never):Int;

	@:native("Collider") @:readOnly
	public var collider(default, never):godot.Object;

	@:native("ColliderRid") @:readOnly
	public var colliderRid(default, never):godot.RID;

	@:native("ColliderId") @:readOnly
	public var colliderId(default, never):cs.types.UInt64;

	@:native("ColliderVelocity") @:readOnly
	public var colliderVelocity(default, never):godot.Vector3;

	@:native("CollisionNormal") @:readOnly
	public var collisionNormal(default, never):godot.Vector3;

	@:native("CollisionPoint") @:readOnly
	public var collisionPoint(default, never):godot.Vector3;

	@:native("MotionRemainder") @:readOnly
	public var motionRemainder(default, never):godot.Vector3;

	@:native("Motion") @:readOnly
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
