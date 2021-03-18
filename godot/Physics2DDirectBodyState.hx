// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Provides direct access to a physics body in the `godot.Physics2DServer`, allowing safe changes to physics properties. This object is passed via the direct state callback of rigid/character bodies, and is intended for changing the direct state of that body. See `godot.RigidBody2D._IntegrateForces`.
**/
@:libType
@:csNative
@:native("Godot.Physics2DDirectBodyState")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class Physics2DDirectBodyState extends godot.Object {
	/**		
		The body's transformation matrix.
	**/
	@:native("Transform")
	public var transform:godot.Transform2D;

	/**		
		If `true`, this body is currently sleeping (not active).
	**/
	@:native("Sleeping")
	public var sleeping:Bool;

	/**		
		The body's linear velocity.
	**/
	@:native("LinearVelocity")
	public var linearVelocity:godot.Vector2;

	/**		
		The body's rotational velocity.
	**/
	@:native("AngularVelocity")
	public var angularVelocity:Single;

	/**		
		The total gravity vector being currently applied to this body.
	**/
	@:native("TotalGravity")
	public var totalGravity(default, never):godot.Vector2;

	/**		
		The rate at which the body stops moving, if there are not any other forces moving it.
	**/
	@:native("TotalLinearDamp")
	public var totalLinearDamp(default, never):Single;

	/**		
		The rate at which the body stops rotating, if there are not any other forces moving it.
	**/
	@:native("TotalAngularDamp")
	public var totalAngularDamp(default, never):Single;

	/**		
		The inverse of the inertia of the body.
	**/
	@:native("InverseInertia")
	public var inverseInertia(default, never):Single;

	/**		
		The inverse of the mass of the body.
	**/
	@:native("InverseMass")
	public var inverseMass(default, never):Single;

	/**		
		The timestep (delta) used for the simulation.
	**/
	@:native("Step")
	public var step(default, never):Single;

	@:native("GetTotalGravity")
	public function getTotalGravity():godot.Vector2;

	@:native("GetTotalLinearDamp")
	public function getTotalLinearDamp():Single;

	@:native("GetTotalAngularDamp")
	public function getTotalAngularDamp():Single;

	@:native("GetInverseMass")
	public function getInverseMass():Single;

	@:native("GetInverseInertia")
	public function getInverseInertia():Single;

	@:native("SetLinearVelocity")
	public function setLinearVelocity(velocity:godot.Vector2):Void;

	@:native("GetLinearVelocity")
	public function getLinearVelocity():godot.Vector2;

	@:native("SetAngularVelocity")
	public function setAngularVelocity(velocity:Single):Void;

	@:native("GetAngularVelocity")
	public function getAngularVelocity():Single;

	@:native("SetTransform")
	public function setTransform(transform:godot.Transform2D):Void;

	@:native("GetTransform")
	public function getTransform():godot.Transform2D;

	/**		
		Adds a constant directional force without affecting rotation.
	**/
	@:native("AddCentralForce")
	public function addCentralForce(force:godot.Vector2):Void;

	/**		
		Adds a positioned force to the body. Both the force and the offset from the body origin are in global coordinates.
	**/
	@:native("AddForce")
	public function addForce(offset:godot.Vector2, force:godot.Vector2):Void;

	/**		
		Adds a constant rotational force.
	**/
	@:native("AddTorque")
	public function addTorque(torque:Single):Void;

	/**		
		Applies a directional impulse without affecting rotation.
	**/
	@:native("ApplyCentralImpulse")
	public function applyCentralImpulse(impulse:godot.Vector2):Void;

	/**		
		Applies a rotational impulse to the body.
	**/
	@:native("ApplyTorqueImpulse")
	public function applyTorqueImpulse(impulse:Single):Void;

	/**		
		Applies a positioned impulse to the body. An impulse is time-independent! Applying an impulse every frame would result in a framerate-dependent force. For this reason, it should only be used when simulating one-time impacts (use the "_force" functions otherwise). The offset uses the rotation of the global coordinate system, but is centered at the object's origin.
	**/
	@:native("ApplyImpulse")
	public function applyImpulse(offset:godot.Vector2, impulse:godot.Vector2):Void;

	@:native("SetSleepState")
	public function setSleepState(enabled:Bool):Void;

	@:native("IsSleeping")
	public function isSleeping():Bool;

	/**		
		Returns the number of contacts this body has with other bodies.
		
		Note: By default, this returns 0 unless bodies are configured to monitor contacts. See `godot.RigidBody2D.contactMonitor`.
	**/
	@:native("GetContactCount")
	public function getContactCount():Int;

	/**		
		Returns the local position of the contact point.
	**/
	@:native("GetContactLocalPosition")
	public function getContactLocalPosition(contactIdx:Int):godot.Vector2;

	/**		
		Returns the local normal at the contact point.
	**/
	@:native("GetContactLocalNormal")
	public function getContactLocalNormal(contactIdx:Int):godot.Vector2;

	/**		
		Returns the local shape index of the collision.
	**/
	@:native("GetContactLocalShape")
	public function getContactLocalShape(contactIdx:Int):Int;

	/**		
		Returns the collider's `godot.RID`.
	**/
	@:native("GetContactCollider")
	public function getContactCollider(contactIdx:Int):godot.RID;

	/**		
		Returns the contact position in the collider.
	**/
	@:native("GetContactColliderPosition")
	public function getContactColliderPosition(contactIdx:Int):godot.Vector2;

	/**		
		Returns the collider's object id.
	**/
	@:native("GetContactColliderId")
	public function getContactColliderId(contactIdx:Int):cs.types.UInt64;

	/**		
		Returns the collider object. This depends on how it was created (will return a scene node if such was used to create it).
	**/
	@:native("GetContactColliderObject")
	public function getContactColliderObject(contactIdx:Int):godot.Object;

	/**		
		Returns the collider's shape index.
	**/
	@:native("GetContactColliderShape")
	public function getContactColliderShape(contactIdx:Int):Int;

	/**		
		Returns the collided shape's metadata. This metadata is different from `godot.Object.getMeta`, and is set with `godot.Physics2DServer.shapeSetData`.
	**/
	@:native("GetContactColliderShapeMetadata")
	public function getContactColliderShapeMetadata(contactIdx:Int):Dynamic;

	/**		
		Returns the linear velocity vector at the collider's contact point.
	**/
	@:native("GetContactColliderVelocityAtPosition")
	public function getContactColliderVelocityAtPosition(contactIdx:Int):godot.Vector2;

	@:native("GetStep")
	public function getStep():Single;

	/**		
		Calls the built-in force integration code.
	**/
	@:native("IntegrateForces")
	public function integrateForces():Void;

	/**		
		Returns the current state of the space, useful for queries.
	**/
	@:native("GetSpaceState")
	public function getSpaceState():godot.Physics2DDirectSpaceState;
}
