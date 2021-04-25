// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
`godot.VideoStream` resource handling the [https://www.webmproject.org/](WebM) video format with `.webm` extension. Both the VP8 and VP9 codecs are supported. The VP8 and VP9 codecs are more efficient than `godot.VideoStreamTheora`, but they require more CPU resources to decode (especially VP9). Both the VP8 and VP9 codecs are decoded on the CPU.

Note: Alpha channel (also known as transparency) is not supported. The video will always appear to have a black background, even if it originally contains an alpha channel.

Note: There are known bugs and performance issues with WebM video playback in Godot. If you run into problems, try using the Ogg Theora format instead: `godot.VideoStreamTheora`
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
