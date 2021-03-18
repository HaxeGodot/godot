// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This texture gives access to the camera texture provided by a `godot.CameraFeed`.

Note: Many cameras supply YCbCr images which need to be converted in a shader.
**/
@:libType
@:csNative
@:native("Godot.CameraTexture")
@:autoBuild(godot.Godot.buildUserClass())
extern class CameraTexture extends godot.Texture {
	/**		
		Convenience property that gives access to the active property of the `godot.CameraFeed`.
	**/
	@:native("CameraIsActive")
	public var cameraIsActive:Bool;

	/**		
		Which image within the `godot.CameraFeed` we want access to, important if the camera image is split in a Y and CbCr component.
	**/
	@:native("WhichFeed")
	public var whichFeed:godot.CameraServer_FeedImage;

	/**		
		The ID of the `godot.CameraFeed` for which we want to display the image.
	**/
	@:native("CameraFeedId")
	public var cameraFeedId:Int;

	@:native("new")
	public function new():Void;

	@:native("SetCameraFeedId")
	public function setCameraFeedId(feedId:Int):Void;

	@:native("GetCameraFeedId")
	public function getCameraFeedId():Int;

	@:native("SetWhichFeed")
	public function setWhichFeed(whichFeed:godot.CameraServer_FeedImage):Void;

	@:native("GetWhichFeed")
	public function getWhichFeed():godot.CameraServer_FeedImage;

	@:native("SetCameraActive")
	public function setCameraActive(active:Bool):Void;

	@:native("GetCameraActive")
	public function getCameraActive():Bool;
}
