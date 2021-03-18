// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Static body for 2D physics. A StaticBody2D is a body that is not intended to move. It is ideal for implementing objects in the environment, such as walls or platforms.

Additionally, a constant linear or angular velocity can be set for the static body, which will affect colliding bodies as if it were moving (for example, a conveyor belt).
**/
@:libType
@:csNative
@:native("Godot.StaticBody2D")
@:autoBuild(godot.Godot.buildUserClass())
extern class StaticBody2D extends godot.PhysicsBody2D {
	/**		
		The physics material override for the body.
		
		If a material is assigned to this property, it will be used instead of any other physics material, such as an inherited one.
	**/
	@:native("PhysicsMaterialOverride")
	public var physicsMaterialOverride:godot.PhysicsMaterial;

	/**		
		The body's bounciness. Values range from `0` (no bounce) to `1` (full bounciness).
		
		Deprecated, use `godot.PhysicsMaterial.bounce` instead via `godot.StaticBody2D.physicsMaterialOverride`.
	**/
	@:native("Bounce")
	public var bounce:Single;

	/**		
		The body's friction. Values range from `0` (no friction) to `1` (full friction).
		
		Deprecated, use `godot.PhysicsMaterial.friction` instead via `godot.StaticBody2D.physicsMaterialOverride`.
	**/
	@:native("Friction")
	public var friction:Single;

	/**		
		The body's constant angular velocity. This does not rotate the body, but affects colliding bodies, as if it were rotating.
	**/
	@:native("ConstantAngularVelocity")
	public var constantAngularVelocity:Single;

	/**		
		The body's constant linear velocity. This does not move the body, but affects colliding bodies, as if it were moving.
	**/
	@:native("ConstantLinearVelocity")
	public var constantLinearVelocity:godot.Vector2;

	@:native("new")
	public function new():Void;

	@:native("SetConstantLinearVelocity")
	public function setConstantLinearVelocity(vel:godot.Vector2):Void;

	@:native("SetConstantAngularVelocity")
	public function setConstantAngularVelocity(vel:Single):Void;

	@:native("GetConstantLinearVelocity")
	public function getConstantLinearVelocity():godot.Vector2;

	@:native("GetConstantAngularVelocity")
	public function getConstantAngularVelocity():Single;

	@:native("SetFriction")
	public function setFriction(friction:Single):Void;

	@:native("GetFriction")
	public function getFriction():Single;

	@:native("SetBounce")
	public function setBounce(bounce:Single):Void;

	@:native("GetBounce")
	public function getBounce():Single;

	@:native("SetPhysicsMaterialOverride")
	public function setPhysicsMaterialOverride(physicsMaterialOverride:godot.PhysicsMaterial):Void;

	@:native("GetPhysicsMaterialOverride")
	public function getPhysicsMaterialOverride():godot.PhysicsMaterial;
}
