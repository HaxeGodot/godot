// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Static body for 3D physics. A static body is a simple body that is not intended to move. In contrast to `godot.RigidBody`, they don't consume any CPU resources as long as they don't move.

Additionally, a constant linear or angular velocity can be set for the static body, so even if it doesn't move, it affects other bodies as if it was moving (this is useful for simulating conveyor belts or conveyor wheels).
**/
@:libType
@:csNative
@:native("Godot.StaticBody")
@:autoBuild(godot.Godot.buildUserClass())
extern class StaticBody extends godot.PhysicsBody {
	/**		
		The body's constant angular velocity. This does not rotate the body, but affects other bodies that touch it, as if it was in a state of rotation.
	**/
	@:native("ConstantAngularVelocity")
	public var constantAngularVelocity:godot.Vector3;

	/**		
		The body's constant linear velocity. This does not move the body, but affects other bodies that touch it, as if it was in a state of movement.
	**/
	@:native("ConstantLinearVelocity")
	public var constantLinearVelocity:godot.Vector3;

	/**		
		The physics material override for the body.
		
		If a material is assigned to this property, it will be used instead of any other physics material, such as an inherited one.
	**/
	@:native("PhysicsMaterialOverride")
	public var physicsMaterialOverride:godot.PhysicsMaterial;

	/**		
		The body's bounciness. Values range from `0` (no bounce) to `1` (full bounciness).
		
		Deprecated, use `godot.PhysicsMaterial.bounce` instead via `godot.StaticBody.physicsMaterialOverride`.
	**/
	@:native("Bounce")
	public var bounce:Single;

	/**		
		The body's friction, from 0 (frictionless) to 1 (full friction).
		
		Deprecated, use `godot.PhysicsMaterial.friction` instead via `godot.StaticBody.physicsMaterialOverride`.
	**/
	@:native("Friction")
	public var friction:Single;

	@:native("new")
	public function new():Void;

	@:native("SetConstantLinearVelocity")
	public function setConstantLinearVelocity(vel:godot.Vector3):Void;

	@:native("SetConstantAngularVelocity")
	public function setConstantAngularVelocity(vel:godot.Vector3):Void;

	@:native("GetConstantLinearVelocity")
	public function getConstantLinearVelocity():godot.Vector3;

	@:native("GetConstantAngularVelocity")
	public function getConstantAngularVelocity():godot.Vector3;

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
