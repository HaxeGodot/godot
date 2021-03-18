// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Physics2DServer is the server responsible for all 2D physics. It can create many kinds of physics objects, but does not insert them on the node tree.
**/
@:libType
@:csNative
@:native("Godot.Physics2DServer")
@:autoBuild(godot.Godot.buildUserClass())
extern class Physics2DServer {
	@:native("Singleton")
	public static var SINGLETON(default, never):godot.Object;

	@:native("LineShapeCreate")
	public static function lineShapeCreate():godot.RID;

	@:native("RayShapeCreate")
	public static function rayShapeCreate():godot.RID;

	@:native("SegmentShapeCreate")
	public static function segmentShapeCreate():godot.RID;

	@:native("CircleShapeCreate")
	public static function circleShapeCreate():godot.RID;

	@:native("RectangleShapeCreate")
	public static function rectangleShapeCreate():godot.RID;

	@:native("CapsuleShapeCreate")
	public static function capsuleShapeCreate():godot.RID;

	@:native("ConvexPolygonShapeCreate")
	public static function convexPolygonShapeCreate():godot.RID;

	@:native("ConcavePolygonShapeCreate")
	public static function concavePolygonShapeCreate():godot.RID;

	/**		
		Sets the shape data that defines its shape and size. The data to be passed depends on the kind of shape created `godot.Physics2DServer.shapeGetType`.
	**/
	@:native("ShapeSetData")
	public static function shapeSetData(shape:godot.RID, data:Dynamic):Void;

	/**		
		Returns a shape's type (see `godot.Physics2DServer_ShapeType`).
	**/
	@:native("ShapeGetType")
	public static function shapeGetType(shape:godot.RID):godot.Physics2DServer_ShapeType;

	/**		
		Returns the shape data.
	**/
	@:native("ShapeGetData")
	public static function shapeGetData(shape:godot.RID):Dynamic;

	/**		
		Creates a space. A space is a collection of parameters for the physics engine that can be assigned to an area or a body. It can be assigned to an area with `godot.Physics2DServer.areaSetSpace`, or to a body with `godot.Physics2DServer.bodySetSpace`.
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
		Sets the value for a space parameter. See `godot.Physics2DServer_SpaceParameter` for a list of available parameters.
	**/
	@:native("SpaceSetParam")
	public static function spaceSetParam(space:godot.RID, param:godot.Physics2DServer_SpaceParameter, value:Single):Void;

	/**		
		Returns the value of a space parameter.
	**/
	@:native("SpaceGetParam")
	public static function spaceGetParam(space:godot.RID, param:godot.Physics2DServer_SpaceParameter):Single;

	/**		
		Returns the state of a space, a `godot.Physics2DDirectSpaceState`. This object can be used to make collision/intersection queries.
	**/
	@:native("SpaceGetDirectState")
	public static function spaceGetDirectState(space:godot.RID):godot.Physics2DDirectSpaceState;

	/**		
		Creates an `godot.Area2D`.
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
		Sets the space override mode for the area. See `godot.Physics2DServer_AreaSpaceOverrideMode` for a list of available modes.
	**/
	@:native("AreaSetSpaceOverrideMode")
	public static function areaSetSpaceOverrideMode(area:godot.RID, mode:godot.Physics2DServer_AreaSpaceOverrideMode):Void;

	/**		
		Returns the space override mode for the area.
	**/
	@:native("AreaGetSpaceOverrideMode")
	public static function areaGetSpaceOverrideMode(area:godot.RID):godot.Physics2DServer_AreaSpaceOverrideMode;

	#if doc_gen
	/**		
		Adds a shape to the area, along with a transform matrix. Shapes are usually referenced by their index, so you should track which shape has a given index.
		
		@param transform If the parameter is null, then the default value is Transform2D.Identity
	**/
	@:native("AreaAddShape")
	public static function areaAddShape(area:godot.RID, shape:godot.RID, ?transform:Nullable1<godot.Transform2D>, ?disabled:Bool):Void;
	#else
	/**		
		Adds a shape to the area, along with a transform matrix. Shapes are usually referenced by their index, so you should track which shape has a given index.
		
		@param transform If the parameter is null, then the default value is Transform2D.Identity
	**/
	@:native("AreaAddShape")
	public static overload function areaAddShape(area:godot.RID, shape:godot.RID):Void;

	/**		
		Adds a shape to the area, along with a transform matrix. Shapes are usually referenced by their index, so you should track which shape has a given index.
		
		@param transform If the parameter is null, then the default value is Transform2D.Identity
	**/
	@:native("AreaAddShape")
	public static overload function areaAddShape(area:godot.RID, shape:godot.RID, transform:Nullable1<godot.Transform2D>):Void;

	/**		
		Adds a shape to the area, along with a transform matrix. Shapes are usually referenced by their index, so you should track which shape has a given index.
		
		@param transform If the parameter is null, then the default value is Transform2D.Identity
	**/
	@:native("AreaAddShape")
	public static overload function areaAddShape(area:godot.RID, shape:godot.RID, transform:Nullable1<godot.Transform2D>, disabled:Bool):Void;
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
	public static function areaSetShapeTransform(area:godot.RID, shapeIdx:Int, transform:godot.Transform2D):Void;

	/**		
		Disables a given shape in an area.
	**/
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
	public static function areaGetShapeTransform(area:godot.RID, shapeIdx:Int):godot.Transform2D;

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
		Sets the value for an area parameter. See `godot.Physics2DServer_AreaParameter` for a list of available parameters.
	**/
	@:native("AreaSetParam")
	public static function areaSetParam(area:godot.RID, param:godot.Physics2DServer_AreaParameter, value:Dynamic):Void;

	/**		
		Sets the transform matrix for an area.
	**/
	@:native("AreaSetTransform")
	public static function areaSetTransform(area:godot.RID, transform:godot.Transform2D):Void;

	/**		
		Returns an area parameter value. See `godot.Physics2DServer_AreaParameter` for a list of available parameters.
	**/
	@:native("AreaGetParam")
	public static function areaGetParam(area:godot.RID, param:godot.Physics2DServer_AreaParameter):Dynamic;

	/**		
		Returns the transform matrix for an area.
	**/
	@:native("AreaGetTransform")
	public static function areaGetTransform(area:godot.RID):godot.Transform2D;

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

	@:native("AreaAttachCanvasInstanceId")
	public static function areaAttachCanvasInstanceId(area:godot.RID, id:cs.types.UInt64):Void;

	@:native("AreaGetCanvasInstanceId")
	public static function areaGetCanvasInstanceId(area:godot.RID):cs.types.UInt64;

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
		Creates a physics body.
	**/
	@:native("BodyCreate")
	public static function bodyCreate():godot.RID;

	/**		
		Assigns a space to the body (see `godot.Physics2DServer.spaceCreate`).
	**/
	@:native("BodySetSpace")
	public static function bodySetSpace(body:godot.RID, space:godot.RID):Void;

	/**		
		Returns the `godot.RID` of the space assigned to a body.
	**/
	@:native("BodyGetSpace")
	public static function bodyGetSpace(body:godot.RID):godot.RID;

	/**		
		Sets the body mode using one of the `godot.Physics2DServer_BodyMode` constants.
	**/
	@:native("BodySetMode")
	public static function bodySetMode(body:godot.RID, mode:godot.Physics2DServer_BodyMode):Void;

	/**		
		Returns the body mode.
	**/
	@:native("BodyGetMode")
	public static function bodyGetMode(body:godot.RID):godot.Physics2DServer_BodyMode;

	#if doc_gen
	/**		
		Adds a shape to the body, along with a transform matrix. Shapes are usually referenced by their index, so you should track which shape has a given index.
		
		@param transform If the parameter is null, then the default value is Transform2D.Identity
	**/
	@:native("BodyAddShape")
	public static function bodyAddShape(body:godot.RID, shape:godot.RID, ?transform:Nullable1<godot.Transform2D>, ?disabled:Bool):Void;
	#else
	/**		
		Adds a shape to the body, along with a transform matrix. Shapes are usually referenced by their index, so you should track which shape has a given index.
		
		@param transform If the parameter is null, then the default value is Transform2D.Identity
	**/
	@:native("BodyAddShape")
	public static overload function bodyAddShape(body:godot.RID, shape:godot.RID):Void;

	/**		
		Adds a shape to the body, along with a transform matrix. Shapes are usually referenced by their index, so you should track which shape has a given index.
		
		@param transform If the parameter is null, then the default value is Transform2D.Identity
	**/
	@:native("BodyAddShape")
	public static overload function bodyAddShape(body:godot.RID, shape:godot.RID, transform:Nullable1<godot.Transform2D>):Void;

	/**		
		Adds a shape to the body, along with a transform matrix. Shapes are usually referenced by their index, so you should track which shape has a given index.
		
		@param transform If the parameter is null, then the default value is Transform2D.Identity
	**/
	@:native("BodyAddShape")
	public static overload function bodyAddShape(body:godot.RID, shape:godot.RID, transform:Nullable1<godot.Transform2D>, disabled:Bool):Void;
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
	public static function bodySetShapeTransform(body:godot.RID, shapeIdx:Int, transform:godot.Transform2D):Void;

	/**		
		Sets metadata of a shape within a body. This metadata is different from `godot.Object.setMeta`, and can be retrieved on shape queries.
	**/
	@:native("BodySetShapeMetadata")
	public static function bodySetShapeMetadata(body:godot.RID, shapeIdx:Int, metadata:Dynamic):Void;

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
	public static function bodyGetShapeTransform(body:godot.RID, shapeIdx:Int):godot.Transform2D;

	/**		
		Returns the metadata of a shape of a body.
	**/
	@:native("BodyGetShapeMetadata")
	public static function bodyGetShapeMetadata(body:godot.RID, shapeIdx:Int):Dynamic;

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
		Disables shape in body if `disable` is `true`.
	**/
	@:native("BodySetShapeDisabled")
	public static function bodySetShapeDisabled(body:godot.RID, shapeIdx:Int, disabled:Bool):Void;

	/**		
		Enables one way collision on body if `enable` is `true`.
	**/
	@:native("BodySetShapeAsOneWayCollision")
	public static function bodySetShapeAsOneWayCollision(body:godot.RID, shapeIdx:Int, enable:Bool, margin:Single):Void;

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

	@:native("BodyAttachCanvasInstanceId")
	public static function bodyAttachCanvasInstanceId(body:godot.RID, id:UInt):Void;

	@:native("BodyGetCanvasInstanceId")
	public static function bodyGetCanvasInstanceId(body:godot.RID):UInt;

	/**		
		Sets the continuous collision detection mode using one of the `godot.Physics2DServer_CCDMode` constants.
		
		Continuous collision detection tries to predict where a moving body will collide, instead of moving it and correcting its movement if it collided.
	**/
	@:native("BodySetContinuousCollisionDetectionMode")
	public static function bodySetContinuousCollisionDetectionMode(body:godot.RID, mode:godot.Physics2DServer_CCDMode):Void;

	/**		
		Returns the continuous collision detection mode.
	**/
	@:native("BodyGetContinuousCollisionDetectionMode")
	public static function bodyGetContinuousCollisionDetectionMode(body:godot.RID):godot.Physics2DServer_CCDMode;

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
	**/
	@:native("BodyGetCollisionMask")
	public static function bodyGetCollisionMask(body:godot.RID):UInt;

	/**		
		Sets a body parameter. See `godot.Physics2DServer_BodyParameter` for a list of available parameters.
	**/
	@:native("BodySetParam")
	public static function bodySetParam(body:godot.RID, param:godot.Physics2DServer_BodyParameter, value:Single):Void;

	/**		
		Returns the value of a body parameter. See `godot.Physics2DServer_BodyParameter` for a list of available parameters.
	**/
	@:native("BodyGetParam")
	public static function bodyGetParam(body:godot.RID, param:godot.Physics2DServer_BodyParameter):Single;

	/**		
		Sets a body state using one of the `godot.Physics2DServer_BodyState` constants.
		
		Note that the method doesn't take effect immediately. The state will change on the next physics frame.
	**/
	@:native("BodySetState")
	public static function bodySetState(body:godot.RID, state:godot.Physics2DServer_BodyState, value:Dynamic):Void;

	/**		
		Returns a body state.
	**/
	@:native("BodyGetState")
	public static function bodyGetState(body:godot.RID, state:godot.Physics2DServer_BodyState):Dynamic;

	@:native("BodyApplyCentralImpulse")
	public static function bodyApplyCentralImpulse(body:godot.RID, impulse:godot.Vector2):Void;

	@:native("BodyApplyTorqueImpulse")
	public static function bodyApplyTorqueImpulse(body:godot.RID, impulse:Single):Void;

	/**		
		Adds a positioned impulse to the applied force and torque. Both the force and the offset from the body origin are in global coordinates.
	**/
	@:native("BodyApplyImpulse")
	public static function bodyApplyImpulse(body:godot.RID, position:godot.Vector2, impulse:godot.Vector2):Void;

	@:native("BodyAddCentralForce")
	public static function bodyAddCentralForce(body:godot.RID, force:godot.Vector2):Void;

	/**		
		Adds a positioned force to the applied force and torque. As with `godot.Physics2DServer.bodyApplyImpulse`, both the force and the offset from the body origin are in global coordinates. A force differs from an impulse in that, while the two are forces, the impulse clears itself after being applied.
	**/
	@:native("BodyAddForce")
	public static function bodyAddForce(body:godot.RID, offset:godot.Vector2, force:godot.Vector2):Void;

	@:native("BodyAddTorque")
	public static function bodyAddTorque(body:godot.RID, torque:Single):Void;

	/**		
		Sets an axis velocity. The velocity in the given vector axis will be set as the given vector length. This is useful for jumping behavior.
	**/
	@:native("BodySetAxisVelocity")
	public static function bodySetAxisVelocity(body:godot.RID, axisVelocity:godot.Vector2):Void;

	/**		
		Adds a body to the list of bodies exempt from collisions.
	**/
	@:native("BodyAddCollisionException")
	public static function bodyAddCollisionException(body:godot.RID, exceptedBody:godot.RID):Void;

	/**		
		Removes a body from the list of bodies exempt from collisions.
	**/
	@:native("BodyRemoveCollisionException")
	public static function bodyRemoveCollisionException(body:godot.RID, exceptedBody:godot.RID):Void;

	/**		
		Sets the maximum contacts to report. Bodies can keep a log of the contacts with other bodies, this is enabled by setting the maximum amount of contacts reported to a number greater than 0.
	**/
	@:native("BodySetMaxContactsReported")
	public static function bodySetMaxContactsReported(body:godot.RID, amount:Int):Void;

	/**		
		Returns the maximum contacts that can be reported. See `godot.Physics2DServer.bodySetMaxContactsReported`.
	**/
	@:native("BodyGetMaxContactsReported")
	public static function bodyGetMaxContactsReported(body:godot.RID):Int;

	/**		
		Sets whether a body uses a callback function to calculate its own physics (see `godot.Physics2DServer.bodySetForceIntegrationCallback`).
	**/
	@:native("BodySetOmitForceIntegration")
	public static function bodySetOmitForceIntegration(body:godot.RID, enable:Bool):Void;

	/**		
		Returns whether a body uses a callback function to calculate its own physics (see `godot.Physics2DServer.bodySetForceIntegrationCallback`).
	**/
	@:native("BodyIsOmittingForceIntegration")
	public static function bodyIsOmittingForceIntegration(body:godot.RID):Bool;

	#if doc_gen
	/**		
		Sets the function used to calculate physics for an object, if that object allows it (see `godot.Physics2DServer.bodySetOmitForceIntegration`).
	**/
	@:native("BodySetForceIntegrationCallback")
	public static function bodySetForceIntegrationCallback(body:godot.RID, receiver:godot.Object, method:std.String, ?userdata:Dynamic):Void;
	#else
	/**		
		Sets the function used to calculate physics for an object, if that object allows it (see `godot.Physics2DServer.bodySetOmitForceIntegration`).
	**/
	@:native("BodySetForceIntegrationCallback")
	public static overload function bodySetForceIntegrationCallback(body:godot.RID, receiver:godot.Object, method:std.String):Void;

	/**		
		Sets the function used to calculate physics for an object, if that object allows it (see `godot.Physics2DServer.bodySetOmitForceIntegration`).
	**/
	@:native("BodySetForceIntegrationCallback")
	public static overload function bodySetForceIntegrationCallback(body:godot.RID, receiver:godot.Object, method:std.String, userdata:Dynamic):Void;
	#end

	#if doc_gen
	/**		
		Returns `true` if a collision would result from moving in the given direction from a given point in space. Margin increases the size of the shapes involved in the collision detection. `godot.Physics2DTestMotionResult` can be passed to return additional information in.
	**/
	@:native("BodyTestMotion")
	public static function bodyTestMotion(body:godot.RID, from:godot.Transform2D, motion:godot.Vector2, infiniteInertia:Bool, ?margin:Single, ?result:godot.Physics2DTestMotionResult):Bool;
	#else
	/**		
		Returns `true` if a collision would result from moving in the given direction from a given point in space. Margin increases the size of the shapes involved in the collision detection. `godot.Physics2DTestMotionResult` can be passed to return additional information in.
	**/
	@:native("BodyTestMotion")
	public static overload function bodyTestMotion(body:godot.RID, from:godot.Transform2D, motion:godot.Vector2, infiniteInertia:Bool):Bool;

	/**		
		Returns `true` if a collision would result from moving in the given direction from a given point in space. Margin increases the size of the shapes involved in the collision detection. `godot.Physics2DTestMotionResult` can be passed to return additional information in.
	**/
	@:native("BodyTestMotion")
	public static overload function bodyTestMotion(body:godot.RID, from:godot.Transform2D, motion:godot.Vector2, infiniteInertia:Bool, margin:Single):Bool;

	/**		
		Returns `true` if a collision would result from moving in the given direction from a given point in space. Margin increases the size of the shapes involved in the collision detection. `godot.Physics2DTestMotionResult` can be passed to return additional information in.
	**/
	@:native("BodyTestMotion")
	public static overload function bodyTestMotion(body:godot.RID, from:godot.Transform2D, motion:godot.Vector2, infiniteInertia:Bool, margin:Single, result:godot.Physics2DTestMotionResult):Bool;
	#end

	/**		
		Returns the `godot.Physics2DDirectBodyState` of the body.
	**/
	@:native("BodyGetDirectState")
	public static function bodyGetDirectState(body:godot.RID):godot.Physics2DDirectBodyState;

	/**		
		Sets a joint parameter. See `godot.Physics2DServer_JointParam` for a list of available parameters.
	**/
	@:native("JointSetParam")
	public static function jointSetParam(joint:godot.RID, param:godot.Physics2DServer_JointParam, value:Single):Void;

	/**		
		Returns the value of a joint parameter.
	**/
	@:native("JointGetParam")
	public static function jointGetParam(joint:godot.RID, param:godot.Physics2DServer_JointParam):Single;

	#if doc_gen
	/**		
		Creates a pin joint between two bodies. If not specified, the second body is assumed to be the joint itself.
	**/
	@:native("PinJointCreate")
	public static function pinJointCreate(anchor:godot.Vector2, bodyA:godot.RID, ?bodyB:godot.RID):godot.RID;
	#else
	/**		
		Creates a pin joint between two bodies. If not specified, the second body is assumed to be the joint itself.
	**/
	@:native("PinJointCreate")
	public static overload function pinJointCreate(anchor:godot.Vector2, bodyA:godot.RID):godot.RID;

	/**		
		Creates a pin joint between two bodies. If not specified, the second body is assumed to be the joint itself.
	**/
	@:native("PinJointCreate")
	public static overload function pinJointCreate(anchor:godot.Vector2, bodyA:godot.RID, bodyB:godot.RID):godot.RID;
	#end

	#if doc_gen
	/**		
		Creates a groove joint between two bodies. If not specified, the bodies are assumed to be the joint itself.
	**/
	@:native("GrooveJointCreate")
	public static function grooveJointCreate(groove1A:godot.Vector2, groove2A:godot.Vector2, anchorB:godot.Vector2, ?bodyA:godot.RID, ?bodyB:godot.RID):godot.RID;
	#else
	/**		
		Creates a groove joint between two bodies. If not specified, the bodies are assumed to be the joint itself.
	**/
	@:native("GrooveJointCreate")
	public static overload function grooveJointCreate(groove1A:godot.Vector2, groove2A:godot.Vector2, anchorB:godot.Vector2):godot.RID;

	/**		
		Creates a groove joint between two bodies. If not specified, the bodies are assumed to be the joint itself.
	**/
	@:native("GrooveJointCreate")
	public static overload function grooveJointCreate(groove1A:godot.Vector2, groove2A:godot.Vector2, anchorB:godot.Vector2, bodyA:godot.RID):godot.RID;

	/**		
		Creates a groove joint between two bodies. If not specified, the bodies are assumed to be the joint itself.
	**/
	@:native("GrooveJointCreate")
	public static overload function grooveJointCreate(groove1A:godot.Vector2, groove2A:godot.Vector2, anchorB:godot.Vector2, bodyA:godot.RID, bodyB:godot.RID):godot.RID;
	#end

	#if doc_gen
	/**		
		Creates a damped spring joint between two bodies. If not specified, the second body is assumed to be the joint itself.
	**/
	@:native("DampedSpringJointCreate")
	public static function dampedSpringJointCreate(anchorA:godot.Vector2, anchorB:godot.Vector2, bodyA:godot.RID, ?bodyB:godot.RID):godot.RID;
	#else
	/**		
		Creates a damped spring joint between two bodies. If not specified, the second body is assumed to be the joint itself.
	**/
	@:native("DampedSpringJointCreate")
	public static overload function dampedSpringJointCreate(anchorA:godot.Vector2, anchorB:godot.Vector2, bodyA:godot.RID):godot.RID;

	/**		
		Creates a damped spring joint between two bodies. If not specified, the second body is assumed to be the joint itself.
	**/
	@:native("DampedSpringJointCreate")
	public static overload function dampedSpringJointCreate(anchorA:godot.Vector2, anchorB:godot.Vector2, bodyA:godot.RID, bodyB:godot.RID):godot.RID;
	#end

	/**		
		Sets a damped spring joint parameter. See `godot.Physics2DServer_DampedStringParam` for a list of available parameters.
	**/
	@:native("DampedStringJointSetParam")
	public static function dampedStringJointSetParam(joint:godot.RID, param:godot.Physics2DServer_DampedStringParam, value:Single):Void;

	/**		
		Returns the value of a damped spring joint parameter.
	**/
	@:native("DampedStringJointGetParam")
	public static function dampedStringJointGetParam(joint:godot.RID, param:godot.Physics2DServer_DampedStringParam):Single;

	/**		
		Returns a joint's type (see `godot.Physics2DServer_JointType`).
	**/
	@:native("JointGetType")
	public static function jointGetType(joint:godot.RID):godot.Physics2DServer_JointType;

	/**		
		Destroys any of the objects created by Physics2DServer. If the `godot.RID` passed is not one of the objects that can be created by Physics2DServer, an error will be sent to the console.
	**/
	@:native("FreeRid")
	public static function freeRid(rid:godot.RID):Void;

	/**		
		Activates or deactivates the 2D physics engine.
	**/
	@:native("SetActive")
	public static function setActive(active:Bool):Void;

	/**		
		Returns information about the current state of the 2D physics engine. See `godot.Physics2DServer_ProcessInfo` for a list of available states.
	**/
	@:native("GetProcessInfo")
	public static function getProcessInfo(processInfo:godot.Physics2DServer_ProcessInfo):Int;
}
