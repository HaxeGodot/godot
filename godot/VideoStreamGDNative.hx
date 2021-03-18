// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
`godot.VideoStream` resource for for video formats implemented via GDNative.

It can be used via [https://github.com/KidRigger/godot-videodecoder](godot-videodecoder) which uses the [https://ffmpeg.org](FFmpeg) library.
**/
@:libType
@:csNative
@:native("Godot.VideoStreamGDNative")
@:autoBuild(godot.Godot.buildUserClass())
extern class VideoStreamGDNative extends godot.VideoStream {
	@:native("File")
	public var file:std.String;

	@:native("new")
	public function new():Void;

	/**		
		Sets the video file that this `godot.VideoStreamGDNative` resource handles. The supported extensions depend on the GDNative plugins used to expose video formats.
	**/
	@:native("SetFile")
	public function setFile(file:std.String):Void;

	/**		
		Returns the video file handled by this `godot.VideoStreamGDNative`.
	**/
	@:native("GetFile")
	public function getFile():std.String;
}
