// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This is the node that implements full 3D physics. This means that you do not control a RigidBody directly. Instead, you can apply forces to it (gravity, impulses, etc.), and the physics simulation will calculate the resulting movement, collision, bouncing, rotating, etc.

A RigidBody has 4 behavior `godot.RigidBody.mode`s: Rigid, Static, Character, and Kinematic.

Note: Don't change a RigidBody's position every frame or very often. Sporadic changes work fine, but physics runs at a different granularity (fixed Hz) than usual rendering (process callback) and maybe even in a separate thread, so changing this from a process loop may result in strange behavior. If you need to directly affect the body's state, use `godot.RigidBody._IntegrateForces`, which allows you to directly access the physics state.

If you need to override the default physics behavior, you can write a custom force integration function. See `godot.RigidBody.customIntegrator`.

With Bullet physics (the default), the center of mass is the RigidBody3D center. With GodotPhysics, the center of mass is the average of the `godot.CollisionShape` centers.
**/
@:libType
@:csNative
@:native("Godot.RigidBody")
@:autoBuild(godot.Godot.buildUserClass())
extern class RigidBody extends godot.PhysicsBody {
	/**
		`body_entered` signal.
		
		Emitted when a collision with another `PhysicsBody` or `GridMap` occurs. Requires `contactMonitor` to be set to `true` and `contactsReported` to be set high enough to detect all the collisions. `GridMap`s are detected if the `MeshLibrary` has Collision `Shape`s.
		`body` the `Node`, if it exists in the tree, of the other `PhysicsBody` or `GridMap`.
	**/
	public var onBodyEntered(get, never):Signal<(body:Node)->Void>;
	@:dox(hide) @:noCompletion inline function get_onBodyEntered():Signal<(body:Node)->Void> {
		return new Signal(this, "body_entered", Signal.SignalHandlerNodeVoid.connectSignal, Signal.SignalHandlerNodeVoid.disconnectSignal, Signal.SignalHandlerNodeVoid.isSignalConnected);
	}

	/**
		`body_exited` signal.
		
		Emitted when the collision with another `PhysicsBody` or `GridMap` ends. Requires `contactMonitor` to be set to `true` and `contactsReported` to be set high enough to detect all the collisions. `GridMap`s are detected if the `MeshLibrary` has Collision `Shape`s.
		`body` the `Node`, if it exists in the tree, of the other `PhysicsBody` or `GridMap`.
	**/
	public var onBodyExited(get, never):Signal<(body:Node)->Void>;
	@:dox(hide) @:noCompletion inline function get_onBodyExited():Signal<(body:Node)->Void> {
		return new Signal(this, "body_exited", Signal.SignalHandlerNodeVoid.connectSignal, Signal.SignalHandlerNodeVoid.disconnectSignal, Signal.SignalHandlerNodeVoid.isSignalConnected);
	}

	/**
		`body_shape_entered` signal.
		
		Emitted when one of this RigidBody's `Shape`s collides with another `PhysicsBody` or `GridMap`'s `Shape`s. Requires `contactMonitor` to be set to `true` and `contactsReported` to be set high enough to detect all the collisions. `GridMap`s are detected if the `MeshLibrary` has Collision `Shape`s.
		`body_id` the `RID` of the other `PhysicsBody` or `MeshLibrary`'s `CollisionObject` used by the `PhysicsServer`.
		`body` the `Node`, if it exists in the tree, of the other `PhysicsBody` or `GridMap`.
		`body_shape` the index of the `Shape` of the other `PhysicsBody` or `GridMap` used by the `PhysicsServer`.
		`local_shape` the index of the `Shape` of this RigidBody used by the `PhysicsServer`.
		`b`Note:`/b` Bullet physics cannot identify the shape index when using a `ConcavePolygonShape`. Don't use multiple `CollisionShape`s when using a `ConcavePolygonShape` with Bullet physics if you need shape indices.
	**/
	public var onBodyShapeEntered(get, never):Signal<(bodyId:Int, body:Node, bodyShape:Int, localShape:Int)->Void>;
	@:dox(hide) @:noCompletion inline function get_onBodyShapeEntered():Signal<(bodyId:Int, body:Node, bodyShape:Int, localShape:Int)->Void> {
		return new Signal(this, "body_shape_entered", Signal.SignalHandlerIntNodeIntIntVoid.connectSignal, Signal.SignalHandlerIntNodeIntIntVoid.disconnectSignal, Signal.SignalHandlerIntNodeIntIntVoid.isSignalConnected);
	}

	/**
		`body_shape_exited` signal.
		
		Emitted when the collision between one of this RigidBody's `Shape`s and another `PhysicsBody` or `GridMap`'s `Shape`s ends. Requires `contactMonitor` to be set to `true` and `contactsReported` to be set high enough to detect all the collisions. `GridMap`s are detected if the `MeshLibrary` has Collision `Shape`s.
		`body_id` the `RID` of the other `PhysicsBody` or `MeshLibrary`'s `CollisionObject` used by the `PhysicsServer`. `GridMap`s are detected if the Meshes have `Shape`s.
		`body` the `Node`, if it exists in the tree, of the other `PhysicsBody` or `GridMap`.
		`body_shape` the index of the `Shape` of the other `PhysicsBody` or `GridMap` used by the `PhysicsServer`.
		`local_shape` the index of the `Shape` of this RigidBody used by the `PhysicsServer`.
		`b`Note:`/b` Bullet physics cannot identify the shape index when using a `ConcavePolygonShape`. Don't use multiple `CollisionShape`s when using a `ConcavePolygonShape` with Bullet physics if you need shape indices.
	**/
	public var onBodyShapeExited(get, never):Signal<(bodyId:Int, body:Node, bodyShape:Int, localShape:Int)->Void>;
	@:dox(hide) @:noCompletion inline function get_onBodyShapeExited():Signal<(bodyId:Int, body:Node, bodyShape:Int, localShape:Int)->Void> {
		return new Signal(this, "body_shape_exited", Signal.SignalHandlerIntNodeIntIntVoid.connectSignal, Signal.SignalHandlerIntNodeIntIntVoid.disconnectSignal, Signal.SignalHandlerIntNodeIntIntVoid.isSignalConnected);
	}

	/**
		`sleeping_state_changed` signal.
		
		Emitted when the physics engine changes the body's sleeping state.
		`b`Note:`/b` Changing the value `sleeping` will not trigger this signal. It is only emitted if the sleeping state is changed by the physics engine or `emit_signal("sleeping_state_changed")` is used.
	**/
	public var onSleepingStateChanged(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onSleepingStateChanged():Signal<Void->Void> {
		return new Signal(this, "sleeping_state_changed", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**		
		Damps RigidBody's rotational forces.
		
		See  for more details about damping.
	**/
	@:native("AngularDamp")
	public var angularDamp:Single;

	/**		
		RigidBody's rotational velocity.
	**/
	@:native("AngularVelocity")
	public var angularVelocity:godot.Vector3;

	/**		
		The body's linear damp. Cannot be less than -1.0. If this value is different from -1.0, any linear damp derived from the world or areas will be overridden.
		
		See  for more details about damping.
	**/
	@:native("LinearDamp")
	public var linearDamp:Single;

	/**		
		The body's linear velocity. Can be used sporadically, but don't set this every frame, because physics may run in another thread and runs at a different granularity. Use `godot.RigidBody._IntegrateForces` as your process loop for precise control of the body state.
	**/
	@:native("LinearVelocity")
	public var linearVelocity:godot.Vector3;

	/**		
		Lock the body's rotation in the Z axis.
	**/
	@:native("AxisLockAngularZ")
	public var axisLockAngularZ:Bool;

	/**		
		Lock the body's rotation in the Y axis.
	**/
	@:native("AxisLockAngularY")
	public var axisLockAngularY:Bool;

	/**		
		Lock the body's rotation in the X axis.
	**/
	@:native("AxisLockAngularX")
	public var axisLockAngularX:Bool;

	/**		
		Lock the body's movement in the Z axis.
	**/
	@:native("AxisLockLinearZ")
	public var axisLockLinearZ:Bool;

	/**		
		Lock the body's movement in the Y axis.
	**/
	@:native("AxisLockLinearY")
	public var axisLockLinearY:Bool;

	/**		
		Lock the body's movement in the X axis.
	**/
	@:native("AxisLockLinearX")
	public var axisLockLinearX:Bool;

	/**		
		If `true`, the body can enter sleep mode when there is no movement. See `godot.RigidBody.sleeping`.
		
		Note: A RigidBody3D will never enter sleep mode automatically if its `godot.RigidBody.mode` is . It can still be put to sleep manually by setting its `godot.RigidBody.sleeping` property to `true`.
	**/
	@:native("CanSleep")
	public var canSleep:Bool;

	/**		
		If `true`, the body will not move and will not calculate forces until woken up by another body through, for example, a collision, or by using the `godot.RigidBody.applyImpulse` or `godot.RigidBody.addForce` methods.
	**/
	@:native("Sleeping")
	public var sleeping:Bool;

	/**		
		If `true`, the RigidBody will emit signals when it collides with another RigidBody. See also `godot.RigidBody.contactsReported`.
	**/
	@:native("ContactMonitor")
	public var contactMonitor:Bool;

	/**		
		The maximum number of contacts that will be recorded. Requires `godot.RigidBody.contactMonitor` to be set to `true`.
		
		Note: The number of contacts is different from the number of collisions. Collisions between parallel edges will result in two contacts (one at each end), and collisions between parallel faces will result in four contacts (one at each corner).
	**/
	@:native("ContactsReported")
	public var contactsReported:Int;

	/**		
		If `true`, continuous collision detection is used.
		
		Continuous collision detection tries to predict where a moving body will collide, instead of moving it and correcting its movement if it collided. Continuous collision detection is more precise, and misses fewer impacts by small, fast-moving objects. Not using continuous collision detection is faster to compute, but can miss small, fast-moving objects.
	**/
	@:native("ContinuousCd")
	public var continuousCd:Bool;

	/**		
		If `true`, internal force integration will be disabled (like gravity or air friction) for this body. Other than collision response, the body will only move as determined by the `godot.RigidBody._IntegrateForces` function, if defined.
	**/
	@:native("CustomIntegrator")
	public var customIntegrator:Bool;

	/**		
		This is multiplied by the global 3D gravity setting found in Project &gt; Project Settings &gt; Physics &gt; 3d to produce RigidBody's gravity. For example, a value of 1 will be normal gravity, 2 will apply double gravity, and 0.5 will apply half gravity to this object.
	**/
	@:native("GravityScale")
	public var gravityScale:Single;

	/**		
		The physics material override for the body.
		
		If a material is assigned to this property, it will be used instead of any other physics material, such as an inherited one.
	**/
	@:native("PhysicsMaterialOverride")
	public var physicsMaterialOverride:godot.PhysicsMaterial;

	/**		
		The body's bounciness. Values range from `0` (no bounce) to `1` (full bounciness).
		
		Deprecated, use `godot.PhysicsMaterial.bounce` instead via `godot.RigidBody.physicsMaterialOverride`.
	**/
	@:native("Bounce")
	public var bounce:Single;

	/**		
		The body's friction, from 0 (frictionless) to 1 (max friction).
		
		Deprecated, use `godot.PhysicsMaterial.friction` instead via `godot.RigidBody.physicsMaterialOverride`.
	**/
	@:native("Friction")
	public var friction:Single;

	/**		
		The body's weight based on its mass and the global 3D gravity. Global values are set in Project &gt; Project Settings &gt; Physics &gt; 3d.
	**/
	@:native("Weight")
	public var weight:Single;

	/**		
		The body's mass.
	**/
	@:native("Mass")
	public var mass:Single;

	/**		
		The body mode. See `godot.RigidBody_ModeEnum` for possible values.
	**/
	@:native("Mode")
	public var mode:godot.RigidBody_ModeEnum;

	@:native("new")
	public function new():Void;

	/**		
		Called during physics processing, allowing you to read and safely modify the simulation state for the object. By default, it works in addition to the usual physics behavior, but the `godot.RigidBody.customIntegrator` property allows you to disable the default behavior and do fully custom force integration for a body.
	**/
	@:native("_IntegrateForces")
	public function _IntegrateForces(state:godot.PhysicsDirectBodyState):Void;

	@:native("SetMode")
	public function setMode(mode:godot.RigidBody_ModeEnum):Void;

	@:native("GetMode")
	public function getMode():godot.RigidBody_ModeEnum;

	@:native("SetMass")
	public function setMass(mass:Single):Void;

	@:native("GetMass")
	public function getMass():Single;

	@:native("SetWeight")
	public function setWeight(weight:Single):Void;

	@:native("GetWeight")
	public function getWeight():Single;

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

	@:native("SetLinearVelocity")
	public function setLinearVelocity(linearVelocity:godot.Vector3):Void;

	@:native("GetLinearVelocity")
	public function getLinearVelocity():godot.Vector3;

	@:native("SetAngularVelocity")
	public function setAngularVelocity(angularVelocity:godot.Vector3):Void;

	@:native("GetAngularVelocity")
	public function getAngularVelocity():godot.Vector3;

	/**		
		Returns the inverse inertia tensor basis. This is used to calculate the angular acceleration resulting from a torque applied to the RigidBody.
	**/
	@:native("GetInverseInertiaTensor")
	public function getInverseInertiaTensor():godot.Basis;

	@:native("SetGravityScale")
	public function setGravityScale(gravityScale:Single):Void;

	@:native("GetGravityScale")
	public function getGravityScale():Single;

	@:native("SetLinearDamp")
	public function setLinearDamp(linearDamp:Single):Void;

	@:native("GetLinearDamp")
	public function getLinearDamp():Single;

	@:native("SetAngularDamp")
	public function setAngularDamp(angularDamp:Single):Void;

	@:native("GetAngularDamp")
	public function getAngularDamp():Single;

	@:native("SetMaxContactsReported")
	public function setMaxContactsReported(amount:Int):Void;

	@:native("GetMaxContactsReported")
	public function getMaxContactsReported():Int;

	@:native("SetUseCustomIntegrator")
	public function setUseCustomIntegrator(enable:Bool):Void;

	@:native("IsUsingCustomIntegrator")
	public function isUsingCustomIntegrator():Bool;

	@:native("SetContactMonitor")
	public function setContactMonitor(enabled:Bool):Void;

	@:native("IsContactMonitorEnabled")
	public function isContactMonitorEnabled():Bool;

	@:native("SetUseContinuousCollisionDetection")
	public function setUseContinuousCollisionDetection(enable:Bool):Void;

	@:native("IsUsingContinuousCollisionDetection")
	public function isUsingContinuousCollisionDetection():Bool;

	/**		
		Sets an axis velocity. The velocity in the given vector axis will be set as the given vector length. This is useful for jumping behavior.
	**/
	@:native("SetAxisVelocity")
	public function setAxisVelocity(axisVelocity:godot.Vector3):Void;

	/**		
		Adds a constant directional force (i.e. acceleration) without affecting rotation.
		
		This is equivalent to `add_force(force, Vector3(0,0,0))`.
	**/
	@:native("AddCentralForce")
	public function addCentralForce(force:godot.Vector3):Void;

	/**		
		Adds a constant directional force (i.e. acceleration).
		
		The position uses the rotation of the global coordinate system, but is centered at the object's origin.
	**/
	@:native("AddForce")
	public function addForce(force:godot.Vector3, position:godot.Vector3):Void;

	/**		
		Adds a constant rotational force (i.e. a motor) without affecting position.
	**/
	@:native("AddTorque")
	public function addTorque(torque:godot.Vector3):Void;

	/**		
		Applies a directional impulse without affecting rotation.
		
		This is equivalent to `apply_impulse(Vector3(0,0,0), impulse)`.
	**/
	@:native("ApplyCentralImpulse")
	public function applyCentralImpulse(impulse:godot.Vector3):Void;

	/**		
		Applies a positioned impulse to the body. An impulse is time independent! Applying an impulse every frame would result in a framerate-dependent force. For this reason it should only be used when simulating one-time impacts. The position uses the rotation of the global coordinate system, but is centered at the object's origin.
	**/
	@:native("ApplyImpulse")
	public function applyImpulse(position:godot.Vector3, impulse:godot.Vector3):Void;

	/**		
		Applies a torque impulse which will be affected by the body mass and shape. This will rotate the body around the `impulse` vector passed.
	**/
	@:native("ApplyTorqueImpulse")
	public function applyTorqueImpulse(impulse:godot.Vector3):Void;

	@:native("SetSleeping")
	public function setSleeping(sleeping:Bool):Void;

	@:native("IsSleeping")
	public function isSleeping():Bool;

	@:native("SetCanSleep")
	public function setCanSleep(ableToSleep:Bool):Void;

	@:native("IsAbleToSleep")
	public function isAbleToSleep():Bool;

	/**		
		Locks the specified linear or rotational axis.
	**/
	@:native("SetAxisLock")
	public function setAxisLock(axis:godot.PhysicsServer_BodyAxis, lock:Bool):Void;

	/**		
		Returns `true` if the specified linear or rotational axis is locked.
	**/
	@:native("GetAxisLock")
	public function getAxisLock(axis:godot.PhysicsServer_BodyAxis):Bool;

	/**		
		Returns a list of the bodies colliding with this one. Requires `godot.RigidBody.contactMonitor` to be set to `true` and `godot.RigidBody.contactsReported` to be set high enough to detect all the collisions.
		
		Note: The result of this test is not immediate after moving objects. For performance, list of collisions is updated once per frame and before the physics step. Consider using signals instead.
	**/
	@:native("GetCollidingBodies")
	public function getCollidingBodies():godot.collections.Array;
}
