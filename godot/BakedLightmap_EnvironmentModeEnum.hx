// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.BakedLightmap.EnvironmentModeEnum")
@:csNative
extern enum BakedLightmap_EnvironmentModeEnum {
	/**		
		No environment is used during baking.
	**/
	Disabled;

	/**		
		The baked environment is automatically picked from the current scene.
	**/
	Scene;

	/**		
		A custom sky is used as environment during baking.
	**/
	CustomSky;

	/**		
		A custom solid color is used as environment during baking.
	**/
	CustomColor;
}
