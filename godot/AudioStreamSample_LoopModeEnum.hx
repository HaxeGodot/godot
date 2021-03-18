// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.AudioStreamSample.LoopModeEnum")
@:csNative
extern enum AudioStreamSample_LoopModeEnum {
	/**		
		Audio does not loop.
	**/
	Disabled;

	/**		
		Audio loops the data between `godot.AudioStreamSample.loopBegin` and `godot.AudioStreamSample.loopEnd`, playing forward only.
	**/
	Forward;

	/**		
		Audio loops the data between `godot.AudioStreamSample.loopBegin` and `godot.AudioStreamSample.loopEnd`, playing back and forth.
	**/
	PingPong;

	/**		
		Audio loops the data between `godot.AudioStreamSample.loopBegin` and `godot.AudioStreamSample.loopEnd`, playing backward only.
	**/
	Backward;
}
