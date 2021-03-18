// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
`godot.VideoStream` resource handling the [https://www.theora.org/](Ogg Theora) video format with `.ogv` extension.
**/
@:libType
@:csNative
@:native("Godot.VideoStreamTheora")
@:autoBuild(godot.Godot.buildUserClass())
extern class VideoStreamTheora extends godot.VideoStream {
	@:native("File")
	public var file:std.String;

	@:native("new")
	public function new():Void;

	/**		
		Sets the Ogg Theora video file that this `godot.VideoStreamTheora` resource handles. The `file` name should have the `.o` extension.
	**/
	@:native("SetFile")
	public function setFile(file:std.String):Void;

	/**		
		Returns the Ogg Theora video file handled by this `godot.VideoStreamTheora`.
	**/
	@:native("GetFile")
	public function getFile():std.String;
}
