// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
The `godot.CameraServer` keeps track of different cameras accessible in Godot. These are external cameras such as webcams or the cameras on your phone.

It is notably used to provide AR modules with a video feed from the camera.

Note: This class is currently only implemented on macOS and iOS. On other platforms, no `godot.CameraFeed`s will be available.
**/
@:libType
@:csNative
@:native("Godot.CameraServer")
@:autoBuild(godot.Godot.buildUserClass())
extern class CameraServer {
	/**
		`camera_feed_added` signal.
	**/
	public static var onCameraFeedAdded(get, never):Signal<(id:Int)->Void>;
	@:dox(hide) @:noCompletion inline static function get_onCameraFeedAdded():Signal<(id:Int)->Void> {
		return new Signal(SINGLETON, "camera_feed_added", Signal.SignalHandlerIntVoid.connectSignal, Signal.SignalHandlerIntVoid.disconnectSignal, Signal.SignalHandlerIntVoid.isSignalConnected);
	}

	/**
		`camera_feed_removed` signal.
	**/
	public static var onCameraFeedRemoved(get, never):Signal<(id:Int)->Void>;
	@:dox(hide) @:noCompletion inline static function get_onCameraFeedRemoved():Signal<(id:Int)->Void> {
		return new Signal(SINGLETON, "camera_feed_removed", Signal.SignalHandlerIntVoid.connectSignal, Signal.SignalHandlerIntVoid.disconnectSignal, Signal.SignalHandlerIntVoid.isSignalConnected);
	}

	@:native("Singleton") @:readOnly
	public static var SINGLETON(default, never):godot.Object;

	/**		
		Returns the `godot.CameraFeed` corresponding to the camera with the given `index`.
	**/
	@:native("GetFeed")
	public static function getFeed(index:Int):godot.CameraFeed;

	/**		
		Returns the number of `godot.CameraFeed`s registered.
	**/
	@:native("GetFeedCount")
	public static function getFeedCount():Int;

	/**		
		Returns an array of `godot.CameraFeed`s.
	**/
	@:native("Feeds")
	public static function feeds():godot.collections.Array;

	/**		
		Adds the camera `feed` to the camera server.
	**/
	@:native("AddFeed")
	public static function addFeed(feed:godot.CameraFeed):Void;

	/**		
		Removes the specified camera `feed`.
	**/
	@:native("RemoveFeed")
	public static function removeFeed(feed:godot.CameraFeed):Void;
}
