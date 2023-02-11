// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
2D area that detects `godot.CollisionObject2D` nodes overlapping, entering, or exiting. Can also alter or override local physics parameters (gravity, damping) and route audio to a custom audio bus.
**/
@:libType
@:csNative
@:native("Godot.Area2D")
@:autoBuild(godot.Godot.buildUserClass())
extern class Area2D extends godot.CollisionObject2D {
	/**
		`area_entered` signal.
	**/
	public var onAreaEntered(get, never):Signal<(area:Area2D)->Void>;
	@:dox(hide) @:noCompletion inline function get_onAreaEntered():Signal<(area:Area2D)->Void> {
		return new Signal(this, "area_entered", Signal.SignalHandlerArea2DVoid.connectSignal, Signal.SignalHandlerArea2DVoid.disconnectSignal, Signal.SignalHandlerArea2DVoid.isSignalConnected);
	}

	/**
		`area_exited` signal.
	**/
	public var onAreaExited(get, never):Signal<(area:Area2D)->Void>;
	@:dox(hide) @:noCompletion inline function get_onAreaExited():Signal<(area:Area2D)->Void> {
		return new Signal(this, "area_exited", Signal.SignalHandlerArea2DVoid.connectSignal, Signal.SignalHandlerArea2DVoid.disconnectSignal, Signal.SignalHandlerArea2DVoid.isSignalConnected);
	}

	/**
		`area_shape_entered` signal.
	**/
	public var onAreaShapeEntered(get, never):Signal<(areaRid:RID, area:Area2D, areaShapeIndex:Int, localShapeIndex:Int)->Void>;
	@:dox(hide) @:noCompletion inline function get_onAreaShapeEntered():Signal<(areaRid:RID, area:Area2D, areaShapeIndex:Int, localShapeIndex:Int)->Void> {
		return new Signal(this, "area_shape_entered", Signal.SignalHandlerRIDArea2DIntIntVoid.connectSignal, Signal.SignalHandlerRIDArea2DIntIntVoid.disconnectSignal, Signal.SignalHandlerRIDArea2DIntIntVoid.isSignalConnected);
	}

	/**
		`area_shape_exited` signal.
	**/
	public var onAreaShapeExited(get, never):Signal<(areaRid:RID, area:Area2D, areaShapeIndex:Int, localShapeIndex:Int)->Void>;
	@:dox(hide) @:noCompletion inline function get_onAreaShapeExited():Signal<(areaRid:RID, area:Area2D, areaShapeIndex:Int, localShapeIndex:Int)->Void> {
		return new Signal(this, "area_shape_exited", Signal.SignalHandlerRIDArea2DIntIntVoid.connectSignal, Signal.SignalHandlerRIDArea2DIntIntVoid.disconnectSignal, Signal.SignalHandlerRIDArea2DIntIntVoid.isSignalConnected);
	}

	/**
		`body_entered` signal.
	**/
	public var onBodyEntered(get, never):Signal<(body:Node)->Void>;
	@:dox(hide) @:noCompletion inline function get_onBodyEntered():Signal<(body:Node)->Void> {
		return new Signal(this, "body_entered", Signal.SignalHandlerNodeVoid.connectSignal, Signal.SignalHandlerNodeVoid.disconnectSignal, Signal.SignalHandlerNodeVoid.isSignalConnected);
	}

	/**
		`body_exited` signal.
	**/
	public var onBodyExited(get, never):Signal<(body:Node)->Void>;
	@:dox(hide) @:noCompletion inline function get_onBodyExited():Signal<(body:Node)->Void> {
		return new Signal(this, "body_exited", Signal.SignalHandlerNodeVoid.connectSignal, Signal.SignalHandlerNodeVoid.disconnectSignal, Signal.SignalHandlerNodeVoid.isSignalConnected);
	}

	/**
		`body_shape_entered` signal.
	**/
	public var onBodyShapeEntered(get, never):Signal<(bodyRid:RID, body:Node, bodyShapeIndex:Int, localShapeIndex:Int)->Void>;
	@:dox(hide) @:noCompletion inline function get_onBodyShapeEntered():Signal<(bodyRid:RID, body:Node, bodyShapeIndex:Int, localShapeIndex:Int)->Void> {
		return new Signal(this, "body_shape_entered", Signal.SignalHandlerRIDNodeIntIntVoid.connectSignal, Signal.SignalHandlerRIDNodeIntIntVoid.disconnectSignal, Signal.SignalHandlerRIDNodeIntIntVoid.isSignalConnected);
	}

	/**
		`body_shape_exited` signal.
	**/
	public var onBodyShapeExited(get, never):Signal<(bodyRid:RID, body:Node, bodyShapeIndex:Int, localShapeIndex:Int)->Void>;
	@:dox(hide) @:noCompletion inline function get_onBodyShapeExited():Signal<(bodyRid:RID, body:Node, bodyShapeIndex:Int, localShapeIndex:Int)->Void> {
		return new Signal(this, "body_shape_exited", Signal.SignalHandlerRIDNodeIntIntVoid.connectSignal, Signal.SignalHandlerRIDNodeIntIntVoid.disconnectSignal, Signal.SignalHandlerRIDNodeIntIntVoid.isSignalConnected);
	}

	/**		
		The name of the area's audio bus.
	**/
	@:native("AudioBusName")
	public var audioBusName:std.String;

	/**		
		If `true`, the area's audio bus overrides the default audio bus.
	**/
	@:native("AudioBusOverride")
	public var audioBusOverride:Bool;

	/**		
		The rate at which objects stop spinning in this area. Represents the angular velocity lost per second.
		
		See  for more details about damping.
	**/
	@:native("AngularDamp")
	public var angularDamp:Single;

	/**		
		The rate at which objects stop moving in this area. Represents the linear velocity lost per second.
		
		See  for more details about damping.
	**/
	@:native("LinearDamp")
	public var linearDamp:Single;

	/**		
		The area's gravity intensity (in pixels per second squared). This value multiplies the gravity vector. This is useful to alter the force of gravity without altering its direction.
	**/
	@:native("Gravity")
	public var gravity:Single;

	/**		
		The area's gravity vector (not normalized). If gravity is a point (see `godot.Area2D.gravityPoint`), this will be the point of attraction.
	**/
	@:native("GravityVec")
	public var gravityVec:godot.Vector2;

	/**		
		The falloff factor for point gravity. The greater the value, the faster gravity decreases with distance.
	**/
	@:native("GravityDistanceScale")
	public var gravityDistanceScale:Single;

	/**		
		If `true`, gravity is calculated from a point (set via `godot.Area2D.gravityVec`). See also `godot.Area2D.spaceOverride`.
	**/
	@:native("GravityPoint")
	public var gravityPoint:Bool;

	/**		
		Override mode for gravity and damping calculations within this area. See `godot.Area2D_SpaceOverrideEnum` for possible values.
	**/
	@:native("SpaceOverride")
	public var spaceOverride:godot.Area2D_SpaceOverrideEnum;

	/**		
		The area's priority. Higher priority areas are processed first.
	**/
	@:native("Priority")
	public var priority:Single;

	/**		
		If `true`, other monitoring areas can detect this area.
	**/
	@:native("Monitorable")
	public var monitorable:Bool;

	/**		
		If `true`, the area detects bodies or areas entering and exiting it.
	**/
	@:native("Monitoring")
	public var monitoring:Bool;

	@:native("new")
	public function new():Void;

	@:native("SetSpaceOverrideMode")
	public function setSpaceOverrideMode(spaceOverrideMode:godot.Area2D_SpaceOverrideEnum):Void;

	@:native("GetSpaceOverrideMode")
	public function getSpaceOverrideMode():godot.Area2D_SpaceOverrideEnum;

	@:native("SetGravityIsPoint")
	public function setGravityIsPoint(enable:Bool):Void;

	@:native("IsGravityAPoint")
	public function isGravityAPoint():Bool;

	@:native("SetGravityDistanceScale")
	public function setGravityDistanceScale(distanceScale:Single):Void;

	@:native("GetGravityDistanceScale")
	public function getGravityDistanceScale():Single;

	@:native("SetGravityVector")
	public function setGravityVector(vector:godot.Vector2):Void;

	@:native("GetGravityVector")
	public function getGravityVector():godot.Vector2;

	@:native("SetGravity")
	public function setGravity(gravity:Single):Void;

	@:native("GetGravity")
	public function getGravity():Single;

	@:native("SetLinearDamp")
	public function setLinearDamp(linearDamp:Single):Void;

	@:native("GetLinearDamp")
	public function getLinearDamp():Single;

	@:native("SetAngularDamp")
	public function setAngularDamp(angularDamp:Single):Void;

	@:native("GetAngularDamp")
	public function getAngularDamp():Single;

	@:native("SetPriority")
	public function setPriority(priority:Single):Void;

	@:native("GetPriority")
	public function getPriority():Single;

	@:native("SetMonitoring")
	public function setMonitoring(enable:Bool):Void;

	@:native("IsMonitoring")
	public function isMonitoring():Bool;

	@:native("SetMonitorable")
	public function setMonitorable(enable:Bool):Void;

	@:native("IsMonitorable")
	public function isMonitorable():Bool;

	/**		
		Returns a list of intersecting `godot.PhysicsBody2D`s. The overlapping body's `godot.CollisionObject2D.collisionLayer` must be part of this area's `godot.CollisionObject2D.collisionMask` in order to be detected.
		
		For performance reasons (collisions are all processed at the same time) this list is modified once during the physics step, not immediately after objects are moved. Consider using signals instead.
	**/
	@:native("GetOverlappingBodies")
	public function getOverlappingBodies():godot.collections.Array;

	/**		
		Returns a list of intersecting `godot.Area2D`s. The overlapping area's `godot.CollisionObject2D.collisionLayer` must be part of this area's `godot.CollisionObject2D.collisionMask` in order to be detected.
		
		For performance reasons (collisions are all processed at the same time) this list is modified once during the physics step, not immediately after objects are moved. Consider using signals instead.
	**/
	@:native("GetOverlappingAreas")
	public function getOverlappingAreas():godot.collections.Array;

	/**		
		If `true`, the given physics body overlaps the Area2D.
		
		Note: The result of this test is not immediate after moving objects. For performance, list of overlaps is updated once per frame and before the physics step. Consider using signals instead.
		
		The `body` argument can either be a `godot.PhysicsBody2D` or a `godot.TileMap` instance (while TileMaps are not physics bodies themselves, they register their tiles with collision shapes as a virtual physics body).
	**/
	@:native("OverlapsBody")
	public function overlapsBody(body:godot.Node):Bool;

	/**		
		If `true`, the given area overlaps the Area2D.
		
		Note: The result of this test is not immediate after moving objects. For performance, the list of overlaps is updated once per frame and before the physics step. Consider using signals instead.
	**/
	@:native("OverlapsArea")
	public function overlapsArea(area:godot.Node):Bool;

	@:native("SetAudioBusName")
	public function setAudioBusName(name:std.String):Void;

	@:native("GetAudioBusName")
	public function getAudioBusName():std.String;

	@:native("SetAudioBusOverride")
	public function setAudioBusOverride(enable:Bool):Void;

	@:native("IsOverridingAudioBus")
	public function isOverridingAudioBus():Bool;
}
