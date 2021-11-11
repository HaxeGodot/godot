// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This audio stream does not play back sounds, but expects a script to generate audio data for it instead. See also `godot.AudioStreamGeneratorPlayback`.

See also `godot.AudioEffectSpectrumAnalyzer` for performing real-time audio spectrum analysis.

Note: Due to performance constraints, this class is best used from C# or from a compiled language via GDNative. If you still want to use this class from GDScript, consider using a lower `godot.AudioStreamGenerator.mixRate` such as 11,025 Hz or 22,050 Hz.
**/
@:libType
@:csNative
@:native("Godot.AudioStreamGenerator")
@:autoBuild(godot.Godot.buildUserClass())
extern class AudioStreamGenerator extends godot.AudioStream {
	/**		
		The length of the buffer to generate (in seconds). Lower values result in less latency, but require the script to generate audio data faster, resulting in increased CPU usage and more risk for audio cracking if the CPU can't keep up.
	**/
	@:native("BufferLength")
	public var bufferLength:Single;

	/**		
		The sample rate to use (in Hz). Higher values are more demanding for the CPU to generate, but result in better quality.
		
		In games, common sample rates in use are `11025`, `16000`, `22050`, `32000`, `44100`, and `48000`.
		
		According to the [https://en.wikipedia.org/wiki/Nyquist%E2%80%93Shannon_sampling_theorem](Nyquist-Shannon sampling theorem), there is no quality difference to human hearing when going past 40,000 Hz (since most humans can only hear up to ~20,000 Hz, often less). If you are generating lower-pitched sounds such as voices, lower sample rates such as `32000` or `22050` may be usable with no loss in quality.
	**/
	@:native("MixRate")
	public var mixRate:Single;

	@:native("new")
	public function new():Void;

	@:native("SetMixRate")
	public function setMixRate(hz:Single):Void;

	@:native("GetMixRate")
	public function getMixRate():Single;

	@:native("SetBufferLength")
	public function setBufferLength(seconds:Single):Void;

	@:native("GetBufferLength")
	public function getBufferLength():Single;
}
