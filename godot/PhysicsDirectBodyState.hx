// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Provides direct access to a physics body in the `godot.PhysicsServer`, allowing safe changes to physics properties. This object is passed via the direct state callback of rigid/character bodies, and is intended for changing the direct state of that body. See `godot.RigidBody._IntegrateForces`.
**/
@:libType
@:csNative
@:native("Godot.PhysicsDirectBodyState")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class PhysicsDirectBodyState extends godot.Object {
	/**		
		The body's transformation matrix.
	**/
	@:native("Transform")
	public var transform:godot.Transform;

	/**		
		If `true`, this body is currently sleeping (not active).
	**/
	@:native("Sleeping")
	public var sleeping:Bool;

	/**		
		The body's linear velocity in units per second.
	**/
	@:native("LinearVelocity")
	public var linearVelocity:godot.Vector3;

	/**		
		The body's rotational velocity in axis-angle format. The magnitude of the vector is the rotation rate in radians per second.
	**/
	@:native("AngularVelocity")
	public var angularVelocity:godot.Vector3;

	@:native("PrincipalInertiaAxes")
	public var principalInertiaAxes(default, never):godot.Basis;

	@:native("CenterOfMass")
	public var centerOfMass(default, never):godot.Vector3;

	/**		
		The total gravity vector being currently applied to this body.
	**/
	@:native("TotalGravity")
	public var totalGravity(default, never):godot.Vector3;

	/**		
		The inverse of the inertia of the body.
	**/
	@:native("InverseInertia")
	public var inverseInertia(default, never):godot.Vector3;

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
	public function getTotalGravity():godot.Vector3;

	@:native("GetTotalLinearDamp")
	public function getTotalLinearDamp():Single;

	@:native("GetTotalAngularDamp")
	public function getTotalAngularDamp():Single;

	@:native("GetCenterOfMass")
	public function getCenterOfMass():godot.Vector3;

	@:native("GetPrincipalInertiaAxes")
	public function getPrincipalInertiaAxes():godot.Basis;

	@:native("GetInverseMass")
	public function getInverseMass():Single;

	@:native("GetInverseInertia")
	public function getInverseInertia():godot.Vector3;

	@:native("SetLinearVelocity")
	public function setLinearVelocity(velocity:godot.Vector3):Void;

	@:native("GetLinearVelocity")
	public function getLinearVelocity():godot.Vector3;

	@:native("SetAngularVelocity")
	public function setAngularVelocity(velocity:godot.Vector3):Void;

	@:native("GetAngularVelocity")
	public function getAngularVelocity():godot.Vector3;

	@:native("SetTransform")
	public function setTransform(transform:godot.Transform):Void;

	@:native("GetTransform")
	public function getTransform():godot.Transform;

	/**		
		Returns the body's velocity at the given relative position, including both translation and rotation.
	**/
	@:native("GetVelocityAtLocalPosition")
	public function getVelocityAtLocalPosition(localPosition:godot.Vector3):godot.Vector3;

	/**		
		Adds a constant directional force without affecting rotation.
		
		This is equivalent to `add_force(force, Vector3(0,0,0))`.
	**/
	@:native("AddCentralForce")
	public function addCentralForce(force:godot.Vector3):Void;

	/**		
		Adds a positioned force to the body. Both the force and the offset from the body origin are in global coordinates.
	**/
	@:native("AddForce")
	public function addForce(force:godot.Vector3, position:godot.Vector3):Void;

	/**		
		Adds a constant rotational force without affecting position.
	**/
	@:native("AddTorque")
	public function addTorque(torque:godot.Vector3):Void;

	/**		
		Applies a single directional impulse without affecting rotation.
		
		This is equivalent to `apply_impulse(Vector3(0, 0, 0), impulse)`.
	**/
	@:native("ApplyCentralImpulse")
	public function applyCentralImpulse(j:godot.Vector3):Void;

	/**		
		Applies a positioned impulse to the body. An impulse is time-independent! Applying an impulse every frame would result in a framerate-dependent force. For this reason it should only be used when simulating one-time impacts. The position uses the rotation of the global coordinate system, but is centered at the object's origin.
	**/
	@:native("ApplyImpulse")
	public function applyImpulse(position:godot.Vector3, j:godot.Vector3):Void;

	/**		
		Apply a torque impulse (which will be affected by the body mass and shape). This will rotate the body around the vector `j` passed as parameter.
	**/
	@:native("ApplyTorqueImpulse")
	public function applyTorqueImpulse(j:godot.Vector3):Void;

	@:native("SetSleepState")
	public function setSleepState(enabled:Bool):Void;

	@:native("IsSleeping")
	public function isSleeping():Bool;

	/**		
		Returns the number of contacts this body has with other bodies.
		
		Note: By default, this returns 0 unless bodies are configured to monitor contacts. See `godot.RigidBody.contactMonitor`.
	**/
	@:native("GetContactCount")
	public function getContactCount():Int;

	/**		
		Returns the local position of the contact point.
	**/
	@:native("GetContactLocalPosition")
	public function getContactLocalPosition(contactIdx:Int):godot.Vector3;

	/**		
		Returns the local normal at the contact point.
	**/
	@:native("GetContactLocalNormal")
	public function getContactLocalNormal(contactIdx:Int):godot.Vector3;

	/**		
		Impulse created by the contact. Only implemented for Bullet physics.
	**/
	@:native("GetContactImpulse")
	public function getContactImpulse(contactIdx:Int):Single;

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
	public function getContactColliderPosition(contactIdx:Int):godot.Vector3;

	/**		
		Returns the collider's object id.
	**/
	@:native("GetContactColliderId")
	public function getContactColliderId(contactIdx:Int):cs.types.UInt64;

	/**		
		Returns the collider object.
	**/
	@:native("GetContactColliderObject")
	public function getContactColliderObject(contactIdx:Int):godot.Object;

	/**		
		Returns the collider's shape index.
	**/
	@:native("GetContactColliderShape")
	public function getContactColliderShape(contactIdx:Int):Int;

	/**		
		Returns the linear velocity vector at the collider's contact point.
	**/
	@:native("GetContactColliderVelocityAtPosition")
	public function getContactColliderVelocityAtPosition(contactIdx:Int):godot.Vector3;

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
	public function getSpaceState():godot.PhysicsDirectSpaceState;
}
