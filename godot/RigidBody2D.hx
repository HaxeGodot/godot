// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This node implements simulated 2D physics. You do not control a RigidBody2D directly. Instead, you apply forces to it (gravity, impulses, etc.) and the physics simulation calculates the resulting movement based on its mass, friction, and other physical properties.

A RigidBody2D has 4 behavior `godot.RigidBody2D.mode`s: Rigid, Static, Character, and Kinematic.

Note: You should not change a RigidBody2D's `position` or `linear_velocity` every frame or even very often. If you need to directly affect the body's state, use `godot.RigidBody2D._IntegrateForces`, which allows you to directly access the physics state.

Please also keep in mind that physics bodies manage their own transform which overwrites the ones you set. So any direct or indirect transformation (including scaling of the node or its parent) will be visible in the editor only, and immediately reset at runtime.

If you need to override the default physics behavior or add a transformation at runtime, you can write a custom force integration. See `godot.RigidBody2D.customIntegrator`.

The center of mass is always located at the node's origin without taking into account the `godot.CollisionShape2D` centroid offsets.
**/
@:libType
@:csNative
@:native("Godot.RigidBody2D")
@:autoBuild(godot.Godot.buildUserClass())
extern class RigidBody2D extends godot.PhysicsBody2D {
	/**
		`body_entered` signal.
		
		Emitted when a collision with another `PhysicsBody2D` or `TileMap` occurs. Requires `contactMonitor` to be set to `true` and `contactsReported` to be set high enough to detect all the collisions. `TileMap`s are detected if the `TileSet` has Collision `Shape2D`s.
		`body` the `Node`, if it exists in the tree, of the other `PhysicsBody2D` or `TileMap`.
	**/
	public var onBodyEntered(get, never):Signal<(body:Node)->Void>;
	@:dox(hide) inline function get_onBodyEntered():Signal<(body:Node)->Void> {
		return new Signal(this, "body_entered", Signal.SignalHandlerNodeVoid.connectSignal, Signal.SignalHandlerNodeVoid.disconnectSignal, Signal.SignalHandlerNodeVoid.isSignalConnected);
	}

	/**
		`body_exited` signal.
		
		Emitted when the collision with another `PhysicsBody2D` or `TileMap` ends. Requires `contactMonitor` to be set to `true` and `contactsReported` to be set high enough to detect all the collisions. `TileMap`s are detected if the `TileSet` has Collision `Shape2D`s.
		`body` the `Node`, if it exists in the tree, of the other `PhysicsBody2D` or `TileMap`.
	**/
	public var onBodyExited(get, never):Signal<(body:Node)->Void>;
	@:dox(hide) inline function get_onBodyExited():Signal<(body:Node)->Void> {
		return new Signal(this, "body_exited", Signal.SignalHandlerNodeVoid.connectSignal, Signal.SignalHandlerNodeVoid.disconnectSignal, Signal.SignalHandlerNodeVoid.isSignalConnected);
	}

	/**
		`body_shape_entered` signal.
		
		Emitted when one of this RigidBody2D's `Shape2D`s collides with another `PhysicsBody2D` or `TileMap`'s `Shape2D`s. Requires `contactMonitor` to be set to `true` and `contactsReported` to be set high enough to detect all the collisions. `TileMap`s are detected if the `TileSet` has Collision `Shape2D`s.
		`body_id` the `RID` of the other `PhysicsBody2D` or `TileSet`'s `CollisionObject2D` used by the `Physics2DServer`.
		`body` the `Node`, if it exists in the tree, of the other `PhysicsBody2D` or `TileMap`.
		`body_shape` the index of the `Shape2D` of the other `PhysicsBody2D` or `TileMap` used by the `Physics2DServer`.
		`local_shape` the index of the `Shape2D` of this RigidBody2D used by the `Physics2DServer`.
	**/
	public var onBodyShapeEntered(get, never):Signal<(bodyId:Int, body:Node, bodyShape:Int, localShape:Int)->Void>;
	@:dox(hide) inline function get_onBodyShapeEntered():Signal<(bodyId:Int, body:Node, bodyShape:Int, localShape:Int)->Void> {
		return new Signal(this, "body_shape_entered", Signal.SignalHandlerIntNodeIntIntVoid.connectSignal, Signal.SignalHandlerIntNodeIntIntVoid.disconnectSignal, Signal.SignalHandlerIntNodeIntIntVoid.isSignalConnected);
	}

	/**
		`body_shape_exited` signal.
		
		Emitted when the collision between one of this RigidBody2D's `Shape2D`s and another `PhysicsBody2D` or `TileMap`'s `Shape2D`s ends. Requires `contactMonitor` to be set to `true` and `contactsReported` to be set high enough to detect all the collisions. `TileMap`s are detected if the `TileSet` has Collision `Shape2D`s.
		`body_id` the `RID` of the other `PhysicsBody2D` or `TileSet`'s `CollisionObject2D` used by the `Physics2DServer`.
		`body` the `Node`, if it exists in the tree, of the other `PhysicsBody2D` or `TileMap`.
		`body_shape` the index of the `Shape2D` of the other `PhysicsBody2D` or `TileMap` used by the `Physics2DServer`.
		`local_shape` the index of the `Shape2D` of this RigidBody2D used by the `Physics2DServer`.
	**/
	public var onBodyShapeExited(get, never):Signal<(bodyId:Int, body:Node, bodyShape:Int, localShape:Int)->Void>;
	@:dox(hide) inline function get_onBodyShapeExited():Signal<(bodyId:Int, body:Node, bodyShape:Int, localShape:Int)->Void> {
		return new Signal(this, "body_shape_exited", Signal.SignalHandlerIntNodeIntIntVoid.connectSignal, Signal.SignalHandlerIntNodeIntIntVoid.disconnectSignal, Signal.SignalHandlerIntNodeIntIntVoid.isSignalConnected);
	}

	/**
		`sleeping_state_changed` signal.
		
		Emitted when the physics engine changes the body's sleeping state.
		`b`Note:`/b` Changing the value `sleeping` will not trigger this signal. It is only emitted if the sleeping state is changed by the physics engine or `emit_signal("sleeping_state_changed")` is used.
	**/
	public var onSleepingStateChanged(get, never):Signal<Void->Void>;
	@:dox(hide) inline function get_onSleepingStateChanged():Signal<Void->Void> {
		return new Signal(this, "sleeping_state_changed", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**		
		The body's total applied torque.
	**/
	@:native("AppliedTorque")
	public var appliedTorque:Single;

	/**		
		The body's total applied force.
	**/
	@:native("AppliedForce")
	public var appliedForce:godot.Vector2;

	/**		
		Damps the body's `godot.RigidBody2D.angularVelocity`. If `-1`, the body will use the Default Angular Damp defined in Project &gt; Project Settings &gt; Physics &gt; 2d.
		
		See  for more details about damping.
	**/
	@:native("AngularDamp")
	public var angularDamp:Single;

	/**		
		The body's rotational velocity.
	**/
	@:native("AngularVelocity")
	public var angularVelocity:Single;

	/**		
		Damps the body's `godot.RigidBody2D.linearVelocity`. If `-1`, the body will use the Default Linear Damp in Project &gt; Project Settings &gt; Physics &gt; 2d.
		
		See  for more details about damping.
	**/
	@:native("LinearDamp")
	public var linearDamp:Single;

	/**		
		The body's linear velocity.
	**/
	@:native("LinearVelocity")
	public var linearVelocity:godot.Vector2;

	/**		
		If `true`, the body can enter sleep mode when there is no movement. See `godot.RigidBody2D.sleeping`.
		
		Note: A RigidBody2D will never enter sleep mode automatically if its `godot.RigidBody2D.mode` is . It can still be put to sleep manually by setting its `godot.RigidBody2D.sleeping` property to `true`.
	**/
	@:native("CanSleep")
	public var canSleep:Bool;

	/**		
		If `true`, the body will not move and will not calculate forces until woken up by another body through, for example, a collision, or by using the `godot.RigidBody2D.applyImpulse` or `godot.RigidBody2D.addForce` methods.
	**/
	@:native("Sleeping")
	public var sleeping:Bool;

	/**		
		If `true`, the body will emit signals when it collides with another RigidBody2D. See also `godot.RigidBody2D.contactsReported`.
	**/
	@:native("ContactMonitor")
	public var contactMonitor:Bool;

	/**		
		The maximum number of contacts that will be recorded. Requires `godot.RigidBody2D.contactMonitor` to be set to `true`.
		
		Note: The number of contacts is different from the number of collisions. Collisions between parallel edges will result in two contacts (one at each end).
	**/
	@:native("ContactsReported")
	public var contactsReported:Int;

	/**		
		Continuous collision detection mode.
		
		Continuous collision detection tries to predict where a moving body will collide instead of moving it and correcting its movement after collision. Continuous collision detection is slower, but more precise and misses fewer collisions with small, fast-moving objects. Raycasting and shapecasting methods are available. See `godot.RigidBody2D_CCDMode` for details.
	**/
	@:native("ContinuousCd")
	public var continuousCd:godot.RigidBody2D_CCDMode;

	/**		
		If `true`, internal force integration is disabled for this body. Aside from collision response, the body will only move as determined by the `godot.RigidBody2D._IntegrateForces` function.
	**/
	@:native("CustomIntegrator")
	public var customIntegrator:Bool;

	/**		
		Multiplies the gravity applied to the body. The body's gravity is calculated from the Default Gravity value in Project &gt; Project Settings &gt; Physics &gt; 2d and/or any additional gravity vector applied by `godot.Area2D`s.
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
		
		Deprecated, use `godot.PhysicsMaterial.bounce` instead via `godot.RigidBody2D.physicsMaterialOverride`.
	**/
	@:native("Bounce")
	public var bounce:Single;

	/**		
		The body's friction. Values range from `0` (frictionless) to `1` (maximum friction).
		
		Deprecated, use `godot.PhysicsMaterial.friction` instead via `godot.RigidBody2D.physicsMaterialOverride`.
	**/
	@:native("Friction")
	public var friction:Single;

	/**		
		The body's weight based on its mass and the Default Gravity value in Project &gt; Project Settings &gt; Physics &gt; 2d.
	**/
	@:native("Weight")
	public var weight:Single;

	/**		
		The body's moment of inertia. This is like mass, but for rotation: it determines how much torque it takes to rotate the body. The moment of inertia is usually computed automatically from the mass and the shapes, but this function allows you to set a custom value. Set 0 inertia to return to automatically computing it.
	**/
	@:native("Inertia")
	public var inertia:Single;

	/**		
		The body's mass.
	**/
	@:native("Mass")
	public var mass:Single;

	/**		
		The body's mode. See `godot.RigidBody2D_ModeEnum` for possible values.
	**/
	@:native("Mode")
	public var mode:godot.RigidBody2D_ModeEnum;

	@:native("new")
	public function new():Void;

	/**		
		Allows you to read and safely modify the simulation state for the object. Use this instead of `godot.Node._PhysicsProcess` if you need to directly change the body's `position` or other physics properties. By default, it works in addition to the usual physics behavior, but `godot.RigidBody2D.customIntegrator` allows you to disable the default behavior and write custom force integration for a body.
	**/
	@:native("_IntegrateForces")
	public function _IntegrateForces(state:godot.Physics2DDirectBodyState):Void;

	@:native("SetMode")
	public function setMode(mode:godot.RigidBody2D_ModeEnum):Void;

	@:native("GetMode")
	public function getMode():godot.RigidBody2D_ModeEnum;

	@:native("SetMass")
	public function setMass(mass:Single):Void;

	@:native("GetMass")
	public function getMass():Single;

	@:native("GetInertia")
	public function getInertia():Single;

	@:native("SetInertia")
	public function setInertia(inertia:Single):Void;

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

	@:native("SetLinearVelocity")
	public function setLinearVelocity(linearVelocity:godot.Vector2):Void;

	@:native("GetLinearVelocity")
	public function getLinearVelocity():godot.Vector2;

	@:native("SetAngularVelocity")
	public function setAngularVelocity(angularVelocity:Single):Void;

	@:native("GetAngularVelocity")
	public function getAngularVelocity():Single;

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

	@:native("SetContinuousCollisionDetectionMode")
	public function setContinuousCollisionDetectionMode(mode:godot.RigidBody2D_CCDMode):Void;

	@:native("GetContinuousCollisionDetectionMode")
	public function getContinuousCollisionDetectionMode():godot.RigidBody2D_CCDMode;

	/**		
		Sets the body's velocity on the given axis. The velocity in the given vector axis will be set as the given vector length. This is useful for jumping behavior.
	**/
	@:native("SetAxisVelocity")
	public function setAxisVelocity(axisVelocity:godot.Vector2):Void;

	/**		
		Applies a directional impulse without affecting rotation.
	**/
	@:native("ApplyCentralImpulse")
	public function applyCentralImpulse(impulse:godot.Vector2):Void;

	/**		
		Applies a positioned impulse to the body. An impulse is time-independent! Applying an impulse every frame would result in a framerate-dependent force. For this reason it should only be used when simulating one-time impacts (use the "_force" functions otherwise). The position uses the rotation of the global coordinate system, but is centered at the object's origin.
	**/
	@:native("ApplyImpulse")
	public function applyImpulse(offset:godot.Vector2, impulse:godot.Vector2):Void;

	/**		
		Applies a rotational impulse to the body.
	**/
	@:native("ApplyTorqueImpulse")
	public function applyTorqueImpulse(torque:Single):Void;

	@:native("SetAppliedForce")
	public function setAppliedForce(force:godot.Vector2):Void;

	@:native("GetAppliedForce")
	public function getAppliedForce():godot.Vector2;

	@:native("SetAppliedTorque")
	public function setAppliedTorque(torque:Single):Void;

	@:native("GetAppliedTorque")
	public function getAppliedTorque():Single;

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

	@:native("SetSleeping")
	public function setSleeping(sleeping:Bool):Void;

	@:native("IsSleeping")
	public function isSleeping():Bool;

	@:native("SetCanSleep")
	public function setCanSleep(ableToSleep:Bool):Void;

	@:native("IsAbleToSleep")
	public function isAbleToSleep():Bool;

	#if doc_gen
	/**		
		Returns `true` if a collision would result from moving in the given vector. `margin` increases the size of the shapes involved in the collision detection, and `result` is an object of type `godot.Physics2DTestMotionResult`, which contains additional information about the collision (should there be one).
	**/
	@:native("TestMotion")
	public function testMotion(motion:godot.Vector2, ?infiniteInertia:Bool, ?margin:Single, ?result:godot.Physics2DTestMotionResult):Bool;
	#else
	/**		
		Returns `true` if a collision would result from moving in the given vector. `margin` increases the size of the shapes involved in the collision detection, and `result` is an object of type `godot.Physics2DTestMotionResult`, which contains additional information about the collision (should there be one).
	**/
	@:native("TestMotion")
	public overload function testMotion(motion:godot.Vector2):Bool;

	/**		
		Returns `true` if a collision would result from moving in the given vector. `margin` increases the size of the shapes involved in the collision detection, and `result` is an object of type `godot.Physics2DTestMotionResult`, which contains additional information about the collision (should there be one).
	**/
	@:native("TestMotion")
	public overload function testMotion(motion:godot.Vector2, infiniteInertia:Bool):Bool;

	/**		
		Returns `true` if a collision would result from moving in the given vector. `margin` increases the size of the shapes involved in the collision detection, and `result` is an object of type `godot.Physics2DTestMotionResult`, which contains additional information about the collision (should there be one).
	**/
	@:native("TestMotion")
	public overload function testMotion(motion:godot.Vector2, infiniteInertia:Bool, margin:Single):Bool;

	/**		
		Returns `true` if a collision would result from moving in the given vector. `margin` increases the size of the shapes involved in the collision detection, and `result` is an object of type `godot.Physics2DTestMotionResult`, which contains additional information about the collision (should there be one).
	**/
	@:native("TestMotion")
	public overload function testMotion(motion:godot.Vector2, infiniteInertia:Bool, margin:Single, result:godot.Physics2DTestMotionResult):Bool;
	#end

	/**		
		Returns a list of the bodies colliding with this one. Requires `godot.RigidBody2D.contactMonitor` to be set to `true` and `godot.RigidBody2D.contactsReported` to be set high enough to detect all the collisions.
		
		Note: The result of this test is not immediate after moving objects. For performance, list of collisions is updated once per frame and before the physics step. Consider using signals instead.
	**/
	@:native("GetCollidingBodies")
	public function getCollidingBodies():godot.collections.Array;
}
