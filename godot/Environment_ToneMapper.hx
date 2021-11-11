// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.Environment.ToneMapper")
@:csNative
extern enum Environment_ToneMapper {
	/**		
		Linear tonemapper operator. Reads the linear data and passes it on unmodified.
	**/
	Linear;

	/**		
		Reinhardt tonemapper operator. Performs a variation on rendered pixels' colors by this formula: `color = color / (1 + color)`.
	**/
	Reinhardt;

	/**		
		Filmic tonemapper operator.
	**/
	Filmic;

	/**		
		Academy Color Encoding System tonemapper operator. Performs an aproximation of the ACES tonemapping curve.
	**/
	Aces;

	/**		
		High quality Academy Color Encoding System tonemapper operator that matches the industry standard. Performs a more physically accurate curve fit which better simulates how light works in the real world. The color of lights and emissive materials will become lighter as the emissive energy increases, and will eventually become white if the light is bright enough to saturate the camera sensor.
	**/
	AcesFitted;
}
