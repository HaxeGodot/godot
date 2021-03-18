// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A camera feed gives you access to a single physical camera attached to your device. When enabled, Godot will start capturing frames from the camera which can then be used.

Note: Many cameras will return YCbCr images which are split into two textures and need to be combined in a shader. Godot does this automatically for you if you set the environment to show the camera image in the background.
**/
@:libType
@:csNative
@:native("Godot.CameraFeed")
@:autoBuild(godot.Godot.buildUserClass())
extern class CameraFeed extends godot.Reference {
	/**		
		The transform applied to the camera's image.
	**/
	@:native("FeedTransform")
	public var feedTransform:godot.Transform2D;

	/**		
		If `true`, the feed is active.
	**/
	@:native("FeedIsActive")
	public var feedIsActive:Bool;

	@:native("new")
	public function new():Void;

	/**		
		Returns the unique ID for this feed.
	**/
	@:native("GetId")
	public function getId():Int;

	/**		
		Returns the camera's name.
	**/
	@:native("GetName")
	public function getName():std.String;

	@:native("IsActive")
	public function isActive():Bool;

	@:native("SetActive")
	public function setActive(active:Bool):Void;

	/**		
		Returns the position of camera on the device.
	**/
	@:native("GetPosition")
	public function getPosition():godot.CameraFeed_FeedPosition;

	@:native("GetTransform")
	public function getTransform():godot.Transform2D;

	@:native("SetTransform")
	public function setTransform(transform:godot.Transform2D):Void;
}
