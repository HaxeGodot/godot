// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.Viewport.MSAA")
@:csNative
extern enum Viewport_MSAA {
	/**		
		Multisample anti-aliasing mode disabled. This is the default value.
	**/
	Disabled;

	/**		
		Use 2x Multisample Antialiasing.
	**/
	Msaa2x;

	/**		
		Use 4x Multisample Antialiasing.
	**/
	Msaa4x;

	/**		
		Use 8x Multisample Antialiasing. Likely unsupported on low-end and older hardware.
	**/
	Msaa8x;

	/**		
		Use 16x Multisample Antialiasing. Likely unsupported on medium and low-end hardware.
	**/
	Msaa16x;
}
