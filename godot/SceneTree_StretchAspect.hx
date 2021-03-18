// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.SceneTree.StretchAspect")
@:csNative
extern enum SceneTree_StretchAspect {
	/**		
		Fill the window with the content stretched to cover excessive space. Content may appear stretched.
	**/
	Ignore;

	/**		
		Retain the same aspect ratio by padding with black bars on either axis. This prevents distortion.
	**/
	Keep;

	/**		
		Expand vertically. Left/right black bars may appear if the window is too wide.
	**/
	KeepWidth;

	/**		
		Expand horizontally. Top/bottom black bars may appear if the window is too tall.
	**/
	KeepHeight;

	/**		
		Expand in both directions, retaining the same aspect ratio. This prevents distortion while avoiding black bars.
	**/
	Expand;
}
