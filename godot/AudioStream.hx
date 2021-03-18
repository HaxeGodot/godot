// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Base class for audio streams. Audio streams are used for sound effects and music playback, and support WAV (via `godot.AudioStreamSample`) and OGG (via `godot.AudioStreamOGGVorbis`) file formats.
**/
@:libType
@:csNative
@:native("Godot.AudioStream")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class AudioStream extends godot.Resource {
	/**		
		Returns the length of the audio stream in seconds.
	**/
	@:native("GetLength")
	public function getLength():Single;
}
