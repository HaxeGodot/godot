// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.OS.PowerState")
@:csNative
extern enum OS_PowerState {
	/**		
		Unknown powerstate.
	**/
	Unknown;

	/**		
		Unplugged, running on battery.
	**/
	OnBattery;

	/**		
		Plugged in, no battery available.
	**/
	NoBattery;

	/**		
		Plugged in, battery charging.
	**/
	Charging;

	/**		
		Plugged in, battery fully charged.
	**/
	Charged;
}
