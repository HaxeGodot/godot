// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
The `godot.CameraServer` keeps track of different cameras accessible in Godot. These are external cameras such as webcams or the cameras on your phone.

It is notably used to provide AR modules with a video feed from the camera.
**/
@:libType
@:csNative
@:native("Godot.CameraServer")
@:autoBuild(godot.Godot.buildUserClass())
extern class CameraServer {
	@:native("Singleton")
	public static var SINGLETON(default, never):godot.Object;

	/**		
		Returns the `godot.CameraFeed` with this id.
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
		Adds a camera feed to the camera server.
	**/
	@:native("AddFeed")
	public static function addFeed(feed:godot.CameraFeed):Void;

	/**		
		Removes a `godot.CameraFeed`.
	**/
	@:native("RemoveFeed")
	public static function removeFeed(feed:godot.CameraFeed):Void;
}
