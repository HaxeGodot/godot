// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
3D area that detects `godot.CollisionObject` nodes overlapping, entering, or exiting. Can also alter or override local physics parameters (gravity, damping) and route audio to custom audio buses.
**/
@:libType
@:csNative
@:native("Godot.Area")
@:autoBuild(godot.Godot.buildUserClass())
extern class Area extends godot.CollisionObject {
	/**
		`area_entered` signal.
	**/
	public var onAreaEntered(get, never):Signal<(area:Area)->Void>;
	@:dox(hide) @:noCompletion inline function get_onAreaEntered():Signal<(area:Area)->Void> {
		return new Signal(this, "area_entered", Signal.SignalHandlerAreaVoid.connectSignal, Signal.SignalHandlerAreaVoid.disconnectSignal, Signal.SignalHandlerAreaVoid.isSignalConnected);
	}

	/**
		`area_exited` signal.
	**/
	public var onAreaExited(get, never):Signal<(area:Area)->Void>;
	@:dox(hide) @:noCompletion inline function get_onAreaExited():Signal<(area:Area)->Void> {
		return new Signal(this, "area_exited", Signal.SignalHandlerAreaVoid.connectSignal, Signal.SignalHandlerAreaVoid.disconnectSignal, Signal.SignalHandlerAreaVoid.isSignalConnected);
	}

	/**
		`area_shape_entered` signal.
	**/
	public var onAreaShapeEntered(get, never):Signal<(areaRid:RID, area:Area, areaShapeIndex:Int, localShapeIndex:Int)->Void>;
	@:dox(hide) @:noCompletion inline function get_onAreaShapeEntered():Signal<(areaRid:RID, area:Area, areaShapeIndex:Int, localShapeIndex:Int)->Void> {
		return new Signal(this, "area_shape_entered", Signal.SignalHandlerRIDAreaIntIntVoid.connectSignal, Signal.SignalHandlerRIDAreaIntIntVoid.disconnectSignal, Signal.SignalHandlerRIDAreaIntIntVoid.isSignalConnected);
	}

	/**
		`area_shape_exited` signal.
	**/
	public var onAreaShapeExited(get, never):Signal<(areaRid:RID, area:Area, areaShapeIndex:Int, localShapeIndex:Int)->Void>;
	@:dox(hide) @:noCompletion inline function get_onAreaShapeExited():Signal<(areaRid:RID, area:Area, areaShapeIndex:Int, localShapeIndex:Int)->Void> {
		return new Signal(this, "area_shape_exited", Signal.SignalHandlerRIDAreaIntIntVoid.connectSignal, Signal.SignalHandlerRIDAreaIntIntVoid.disconnectSignal, Signal.SignalHandlerRIDAreaIntIntVoid.isSignalConnected);
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
		The degree to which this area's reverb is a uniform effect. Ranges from `0` to `1` with `0.1` precision.
	**/
	@:native("ReverbBusUniformity")
	public var reverbBusUniformity:Single;

	/**		
		The degree to which this area applies reverb to its associated audio. Ranges from `0` to `1` with `0.1` precision.
	**/
	@:native("ReverbBusAmount")
	public var reverbBusAmount:Single;

	/**		
		The reverb bus name to use for this area's associated audio.
	**/
	@:native("ReverbBusName")
	public var reverbBusName:std.String;

	/**		
		If `true`, the area applies reverb to its associated audio.
	**/
	@:native("ReverbBusEnable")
	public var reverbBusEnable:Bool;

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
		The area's gravity intensity (in meters per second squared). This value multiplies the gravity vector. This is useful to alter the force of gravity without altering its direction.
	**/
	@:native("Gravity")
	public var gravity:Single;

	/**		
		The area's gravity vector (not normalized). If gravity is a point (see `godot.Area.gravityPoint`), this will be the point of attraction.
	**/
	@:native("GravityVec")
	public var gravityVec:godot.Vector3;

	/**		
		The falloff factor for point gravity. The greater the value, the faster gravity decreases with distance.
	**/
	@:native("GravityDistanceScale")
	public var gravityDistanceScale:Single;

	/**		
		If `true`, gravity is calculated from a point (set via `godot.Area.gravityVec`). See also `godot.Area.spaceOverride`.
	**/
	@:native("GravityPoint")
	public var gravityPoint:Bool;

	/**		
		Override mode for gravity and damping calculations within this area. See `godot.Area_SpaceOverrideEnum` for possible values.
	**/
	@:native("SpaceOverride")
	public var spaceOverride:godot.Area_SpaceOverrideEnum;

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
	public function setSpaceOverrideMode(enable:godot.Area_SpaceOverrideEnum):Void;

	@:native("GetSpaceOverrideMode")
	public function getSpaceOverrideMode():godot.Area_SpaceOverrideEnum;

	@:native("SetGravityIsPoint")
	public function setGravityIsPoint(enable:Bool):Void;

	@:native("IsGravityAPoint")
	public function isGravityAPoint():Bool;

	@:native("SetGravityDistanceScale")
	public function setGravityDistanceScale(distanceScale:Single):Void;

	@:native("GetGravityDistanceScale")
	public function getGravityDistanceScale():Single;

	@:native("SetGravityVector")
	public function setGravityVector(vector:godot.Vector3):Void;

	@:native("GetGravityVector")
	public function getGravityVector():godot.Vector3;

	@:native("SetGravity")
	public function setGravity(gravity:Single):Void;

	@:native("GetGravity")
	public function getGravity():Single;

	@:native("SetAngularDamp")
	public function setAngularDamp(angularDamp:Single):Void;

	@:native("GetAngularDamp")
	public function getAngularDamp():Single;

	@:native("SetLinearDamp")
	public function setLinearDamp(linearDamp:Single):Void;

	@:native("GetLinearDamp")
	public function getLinearDamp():Single;

	@:native("SetPriority")
	public function setPriority(priority:Single):Void;

	@:native("GetPriority")
	public function getPriority():Single;

	@:native("SetMonitorable")
	public function setMonitorable(enable:Bool):Void;

	@:native("IsMonitorable")
	public function isMonitorable():Bool;

	@:native("SetMonitoring")
	public function setMonitoring(enable:Bool):Void;

	@:native("IsMonitoring")
	public function isMonitoring():Bool;

	/**		
		Returns a list of intersecting `godot.PhysicsBody`s. The overlapping body's `godot.CollisionObject.collisionLayer` must be part of this area's `godot.CollisionObject.collisionMask` in order to be detected.
		
		For performance reasons (collisions are all processed at the same time) this list is modified once during the physics step, not immediately after objects are moved. Consider using signals instead.
	**/
	@:native("GetOverlappingBodies")
	public function getOverlappingBodies():godot.collections.Array;

	/**		
		Returns a list of intersecting `godot.Area`s. The overlapping area's `godot.CollisionObject.collisionLayer` must be part of this area's `godot.CollisionObject.collisionMask` in order to be detected.
		
		For performance reasons (collisions are all processed at the same time) this list is modified once during the physics step, not immediately after objects are moved. Consider using signals instead.
	**/
	@:native("GetOverlappingAreas")
	public function getOverlappingAreas():godot.collections.Array;

	/**		
		If `true`, the given physics body overlaps the Area.
		
		Note: The result of this test is not immediate after moving objects. For performance, list of overlaps is updated once per frame and before the physics step. Consider using signals instead.
		
		The `body` argument can either be a `godot.PhysicsBody` or a `godot.GridMap` instance (while GridMaps are not physics body themselves, they register their tiles with collision shapes as a virtual physics body).
	**/
	@:native("OverlapsBody")
	public function overlapsBody(body:godot.Node):Bool;

	/**		
		If `true`, the given area overlaps the Area.
		
		Note: The result of this test is not immediate after moving objects. For performance, list of overlaps is updated once per frame and before the physics step. Consider using signals instead.
	**/
	@:native("OverlapsArea")
	public function overlapsArea(area:godot.Node):Bool;

	@:native("SetAudioBusOverride")
	public function setAudioBusOverride(enable:Bool):Void;

	@:native("IsOverridingAudioBus")
	public function isOverridingAudioBus():Bool;

	@:native("SetAudioBus")
	public function setAudioBus(name:std.String):Void;

	@:native("GetAudioBus")
	public function getAudioBus():std.String;

	@:native("SetUseReverbBus")
	public function setUseReverbBus(enable:Bool):Void;

	@:native("IsUsingReverbBus")
	public function isUsingReverbBus():Bool;

	@:native("SetReverbBus")
	public function setReverbBus(name:std.String):Void;

	@:native("GetReverbBus")
	public function getReverbBus():std.String;

	@:native("SetReverbAmount")
	public function setReverbAmount(amount:Single):Void;

	@:native("GetReverbAmount")
	public function getReverbAmount():Single;

	@:native("SetReverbUniformity")
	public function setReverbUniformity(amount:Single):Void;

	@:native("GetReverbUniformity")
	public function getReverbUniformity():Single;
}
