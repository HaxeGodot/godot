// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
The AR/VR server is the heart of our Advanced and Virtual Reality solution and handles all the processing.
**/
@:libType
@:csNative
@:native("Godot.ARVRServer")
@:autoBuild(godot.Godot.buildUserClass())
extern class ARVRServer {
	/**
		`interface_added` signal.
		
		Emitted when a new interface has been added.
	**/
	public static var onInterfaceAdded(get, never):Signal<(interfaceName:std.String)->Void>;
	@:dox(hide) @:noCompletion inline static function get_onInterfaceAdded():Signal<(interfaceName:std.String)->Void> {
		return new Signal(SINGLETON, "interface_added", Signal.SignalHandlerStringVoid.connectSignal, Signal.SignalHandlerStringVoid.disconnectSignal, Signal.SignalHandlerStringVoid.isSignalConnected);
	}

	/**
		`interface_removed` signal.
		
		Emitted when an interface is removed.
	**/
	public static var onInterfaceRemoved(get, never):Signal<(interfaceName:std.String)->Void>;
	@:dox(hide) @:noCompletion inline static function get_onInterfaceRemoved():Signal<(interfaceName:std.String)->Void> {
		return new Signal(SINGLETON, "interface_removed", Signal.SignalHandlerStringVoid.connectSignal, Signal.SignalHandlerStringVoid.disconnectSignal, Signal.SignalHandlerStringVoid.isSignalConnected);
	}

	/**
		`tracker_added` signal.
		
		Emitted when a new tracker has been added. If you don't use a fixed number of controllers or if you're using `ARVRAnchor`s for an AR solution, it is important to react to this signal to add the appropriate `ARVRController` or `ARVRAnchor` nodes related to this new tracker.
	**/
	public static var onTrackerAdded(get, never):Signal<(trackerName:std.String, type:Int, id:Int)->Void>;
	@:dox(hide) @:noCompletion inline static function get_onTrackerAdded():Signal<(trackerName:std.String, type:Int, id:Int)->Void> {
		return new Signal(SINGLETON, "tracker_added", Signal.SignalHandlerStringIntIntVoid.connectSignal, Signal.SignalHandlerStringIntIntVoid.disconnectSignal, Signal.SignalHandlerStringIntIntVoid.isSignalConnected);
	}

	/**
		`tracker_removed` signal.
		
		Emitted when a tracker is removed. You should remove any `ARVRController` or `ARVRAnchor` points if applicable. This is not mandatory, the nodes simply become inactive and will be made active again when a new tracker becomes available (i.e. a new controller is switched on that takes the place of the previous one).
	**/
	public static var onTrackerRemoved(get, never):Signal<(trackerName:std.String, type:Int, id:Int)->Void>;
	@:dox(hide) @:noCompletion inline static function get_onTrackerRemoved():Signal<(trackerName:std.String, type:Int, id:Int)->Void> {
		return new Signal(SINGLETON, "tracker_removed", Signal.SignalHandlerStringIntIntVoid.connectSignal, Signal.SignalHandlerStringIntIntVoid.disconnectSignal, Signal.SignalHandlerStringIntIntVoid.isSignalConnected);
	}

	@:native("Singleton")
	public static var SINGLETON(default, never):godot.Object;

	/**		
		The primary `godot.ARVRInterface` currently bound to the `godot.ARVRServer`.
	**/
	@:native("PrimaryInterface")
	public static var PRIMARY_INTERFACE:godot.ARVRInterface;

	/**		
		Allows you to adjust the scale to your game's units. Most AR/VR platforms assume a scale of 1 game world unit = 1 real world meter.
	**/
	@:native("WorldScale")
	public static var WORLD_SCALE:Single;

	@:native("GetWorldScale")
	public static function getWorldScale():Single;

	@:native("SetWorldScale")
	public static function setWorldScale(arg0:Single):Void;

	/**		
		Returns the reference frame transform. Mostly used internally and exposed for GDNative build interfaces.
	**/
	@:native("GetReferenceFrame")
	public static function getReferenceFrame():godot.Transform;

	/**		
		This is an important function to understand correctly. AR and VR platforms all handle positioning slightly differently.
		
		For platforms that do not offer spatial tracking, our origin point (0,0,0) is the location of our HMD, but you have little control over the direction the player is facing in the real world.
		
		For platforms that do offer spatial tracking, our origin point depends very much on the system. For OpenVR, our origin point is usually the center of the tracking space, on the ground. For other platforms, it's often the location of the tracking camera.
		
		This method allows you to center your tracker on the location of the HMD. It will take the current location of the HMD and use that to adjust all your tracking data; in essence, realigning the real world to your player's current position in the game world.
		
		For this method to produce usable results, tracking information must be available. This often takes a few frames after starting your game.
		
		You should call this method after a few seconds have passed. For instance, when the user requests a realignment of the display holding a designated button on a controller for a short period of time, or when implementing a teleport mechanism.
	**/
	@:native("CenterOnHmd")
	public static function centerOnHmd(rotationMode:godot.ARVRServer_RotationMode, keepHeight:Bool):Void;

	/**		
		Returns the primary interface's transformation.
	**/
	@:native("GetHmdTransform")
	public static function getHmdTransform():godot.Transform;

	/**		
		Registers an `godot.ARVRInterface` object.
	**/
	@:native("AddInterface")
	public static function addInterface(interface_:godot.ARVRInterface):Void;

	/**		
		Clears our current primary interface if it is set to the provided interface.
	**/
	@:native("ClearPrimaryInterfaceIf")
	public static function clearPrimaryInterfaceIf(interface_:godot.ARVRInterface):Void;

	/**		
		Returns the number of interfaces currently registered with the AR/VR server. If your project supports multiple AR/VR platforms, you can look through the available interface, and either present the user with a selection or simply try to initialize each interface and use the first one that returns `true`.
	**/
	@:native("GetInterfaceCount")
	public static function getInterfaceCount():Int;

	/**		
		Removes this interface.
	**/
	@:native("RemoveInterface")
	public static function removeInterface(interface_:godot.ARVRInterface):Void;

	/**		
		Returns the interface registered at a given index in our list of interfaces.
	**/
	@:native("GetInterface")
	public static function getInterface(idx:Int):godot.ARVRInterface;

	/**		
		Returns a list of available interfaces the ID and name of each interface.
	**/
	@:native("GetInterfaces")
	public static function getInterfaces():godot.collections.Array;

	/**		
		Finds an interface by its name. For instance, if your project uses capabilities of an AR/VR platform, you can find the interface for that platform by name and initialize it.
	**/
	@:native("FindInterface")
	public static function findInterface(name:std.String):godot.ARVRInterface;

	/**		
		Returns the number of trackers currently registered.
	**/
	@:native("GetTrackerCount")
	public static function getTrackerCount():Int;

	/**		
		Returns the positional tracker at the given ID.
	**/
	@:native("GetTracker")
	public static function getTracker(idx:Int):godot.ARVRPositionalTracker;

	/**		
		Registers a new `godot.ARVRPositionalTracker` that tracks a spatial location in real space.
	**/
	@:native("AddTracker")
	public static function addTracker(tracker:godot.ARVRPositionalTracker):Void;

	/**		
		Removes this positional tracker.
	**/
	@:native("RemoveTracker")
	public static function removeTracker(tracker:godot.ARVRPositionalTracker):Void;

	@:native("GetPrimaryInterface")
	public static function getPrimaryInterface():godot.ARVRInterface;

	@:native("SetPrimaryInterface")
	public static function setPrimaryInterface(interface_:godot.ARVRInterface):Void;

	/**		
		Returns the absolute timestamp (in μs) of the last `godot.ARVRServer` process callback. The value comes from an internal call to `godot.OS.getTicksUsec`.
	**/
	@:native("GetLastProcessUsec")
	public static function getLastProcessUsec():cs.types.UInt64;

	/**		
		Returns the absolute timestamp (in μs) of the last `godot.ARVRServer` commit of the AR/VR eyes to `godot.VisualServer`. The value comes from an internal call to `godot.OS.getTicksUsec`.
	**/
	@:native("GetLastCommitUsec")
	public static function getLastCommitUsec():cs.types.UInt64;

	/**		
		Returns the duration (in μs) of the last frame. This is computed as the difference between `godot.ARVRServer.getLastCommitUsec` and `godot.ARVRServer.getLastProcessUsec` when committing.
	**/
	@:native("GetLastFrameUsec")
	public static function getLastFrameUsec():cs.types.UInt64;
}
