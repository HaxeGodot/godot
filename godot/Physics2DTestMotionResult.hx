// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.Physics2DTestMotionResult")
@:autoBuild(godot.Godot.buildUserClass())
extern class Physics2DTestMotionResult extends godot.Reference {
	@:native("ColliderShape")
	public var colliderShape(default, never):Int;

	@:native("Collider")
	public var collider(default, never):godot.Object;

	@:native("ColliderRid")
	public var colliderRid(default, never):godot.RID;

	@:native("ColliderId")
	public var colliderId(default, never):cs.types.UInt64;

	@:native("ColliderVelocity")
	public var colliderVelocity(default, never):godot.Vector2;

	@:native("CollisionNormal")
	public var collisionNormal(default, never):godot.Vector2;

	@:native("CollisionPoint")
	public var collisionPoint(default, never):godot.Vector2;

	@:native("MotionRemainder")
	public var motionRemainder(default, never):godot.Vector2;

	@:native("Motion")
	public var motion(default, never):godot.Vector2;

	@:native("new")
	public function new():Void;

	@:native("GetMotion")
	public function getMotion():godot.Vector2;

	@:native("GetMotionRemainder")
	public function getMotionRemainder():godot.Vector2;

	@:native("GetCollisionPoint")
	public function getCollisionPoint():godot.Vector2;

	@:native("GetCollisionNormal")
	public function getCollisionNormal():godot.Vector2;

	@:native("GetColliderVelocity")
	public function getColliderVelocity():godot.Vector2;

	@:native("GetColliderId")
	public function getColliderId():cs.types.UInt64;

	@:native("GetColliderRid")
	public function getColliderRid():godot.RID;

	@:native("GetCollider")
	public function getCollider():godot.Object;

	@:native("GetColliderShape")
	public function getColliderShape():Int;
}
