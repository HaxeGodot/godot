// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.AudioEffectSpectrumAnalyzer.FFT_Size")
@:csNative
extern enum AudioEffectSpectrumAnalyzer_FFT_Size {
	/**		
		Use a buffer of 256 samples for the Fast Fourier transform. Lowest latency, but least stable over time.
	**/
	Size256;

	/**		
		Use a buffer of 512 samples for the Fast Fourier transform. Low latency, but less stable over time.
	**/
	Size512;

	/**		
		Use a buffer of 1024 samples for the Fast Fourier transform. This is a compromise between latency and stability over time.
	**/
	Size1024;

	/**		
		Use a buffer of 2048 samples for the Fast Fourier transform. High latency, but stable over time.
	**/
	Size2048;

	/**		
		Use a buffer of 4096 samples for the Fast Fourier transform. Highest latency, but most stable over time.
	**/
	Size4096;

	/**		
		Represents the size of the `godot.AudioEffectSpectrumAnalyzer_FFT_Size` enum.
	**/
	Max;
}
