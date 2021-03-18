// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.AudioEffectSpectrumAnalyzerInstance")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class AudioEffectSpectrumAnalyzerInstance extends godot.AudioEffectInstance {
	#if doc_gen
	@:native("GetMagnitudeForFrequencyRange")
	public function getMagnitudeForFrequencyRange(fromHz:Single, toHz:Single, ?mode:godot.AudioEffectSpectrumAnalyzerInstance_MagnitudeMode):godot.Vector2;
	#else
	@:native("GetMagnitudeForFrequencyRange")
	public overload function getMagnitudeForFrequencyRange(fromHz:Single, toHz:Single):godot.Vector2;

	@:native("GetMagnitudeForFrequencyRange")
	public overload function getMagnitudeForFrequencyRange(fromHz:Single, toHz:Single, mode:godot.AudioEffectSpectrumAnalyzerInstance_MagnitudeMode):godot.Vector2;
	#end
}
