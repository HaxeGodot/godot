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
		Academy Color Encoding System tonemapper operator.
	**/
	Aces;
}
