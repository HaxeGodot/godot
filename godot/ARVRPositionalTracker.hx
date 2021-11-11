// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
An instance of this object represents a device that is tracked, such as a controller or anchor point. HMDs aren't represented here as they are handled internally.

As controllers are turned on and the AR/VR interface detects them, instances of this object are automatically added to this list of active tracking objects accessible through the `godot.ARVRServer`.

The `godot.ARVRController` and `godot.ARVRAnchor` both consume objects of this type and should be used in your project. The positional trackers are just under-the-hood objects that make this all work. These are mostly exposed so that GDNative-based interfaces can interact with them.
**/
@:libType
@:csNative
@:native("Godot.ARVRPositionalTracker")
@:autoBuild(godot.Godot.buildUserClass())
extern class ARVRPositionalTracker extends godot.Reference {
	/**		
		The degree to which the tracker rumbles. Ranges from `0.0` to `1.0` with precision `.01`.
	**/
	@:native("Rumble")
	public var rumble:Single;

	@:native("new")
	public function new():Void;

	/**		
		Returns the tracker's type.
	**/
	@:native("GetType")
	public function getType():godot.ARVRServer_TrackerType;

	/**		
		Returns the internal tracker ID. This uniquely identifies the tracker per tracker type and matches the ID you need to specify for nodes such as the `godot.ARVRController` and `godot.ARVRAnchor` nodes.
	**/
	@:native("GetTrackerId")
	public function getTrackerId():Int;

	/**		
		Returns the controller or anchor point's name if available.
	**/
	@:native("GetName")
	public function getName():std.String;

	/**		
		If this is a controller that is being tracked, the controller will also be represented by a joystick entry with this ID.
	**/
	@:native("GetJoyId")
	public function getJoyId():Int;

	/**		
		Returns `true` if this device tracks orientation.
	**/
	@:native("GetTracksOrientation")
	public function getTracksOrientation():Bool;

	/**		
		Returns the controller's orientation matrix.
	**/
	@:native("GetOrientation")
	public function getOrientation():godot.Basis;

	/**		
		Returns `true` if this device tracks position.
	**/
	@:native("GetTracksPosition")
	public function getTracksPosition():Bool;

	/**		
		Returns the world-space controller position.
	**/
	@:native("GetPosition")
	public function getPosition():godot.Vector3;

	/**		
		Returns the hand holding this tracker, if known. See `godot.ARVRPositionalTracker_TrackerHand` constants.
	**/
	@:native("GetHand")
	public function getHand():godot.ARVRPositionalTracker_TrackerHand;

	/**		
		Returns the transform combining this device's orientation and position.
	**/
	@:native("GetTransform")
	public function getTransform(adjustByReferenceFrame:Bool):godot.Transform;

	/**		
		Returns the mesh related to a controller or anchor point if one is available.
	**/
	@:native("GetMesh")
	public function getMesh():godot.Mesh;

	@:native("GetRumble")
	public function getRumble():Single;

	@:native("SetRumble")
	public function setRumble(rumble:Single):Void;
}
