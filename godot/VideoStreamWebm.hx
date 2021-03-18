// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
`godot.VideoStream` resource handling the [https://www.webmproject.org/](WebM) video format with `.webm` extension.
**/
@:libType
@:csNative
@:native("Godot.VideoStreamWebm")
@:autoBuild(godot.Godot.buildUserClass())
extern class VideoStreamWebm extends godot.VideoStream {
	@:native("File")
	public var file:std.String;

	@:native("new")
	public function new():Void;

	/**		
		Sets the WebM video file that this `godot.VideoStreamWebm` resource handles. The `file` name should have the `.webm` extension.
	**/
	@:native("SetFile")
	public function setFile(file:std.String):Void;

	/**		
		Returns the WebM video file handled by this `godot.VideoStreamWebm`.
	**/
	@:native("GetFile")
	public function getFile():std.String;
}
