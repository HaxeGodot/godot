// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.SpatialVelocityTracker")
@:autoBuild(godot.Godot.buildUserClass())
extern class SpatialVelocityTracker extends godot.Reference {
	@:native("TrackPhysicsStep")
	public var trackPhysicsStep:Bool;

	@:native("new")
	public function new():Void;

	@:native("SetTrackPhysicsStep")
	public function setTrackPhysicsStep(enable:Bool):Void;

	@:native("IsTrackingPhysicsStep")
	public function isTrackingPhysicsStep():Bool;

	@:native("UpdatePosition")
	public function updatePosition(position:godot.Vector3):Void;

	@:native("GetTrackedLinearVelocity")
	public function getTrackedLinearVelocity():godot.Vector3;

	@:native("Reset")
	public function reset(position:godot.Vector3):Void;
}
