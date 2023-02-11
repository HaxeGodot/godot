// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This is a helper spatial node that is linked to the tracking of controllers. It also offers several handy passthroughs to the state of buttons and such on the controllers.

Controllers are linked by their ID. You can create controller nodes before the controllers are available. If your game always uses two controllers (one for each hand), you can predefine the controllers with ID 1 and 2; they will become active as soon as the controllers are identified. If you expect additional controllers to be used, you should react to the signals and add ARVRController nodes to your scene.

The position of the controller node is automatically updated by the `godot.ARVRServer`. This makes this node ideal to add child nodes to visualize the controller.
**/
@:libType
@:csNative
@:native("Godot.ARVRController")
@:autoBuild(godot.Godot.buildUserClass())
extern class ARVRController extends godot.Spatial {
	/**
		`button_pressed` signal.
	**/
	public var onButtonPressed(get, never):Signal<(button:Int)->Void>;
	@:dox(hide) @:noCompletion inline function get_onButtonPressed():Signal<(button:Int)->Void> {
		return new Signal(this, "button_pressed", Signal.SignalHandlerIntVoid.connectSignal, Signal.SignalHandlerIntVoid.disconnectSignal, Signal.SignalHandlerIntVoid.isSignalConnected);
	}

	/**
		`button_release` signal.
	**/
	public var onButtonRelease(get, never):Signal<(button:Int)->Void>;
	@:dox(hide) @:noCompletion inline function get_onButtonRelease():Signal<(button:Int)->Void> {
		return new Signal(this, "button_release", Signal.SignalHandlerIntVoid.connectSignal, Signal.SignalHandlerIntVoid.disconnectSignal, Signal.SignalHandlerIntVoid.isSignalConnected);
	}

	/**
		`mesh_updated` signal.
	**/
	public var onMeshUpdated(get, never):Signal<(mesh:Mesh)->Void>;
	@:dox(hide) @:noCompletion inline function get_onMeshUpdated():Signal<(mesh:Mesh)->Void> {
		return new Signal(this, "mesh_updated", Signal.SignalHandlerMeshVoid.connectSignal, Signal.SignalHandlerMeshVoid.disconnectSignal, Signal.SignalHandlerMeshVoid.isSignalConnected);
	}

	/**		
		The degree to which the controller vibrates. Ranges from `0.0` to `1.0` with precision `.01`. If changed, updates `godot.ARVRPositionalTracker.rumble` accordingly.
		
		This is a useful property to animate if you want the controller to vibrate for a limited duration.
	**/
	@:native("Rumble")
	public var rumble:Single;

	/**		
		The controller's ID.
		
		A controller ID of 0 is unbound and will always result in an inactive node. Controller ID 1 is reserved for the first controller that identifies itself as the left-hand controller and ID 2 is reserved for the first controller that identifies itself as the right-hand controller.
		
		For any other controller that the `godot.ARVRServer` detects, we continue with controller ID 3.
		
		When a controller is turned off, its slot is freed. This ensures controllers will keep the same ID even when controllers with lower IDs are turned off.
	**/
	@:native("ControllerId")
	public var controllerId:Int;

	@:native("new")
	public function new():Void;

	@:native("SetControllerId")
	public function setControllerId(controllerId:Int):Void;

	@:native("GetControllerId")
	public function getControllerId():Int;

	/**		
		If active, returns the name of the associated controller if provided by the AR/VR SDK used.
	**/
	@:native("GetControllerName")
	public function getControllerName():std.String;

	/**		
		Returns the ID of the joystick object bound to this. Every controller tracked by the `godot.ARVRServer` that has buttons and axis will also be registered as a joystick within Godot. This means that all the normal joystick tracking and input mapping will work for buttons and axis found on the AR/VR controllers. This ID is purely offered as information so you can link up the controller with its joystick entry.
	**/
	@:native("GetJoystickId")
	public function getJoystickId():Int;

	/**		
		Returns `true` if the button at index `button` is pressed. See `godot.JoystickList`, in particular the `JOY_VR_*` constants.
	**/
	@:native("IsButtonPressed")
	public function isButtonPressed(button:Int):Int;

	/**		
		Returns the value of the given axis for things like triggers, touchpads, etc. that are embedded into the controller.
	**/
	@:native("GetJoystickAxis")
	public function getJoystickAxis(axis:Int):Single;

	/**		
		Returns `true` if the bound controller is active. ARVR systems attempt to track active controllers.
	**/
	@:native("GetIsActive")
	public function getIsActive():Bool;

	/**		
		Returns the hand holding this controller, if known. See `godot.ARVRPositionalTracker_TrackerHand`.
	**/
	@:native("GetHand")
	public function getHand():godot.ARVRPositionalTracker_TrackerHand;

	@:native("GetRumble")
	public function getRumble():Single;

	@:native("SetRumble")
	public function setRumble(rumble:Single):Void;

	/**		
		If provided by the `godot.ARVRInterface`, this returns a mesh associated with the controller. This can be used to visualize the controller.
	**/
	@:native("GetMesh")
	public function getMesh():godot.Mesh;
}
