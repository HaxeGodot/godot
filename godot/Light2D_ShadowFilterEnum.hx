// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.Light2D.ShadowFilterEnum")
@:csNative
extern enum Light2D_ShadowFilterEnum {
	/**		
		No filter applies to the shadow map. See `godot.Light2D.shadowFilter`.
	**/
	None;

	/**		
		Percentage closer filtering (3 samples) applies to the shadow map. See `godot.Light2D.shadowFilter`.
	**/
	Pcf3;

	/**		
		Percentage closer filtering (5 samples) applies to the shadow map. See `godot.Light2D.shadowFilter`.
	**/
	Pcf5;

	/**		
		Percentage closer filtering (7 samples) applies to the shadow map. See `godot.Light2D.shadowFilter`.
	**/
	Pcf7;

	/**		
		Percentage closer filtering (9 samples) applies to the shadow map. See `godot.Light2D.shadowFilter`.
	**/
	Pcf9;

	/**		
		Percentage closer filtering (13 samples) applies to the shadow map. See `godot.Light2D.shadowFilter`.
	**/
	Pcf13;
}
