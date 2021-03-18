// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.SceneTree.StretchMode")
@:csNative
extern enum SceneTree_StretchMode {
	/**		
		No stretching.
	**/
	Disabled;

	/**		
		Render stretching in higher resolution (interpolated).
	**/
	Mode2d;

	/**		
		Keep the specified display resolution. No interpolation. Content may appear pixelated.
	**/
	Viewport;
}
