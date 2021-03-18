// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.AudioEffectDistortion.ModeEnum")
@:csNative
extern enum AudioEffectDistortion_ModeEnum {
	/**		
		Digital distortion effect which cuts off peaks at the top and bottom of the waveform.
	**/
	Clip;

	Atan;

	/**		
		Low-resolution digital distortion effect. You can use it to emulate the sound of early digital audio devices.
	**/
	Lofi;

	/**		
		Emulates the warm distortion produced by a field effect transistor, which is commonly used in solid-state musical instrument amplifiers.
	**/
	Overdrive;

	/**		
		Waveshaper distortions are used mainly by electronic musicians to achieve an extra-abrasive sound.
	**/
	Waveshape;
}
