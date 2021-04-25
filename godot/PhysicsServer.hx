// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
PhysicsServer is the server responsible for all 3D physics. It can create many kinds of physics objects, but does not insert them on the node tree.
**/
@:libType
@:csNative
@:native("Godot.PhysicsServer")
@:autoBuild(godot.Godot.buildUserClass())
extern class PhysicsServer {
	@:native("Singleton")
	public static var SINGLETON(default, never):godot.Object;

	/**		
		Creates a shape of a type from `godot.PhysicsServer_ShapeType`. Does not assign it to a body or an area. To do so, you must use `godot.PhysicsServer.areaSetShape` or `godot.PhysicsServer.bodySetShape`.
	**/
	@:native("ShapeCreate")
	public static function shapeCreate(type:godot.PhysicsServer_ShapeType):godot.RID;

	/**		
		Sets the shape data that defines its shape and size. The data to be passed depends on the kind of shape created `godot.PhysicsServer.shapeGetType`.
	**/
	@:native("ShapeSetData")
	public static function shapeSetData(shape:godot.RID, data:Dynamic):Void;

	/**		
		Returns the type of shape (see `godot.PhysicsServer_ShapeType` constants).
	**/
	@:native("ShapeGetType")
	public static function shapeGetType(shape:godot.RID):godot.PhysicsServer_ShapeType;

	/**		
		Returns the shape data.
	**/
	@:native("ShapeGetData")
	public static function shapeGetData(shape:godot.RID):Dynamic;

	/**		
		Creates a space. A space is a collection of parameters for the physics engine that can be assigned to an area or a body. It can be assigned to an area with `godot.PhysicsServer.areaSetSpace`, or to a body with `godot.PhysicsServer.bodySetSpace`.
	**/
	@:native("SpaceCreate")
	public static function spaceCreate():godot.RID;

	/**		
		Marks a space as active. It will not have an effect, unless it is assigned to an area or body.
	**/
	@:native("SpaceSetActive")
	public static function spaceSetActive(space:godot.RID, active:Bool):Void;

	/**		
		Returns whether the space is active.
	**/
	@:native("SpaceIsActive")
	public static function spaceIsActive(space:godot.RID):Bool;

	/**		
		Sets the value for a space parameter. A list of available parameters is on the `godot.PhysicsServer_SpaceParameter` constants.
	**/
	@:native("SpaceSetParam")
	public static function spaceSetParam(space:godot.RID, param:godot.PhysicsServer_SpaceParameter, value:Single):Void;

	/**		
		Returns the value of a space parameter.
	**/
	@:native("SpaceGetParam")
	public static function spaceGetParam(space:godot.RID, param:godot.PhysicsServer_SpaceParameter):Single;

	/**		
		Returns the state of a space, a `godot.PhysicsDirectSpaceState`. This object can be used to make collision/intersection queries.
	**/
	@:native("SpaceGetDirectState")
	public static function spaceGetDirectState(space:godot.RID):godot.PhysicsDirectSpaceState;

	/**		
		Creates an `godot.Area`.
	**/
	@:native("AreaCreate")
	public static function areaCreate():godot.RID;

	/**		
		Assigns a space to the area.
	**/
	@:native("AreaSetSpace")
	public static function areaSetSpace(area:godot.RID, space:godot.RID):Void;

	/**		
		Returns the space assigned to the area.
	**/
	@:native("AreaGetSpace")
	public static function areaGetSpace(area:godot.RID):godot.RID;

	/**		
		Sets the space override mode for the area. The modes are described in the `godot.PhysicsServer_AreaSpaceOverrideMode` constants.
	**/
	@:native("AreaSetSpaceOverrideMode")
	public static function areaSetSpaceOverrideMode(area:godot.RID, mode:godot.PhysicsServer_AreaSpaceOverrideMode):Void;

	/**		
		Returns the space override mode for the area.
	**/
	@:native("AreaGetSpaceOverrideMode")
	public static function areaGetSpaceOverrideMode(area:godot.RID):godot.PhysicsServer_AreaSpaceOverrideMode;

	#if doc_gen
	/**		
		Adds a shape to the area, along with a transform matrix. Shapes are usually referenced by their index, so you should track which shape has a given index.
		
		@param transform If the parameter is null, then the default value is new Transform()
	**/
	@:native("AreaAddShape")
	public static function areaAddShape(area:godot.RID, shape:godot.RID, ?transform:Null<godot.Transform>, ?disabled:Bool):Void;
	#else
	/**		
		Adds a shape to the area, along with a transform matrix. Shapes are usually referenced by their index, so you should track which shape has a given index.
		
		@param transform If the parameter is null, then the default value is new Transform()
	**/
	@:native("AreaAddShape")
	public static overload function areaAddShape(area:godot.RID, shape:godot.RID):Void;

	/**		
		Adds a shape to the area, along with a transform matrix. Shapes are usually referenced by their index, so you should track which shape has a given index.
		
		@param transform If the parameter is null, then the default value is new Transform()
	**/
	@:native("AreaAddShape")
	public static overload function areaAddShape(area:godot.RID, shape:godot.RID, transform:Nullable1<godot.Transform>):Void;

	/**		
		Adds a shape to the area, along with a transform matrix. Shapes are usually referenced by their index, so you should track which shape has a given index.
		
		@param transform If the parameter is null, then the default value is new Transform()
	**/
	@:native("AreaAddShape")
	public static overload function areaAddShape(area:godot.RID, shape:godot.RID, transform:Nullable1<godot.Transform>, disabled:Bool):Void;
	#end

	/**		
		Substitutes a given area shape by another. The old shape is selected by its index, the new one by its `godot.RID`.
	**/
	@:native("AreaSetShape")
	public static function areaSetShape(area:godot.RID, shapeIdx:Int, shape:godot.RID):Void;

	/**		
		Sets the transform matrix for an area shape.
	**/
	@:native("AreaSetShapeTransform")
	public static function areaSetShapeTransform(area:godot.RID, shapeIdx:Int, transform:godot.Transform):Void;

	@:native("AreaSetShapeDisabled")
	public static function areaSetShapeDisabled(area:godot.RID, shapeIdx:Int, disabled:Bool):Void;

	/**		
		Returns the number of shapes assigned to an area.
	**/
	@:native("AreaGetShapeCount")
	public static function areaGetShapeCount(area:godot.RID):Int;

	/**		
		Returns the `godot.RID` of the nth shape of an area.
	**/
	@:native("AreaGetShape")
	public static function areaGetShape(area:godot.RID, shapeIdx:Int):godot.RID;

	/**		
		Returns the transform matrix of a shape within an area.
	**/
	@:native("AreaGetShapeTransform")
	public static function areaGetShapeTransform(area:godot.RID, shapeIdx:Int):godot.Transform;

	/**		
		Removes a shape from an area. It does not delete the shape, so it can be reassigned later.
	**/
	@:native("AreaRemoveShape")
	public static function areaRemoveShape(area:godot.RID, shapeIdx:Int):Void;

	/**		
		Removes all shapes from an area. It does not delete the shapes, so they can be reassigned later.
	**/
	@:native("AreaClearShapes")
	public static function areaClearShapes(area:godot.RID):Void;

	/**		
		Assigns the area to one or many physics layers.
	**/
	@:native("AreaSetCollisionLayer")
	public static function areaSetCollisionLayer(area:godot.RID, layer:UInt):Void;

	/**		
		Sets which physics layers the area will monitor.
	**/
	@:native("AreaSetCollisionMask")
	public static function areaSetCollisionMask(area:godot.RID, mask:UInt):Void;

	/**		
		Sets the value for an area parameter. A list of available parameters is on the `godot.PhysicsServer_AreaParameter` constants.
	**/
	@:native("AreaSetParam")
	public static function areaSetParam(area:godot.RID, param:godot.PhysicsServer_AreaParameter, value:Dynamic):Void;

	/**		
		Sets the transform matrix for an area.
	**/
	@:native("AreaSetTransform")
	public static function areaSetTransform(area:godot.RID, transform:godot.Transform):Void;

	/**		
		Returns an area parameter value. A list of available parameters is on the `godot.PhysicsServer_AreaParameter` constants.
	**/
	@:native("AreaGetParam")
	public static function areaGetParam(area:godot.RID, param:godot.PhysicsServer_AreaParameter):Dynamic;

	/**		
		Returns the transform matrix for an area.
	**/
	@:native("AreaGetTransform")
	public static function areaGetTransform(area:godot.RID):godot.Transform;

	/**		
		Assigns the area to a descendant of `godot.Object`, so it can exist in the node tree.
	**/
	@:native("AreaAttachObjectInstanceId")
	public static function areaAttachObjectInstanceId(area:godot.RID, id:cs.types.UInt64):Void;

	/**		
		Gets the instance ID of the object the area is assigned to.
	**/
	@:native("AreaGetObjectInstanceId")
	public static function areaGetObjectInstanceId(area:godot.RID):cs.types.UInt64;

	/**		
		Sets the function to call when any body/area enters or exits the area. This callback will be called for any object interacting with the area, and takes five parameters:
		
		1:  or , depending on whether the object entered or exited the area.
		
		2: `godot.RID` of the object that entered/exited the area.
		
		3: Instance ID of the object that entered/exited the area.
		
		4: The shape index of the object that entered/exited the area.
		
		5: The shape index of the area where the object entered/exited.
	**/
	@:native("AreaSetMonitorCallback")
	public static function areaSetMonitorCallback(area:godot.RID, receiver:godot.Object, method:std.String):Void;

	@:native("AreaSetAreaMonitorCallback")
	public static function areaSetAreaMonitorCallback(area:godot.RID, receiver:godot.Object, method:std.String):Void;

	@:native("AreaSetMonitorable")
	public static function areaSetMonitorable(area:godot.RID, monitorable:Bool):Void;

	/**		
		Sets object pickable with rays.
	**/
	@:native("AreaSetRayPickable")
	public static function areaSetRayPickable(area:godot.RID, enable:Bool):Void;

	/**		
		If `true`, area collides with rays.
	**/
	@:native("AreaIsRayPickable")
	public static function areaIsRayPickable(area:godot.RID):Bool;

	#if doc_gen
	/**		
		Creates a physics body. The first parameter can be any value from `godot.PhysicsServer_BodyMode` constants, for the type of body created. Additionally, the body can be created in sleeping state to save processing time.
	**/
	@:native("BodyCreate")
	public static function bodyCreate(?mode:godot.PhysicsServer_BodyMode, ?initSleeping:Bool):godot.RID;
	#else
	/**		
		Creates a physics body. The first parameter can be any value from `godot.PhysicsServer_BodyMode` constants, for the type of body created. Additionally, the body can be created in sleeping state to save processing time.
	**/
	@:native("BodyCreate")
	public static overload function bodyCreate():godot.RID;

	/**		
		Creates a physics body. The first parameter can be any value from `godot.PhysicsServer_BodyMode` constants, for the type of body created. Additionally, the body can be created in sleeping state to save processing time.
	**/
	@:native("BodyCreate")
	public static overload function bodyCreate(mode:godot.PhysicsServer_BodyMode):godot.RID;

	/**		
		Creates a physics body. The first parameter can be any value from `godot.PhysicsServer_BodyMode` constants, for the type of body created. Additionally, the body can be created in sleeping state to save processing time.
	**/
	@:native("BodyCreate")
	public static overload function bodyCreate(mode:godot.PhysicsServer_BodyMode, initSleeping:Bool):godot.RID;
	#end

	/**		
		Assigns a space to the body (see `godot.PhysicsServer.spaceCreate`).
	**/
	@:native("BodySetSpace")
	public static function bodySetSpace(body:godot.RID, space:godot.RID):Void;

	/**		
		Returns the `godot.RID` of the space assigned to a body.
	**/
	@:native("BodyGetSpace")
	public static function bodyGetSpace(body:godot.RID):godot.RID;

	/**		
		Sets the body mode, from one of the `godot.PhysicsServer_BodyMode` constants.
	**/
	@:native("BodySetMode")
	public static function bodySetMode(body:godot.RID, mode:godot.PhysicsServer_BodyMode):Void;

	/**		
		Returns the body mode.
	**/
	@:native("BodyGetMode")
	public static function bodyGetMode(body:godot.RID):godot.PhysicsServer_BodyMode;

	/**		
		Sets the physics layer or layers a body belongs to.
	**/
	@:native("BodySetCollisionLayer")
	public static function bodySetCollisionLayer(body:godot.RID, layer:UInt):Void;

	/**		
		Returns the physics layer or layers a body belongs to.
	**/
	@:native("BodyGetCollisionLayer")
	public static function bodyGetCollisionLayer(body:godot.RID):UInt;

	/**		
		Sets the physics layer or layers a body can collide with.
	**/
	@:native("BodySetCollisionMask")
	public static function bodySetCollisionMask(body:godot.RID, mask:UInt):Void;

	/**		
		Returns the physics layer or layers a body can collide with.
		
		-
	**/
	@:native("BodyGetCollisionMask")
	public static function bodyGetCollisionMask(body:godot.RID):UInt;

	#if doc_gen
	/**		
		Adds a shape to the body, along with a transform matrix. Shapes are usually referenced by their index, so you should track which shape has a given index.
		
		@param transform If the parameter is null, then the default value is new Transform()
	**/
	@:native("BodyAddShape")
	public static function bodyAddShape(body:godot.RID, shape:godot.RID, ?transform:Null<godot.Transform>, ?disabled:Bool):Void;
	#else
	/**		
		Adds a shape to the body, along with a transform matrix. Shapes are usually referenced by their index, so you should track which shape has a given index.
		
		@param transform If the parameter is null, then the default value is new Transform()
	**/
	@:native("BodyAddShape")
	public static overload function bodyAddShape(body:godot.RID, shape:godot.RID):Void;

	/**		
		Adds a shape to the body, along with a transform matrix. Shapes are usually referenced by their index, so you should track which shape has a given index.
		
		@param transform If the parameter is null, then the default value is new Transform()
	**/
	@:native("BodyAddShape")
	public static overload function bodyAddShape(body:godot.RID, shape:godot.RID, transform:Nullable1<godot.Transform>):Void;

	/**		
		Adds a shape to the body, along with a transform matrix. Shapes are usually referenced by their index, so you should track which shape has a given index.
		
		@param transform If the parameter is null, then the default value is new Transform()
	**/
	@:native("BodyAddShape")
	public static overload function bodyAddShape(body:godot.RID, shape:godot.RID, transform:Nullable1<godot.Transform>, disabled:Bool):Void;
	#end

	/**		
		Substitutes a given body shape by another. The old shape is selected by its index, the new one by its `godot.RID`.
	**/
	@:native("BodySetShape")
	public static function bodySetShape(body:godot.RID, shapeIdx:Int, shape:godot.RID):Void;

	/**		
		Sets the transform matrix for a body shape.
	**/
	@:native("BodySetShapeTransform")
	public static function bodySetShapeTransform(body:godot.RID, shapeIdx:Int, transform:godot.Transform):Void;

	@:native("BodySetShapeDisabled")
	public static function bodySetShapeDisabled(body:godot.RID, shapeIdx:Int, disabled:Bool):Void;

	/**		
		Returns the number of shapes assigned to a body.
	**/
	@:native("BodyGetShapeCount")
	public static function bodyGetShapeCount(body:godot.RID):Int;

	/**		
		Returns the `godot.RID` of the nth shape of a body.
	**/
	@:native("BodyGetShape")
	public static function bodyGetShape(body:godot.RID, shapeIdx:Int):godot.RID;

	/**		
		Returns the transform matrix of a body shape.
	**/
	@:native("BodyGetShapeTransform")
	public static function bodyGetShapeTransform(body:godot.RID, shapeIdx:Int):godot.Transform;

	/**		
		Removes a shape from a body. The shape is not deleted, so it can be reused afterwards.
	**/
	@:native("BodyRemoveShape")
	public static function bodyRemoveShape(body:godot.RID, shapeIdx:Int):Void;

	/**		
		Removes all shapes from a body.
	**/
	@:native("BodyClearShapes")
	public static function bodyClearShapes(body:godot.RID):Void;

	/**		
		Assigns the area to a descendant of `godot.Object`, so it can exist in the node tree.
	**/
	@:native("BodyAttachObjectInstanceId")
	public static function bodyAttachObjectInstanceId(body:godot.RID, id:UInt):Void;

	/**		
		Gets the instance ID of the object the area is assigned to.
	**/
	@:native("BodyGetObjectInstanceId")
	public static function bodyGetObjectInstanceId(body:godot.RID):UInt;

	/**		
		If `true`, the continuous collision detection mode is enabled.
		
		Continuous collision detection tries to predict where a moving body will collide, instead of moving it and correcting its movement if it collided.
	**/
	@:native("BodySetEnableContinuousCollisionDetection")
	public static function bodySetEnableContinuousCollisionDetection(body:godot.RID, enable:Bool):Void;

	/**		
		If `true`, the continuous collision detection mode is enabled.
	**/
	@:native("BodyIsContinuousCollisionDetectionEnabled")
	public static function bodyIsContinuousCollisionDetectionEnabled(body:godot.RID):Bool;

	/**		
		Sets a body parameter. A list of available parameters is on the `godot.PhysicsServer_BodyParameter` constants.
	**/
	@:native("BodySetParam")
	public static function bodySetParam(body:godot.RID, param:godot.PhysicsServer_BodyParameter, value:Single):Void;

	/**		
		Returns the value of a body parameter. A list of available parameters is on the `godot.PhysicsServer_BodyParameter` constants.
	**/
	@:native("BodyGetParam")
	public static function bodyGetParam(body:godot.RID, param:godot.PhysicsServer_BodyParameter):Single;

	@:native("BodySetKinematicSafeMargin")
	public static function bodySetKinematicSafeMargin(body:godot.RID, margin:Single):Void;

	@:native("BodyGetKinematicSafeMargin")
	public static function bodyGetKinematicSafeMargin(body:godot.RID):Single;

	/**		
		Sets a body state (see `godot.PhysicsServer_BodyState` constants).
	**/
	@:native("BodySetState")
	public static function bodySetState(body:godot.RID, state:godot.PhysicsServer_BodyState, value:Dynamic):Void;

	/**		
		Returns a body state.
	**/
	@:native("BodyGetState")
	public static function bodyGetState(body:godot.RID, state:godot.PhysicsServer_BodyState):Dynamic;

	@:native("BodyAddCentralForce")
	public static function bodyAddCentralForce(body:godot.RID, force:godot.Vector3):Void;

	@:native("BodyAddForce")
	public static function bodyAddForce(body:godot.RID, force:godot.Vector3, position:godot.Vector3):Void;

	@:native("BodyAddTorque")
	public static function bodyAddTorque(body:godot.RID, torque:godot.Vector3):Void;

	@:native("BodyApplyCentralImpulse")
	public static function bodyApplyCentralImpulse(body:godot.RID, impulse:godot.Vector3):Void;

	/**		
		Gives the body a push at a `position` in the direction of the `impulse`.
	**/
	@:native("BodyApplyImpulse")
	public static function bodyApplyImpulse(body:godot.RID, position:godot.Vector3, impulse:godot.Vector3):Void;

	/**		
		Gives the body a push to rotate it.
	**/
	@:native("BodyApplyTorqueImpulse")
	public static function bodyApplyTorqueImpulse(body:godot.RID, impulse:godot.Vector3):Void;

	/**		
		Sets an axis velocity. The velocity in the given vector axis will be set as the given vector length. This is useful for jumping behavior.
	**/
	@:native("BodySetAxisVelocity")
	public static function bodySetAxisVelocity(body:godot.RID, axisVelocity:godot.Vector3):Void;

	@:native("BodySetAxisLock")
	public static function bodySetAxisLock(body:godot.RID, axis:godot.PhysicsServer_BodyAxis, lock:Bool):Void;

	@:native("BodyIsAxisLocked")
	public static function bodyIsAxisLocked(body:godot.RID, axis:godot.PhysicsServer_BodyAxis):Bool;

	/**		
		Adds a body to the list of bodies exempt from collisions.
	**/
	@:native("BodyAddCollisionException")
	public static function bodyAddCollisionException(body:godot.RID, exceptedBody:godot.RID):Void;

	/**		
		Removes a body from the list of bodies exempt from collisions.
		
		Continuous collision detection tries to predict where a moving body will collide, instead of moving it and correcting its movement if it collided.
	**/
	@:native("BodyRemoveCollisionException")
	public static function bodyRemoveCollisionException(body:godot.RID, exceptedBody:godot.RID):Void;

	/**		
		Sets the maximum contacts to report. Bodies can keep a log of the contacts with other bodies, this is enabled by setting the maximum amount of contacts reported to a number greater than 0.
	**/
	@:native("BodySetMaxContactsReported")
	public static function bodySetMaxContactsReported(body:godot.RID, amount:Int):Void;

	/**		
		Returns the maximum contacts that can be reported. See `godot.PhysicsServer.bodySetMaxContactsReported`.
	**/
	@:native("BodyGetMaxContactsReported")
	public static function bodyGetMaxContactsReported(body:godot.RID):Int;

	/**		
		Sets whether a body uses a callback function to calculate its own physics (see `godot.PhysicsServer.bodySetForceIntegrationCallback`).
	**/
	@:native("BodySetOmitForceIntegration")
	public static function bodySetOmitForceIntegration(body:godot.RID, enable:Bool):Void;

	/**		
		Returns whether a body uses a callback function to calculate its own physics (see `godot.PhysicsServer.bodySetForceIntegrationCallback`).
	**/
	@:native("BodyIsOmittingForceIntegration")
	public static function bodyIsOmittingForceIntegration(body:godot.RID):Bool;

	#if doc_gen
	/**		
		Sets the function used to calculate physics for an object, if that object allows it (see `godot.PhysicsServer.bodySetOmitForceIntegration`).
	**/
	@:native("BodySetForceIntegrationCallback")
	public static function bodySetForceIntegrationCallback(body:godot.RID, receiver:godot.Object, method:std.String, ?userdata:Dynamic):Void;
	#else
	/**		
		Sets the function used to calculate physics for an object, if that object allows it (see `godot.PhysicsServer.bodySetOmitForceIntegration`).
	**/
	@:native("BodySetForceIntegrationCallback")
	public static overload function bodySetForceIntegrationCallback(body:godot.RID, receiver:godot.Object, method:std.String):Void;

	/**		
		Sets the function used to calculate physics for an object, if that object allows it (see `godot.PhysicsServer.bodySetOmitForceIntegration`).
	**/
	@:native("BodySetForceIntegrationCallback")
	public static overload function bodySetForceIntegrationCallback(body:godot.RID, receiver:godot.Object, method:std.String, userdata:Dynamic):Void;
	#end

	/**		
		Sets the body pickable with rays if `enabled` is set.
	**/
	@:native("BodySetRayPickable")
	public static function bodySetRayPickable(body:godot.RID, enable:Bool):Void;

	/**		
		If `true`, the body can be detected by rays.
	**/
	@:native("BodyIsRayPickable")
	public static function bodyIsRayPickable(body:godot.RID):Bool;

	/**		
		Returns the `godot.PhysicsDirectBodyState` of the body.
	**/
	@:native("BodyGetDirectState")
	public static function bodyGetDirectState(body:godot.RID):godot.PhysicsDirectBodyState;

	/**		
		Creates a `godot.PinJoint`.
	**/
	@:native("JointCreatePin")
	public static function jointCreatePin(bodyA:godot.RID, localA:godot.Vector3, bodyB:godot.RID, localB:godot.Vector3):godot.RID;

	/**		
		Sets a pin_joint parameter (see `godot.PhysicsServer_PinJointParam` constants).
	**/
	@:native("PinJointSetParam")
	public static function pinJointSetParam(joint:godot.RID, param:godot.PhysicsServer_PinJointParam, value:Single):Void;

	/**		
		Gets a pin_joint parameter (see `godot.PhysicsServer_PinJointParam` constants).
	**/
	@:native("PinJointGetParam")
	public static function pinJointGetParam(joint:godot.RID, param:godot.PhysicsServer_PinJointParam):Single;

	/**		
		Sets position of the joint in the local space of body a of the joint.
	**/
	@:native("PinJointSetLocalA")
	public static function pinJointSetLocalA(joint:godot.RID, localA:godot.Vector3):Void;

	/**		
		Returns position of the joint in the local space of body a of the joint.
	**/
	@:native("PinJointGetLocalA")
	public static function pinJointGetLocalA(joint:godot.RID):godot.Vector3;

	/**		
		Sets position of the joint in the local space of body b of the joint.
	**/
	@:native("PinJointSetLocalB")
	public static function pinJointSetLocalB(joint:godot.RID, localB:godot.Vector3):Void;

	/**		
		Returns position of the joint in the local space of body b of the joint.
	**/
	@:native("PinJointGetLocalB")
	public static function pinJointGetLocalB(joint:godot.RID):godot.Vector3;

	/**		
		Creates a `godot.HingeJoint`.
	**/
	@:native("JointCreateHinge")
	public static function jointCreateHinge(bodyA:godot.RID, hingeA:godot.Transform, bodyB:godot.RID, hingeB:godot.Transform):godot.RID;

	/**		
		Sets a hinge_joint parameter (see `godot.PhysicsServer_HingeJointParam` constants).
	**/
	@:native("HingeJointSetParam")
	public static function hingeJointSetParam(joint:godot.RID, param:godot.PhysicsServer_HingeJointParam, value:Single):Void;

	/**		
		Gets a hinge_joint parameter (see `godot.PhysicsServer_HingeJointParam`).
	**/
	@:native("HingeJointGetParam")
	public static function hingeJointGetParam(joint:godot.RID, param:godot.PhysicsServer_HingeJointParam):Single;

	/**		
		Sets a hinge_joint flag (see `godot.PhysicsServer_HingeJointFlag` constants).
	**/
	@:native("HingeJointSetFlag")
	public static function hingeJointSetFlag(joint:godot.RID, flag:godot.PhysicsServer_HingeJointFlag, enabled:Bool):Void;

	/**		
		Gets a hinge_joint flag (see `godot.PhysicsServer_HingeJointFlag` constants).
	**/
	@:native("HingeJointGetFlag")
	public static function hingeJointGetFlag(joint:godot.RID, flag:godot.PhysicsServer_HingeJointFlag):Bool;

	/**		
		Creates a `godot.SliderJoint`.
	**/
	@:native("JointCreateSlider")
	public static function jointCreateSlider(bodyA:godot.RID, localRefA:godot.Transform, bodyB:godot.RID, localRefB:godot.Transform):godot.RID;

	/**		
		Gets a slider_joint parameter (see `godot.PhysicsServer_SliderJointParam` constants).
	**/
	@:native("SliderJointSetParam")
	public static function sliderJointSetParam(joint:godot.RID, param:godot.PhysicsServer_SliderJointParam, value:Single):Void;

	/**		
		Gets a slider_joint parameter (see `godot.PhysicsServer_SliderJointParam` constants).
	**/
	@:native("SliderJointGetParam")
	public static function sliderJointGetParam(joint:godot.RID, param:godot.PhysicsServer_SliderJointParam):Single;

	/**		
		Creates a `godot.ConeTwistJoint`.
	**/
	@:native("JointCreateConeTwist")
	public static function jointCreateConeTwist(bodyA:godot.RID, localRefA:godot.Transform, bodyB:godot.RID, localRefB:godot.Transform):godot.RID;

	/**		
		Sets a cone_twist_joint parameter (see `godot.PhysicsServer_ConeTwistJointParam` constants).
	**/
	@:native("ConeTwistJointSetParam")
	public static function coneTwistJointSetParam(joint:godot.RID, param:godot.PhysicsServer_ConeTwistJointParam, value:Single):Void;

	/**		
		Gets a cone_twist_joint parameter (see `godot.PhysicsServer_ConeTwistJointParam` constants).
	**/
	@:native("ConeTwistJointGetParam")
	public static function coneTwistJointGetParam(joint:godot.RID, param:godot.PhysicsServer_ConeTwistJointParam):Single;

	/**		
		Returns the type of the Joint.
	**/
	@:native("JointGetType")
	public static function jointGetType(joint:godot.RID):godot.PhysicsServer_JointType;

	/**		
		Sets the priority value of the Joint.
	**/
	@:native("JointSetSolverPriority")
	public static function jointSetSolverPriority(joint:godot.RID, priority:Int):Void;

	/**		
		Gets the priority value of the Joint.
	**/
	@:native("JointGetSolverPriority")
	public static function jointGetSolverPriority(joint:godot.RID):Int;

	/**		
		Creates a `godot.Generic6DOFJoint`.
	**/
	@:native("JointCreateGeneric6dof")
	public static function jointCreateGeneric6dof(bodyA:godot.RID, localRefA:godot.Transform, bodyB:godot.RID, localRefB:godot.Transform):godot.RID;

	/**		
		Sets a generic_6_DOF_joint parameter (see `godot.PhysicsServer_G6DOFJointAxisParam` constants).
	**/
	@:native("Generic6dofJointSetParam")
	public static function generic6dofJointSetParam(joint:godot.RID, axis:godot.Vector3_Axis, param:godot.PhysicsServer_G6DOFJointAxisParam, value:Single):Void;

	/**		
		Gets a generic_6_DOF_joint parameter (see `godot.PhysicsServer_G6DOFJointAxisParam` constants).
	**/
	@:native("Generic6dofJointGetParam")
	public static function generic6dofJointGetParam(joint:godot.RID, axis:godot.Vector3_Axis, param:godot.PhysicsServer_G6DOFJointAxisParam):Single;

	/**		
		Sets a generic_6_DOF_joint flag (see `godot.PhysicsServer_G6DOFJointAxisFlag` constants).
	**/
	@:native("Generic6dofJointSetFlag")
	public static function generic6dofJointSetFlag(joint:godot.RID, axis:godot.Vector3_Axis, flag:godot.PhysicsServer_G6DOFJointAxisFlag, enable:Bool):Void;

	/**		
		Gets a generic_6_DOF_joint flag (see `godot.PhysicsServer_G6DOFJointAxisFlag` constants).
	**/
	@:native("Generic6dofJointGetFlag")
	public static function generic6dofJointGetFlag(joint:godot.RID, axis:godot.Vector3_Axis, flag:godot.PhysicsServer_G6DOFJointAxisFlag):Bool;

	/**		
		Destroys any of the objects created by PhysicsServer. If the `godot.RID` passed is not one of the objects that can be created by PhysicsServer, an error will be sent to the console.
	**/
	@:native("FreeRid")
	public static function freeRid(rid:godot.RID):Void;

	/**		
		Activates or deactivates the 3D physics engine.
	**/
	@:native("SetActive")
	public static function setActive(active:Bool):Void;

	/**		
		Returns an Info defined by the `godot.PhysicsServer_ProcessInfo` input given.
	**/
	@:native("GetProcessInfo")
	public static function getProcessInfo(processInfo:godot.PhysicsServer_ProcessInfo):Int;
}
