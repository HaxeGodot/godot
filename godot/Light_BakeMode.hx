// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.Light.BakeMode")
@:csNative
extern enum Light_BakeMode {
	/**		
		Light is ignored when baking.
		
		Note: Hiding a light does not affect baking.
	**/
	Disabled;

	/**		
		Only indirect lighting will be baked (default).
	**/
	Indirect;

	/**		
		Both direct and indirect light will be baked.
		
		Note: You should hide the light if you don't want it to appear twice (dynamic and baked).
	**/
	All;
}
