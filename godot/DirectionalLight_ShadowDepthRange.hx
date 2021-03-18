// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.DirectionalLight.ShadowDepthRange")
@:csNative
extern enum DirectionalLight_ShadowDepthRange {
	/**		
		Keeps the shadow stable when the camera moves, at the cost of lower effective shadow resolution.
	**/
	Stable;

	/**		
		Tries to achieve maximum shadow resolution. May result in saw effect on shadow edges. This mode typically works best in games where the camera will often move at high speeds, such as most racing games.
	**/
	Optimized;
}
