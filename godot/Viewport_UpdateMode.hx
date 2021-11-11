// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.Viewport.UpdateMode")
@:csNative
extern enum Viewport_UpdateMode {
	/**		
		Do not update the render target.
	**/
	Disabled;

	/**		
		Update the render target once, then switch to `godot.Viewport_UpdateMode.disabled`.
	**/
	Once;

	/**		
		Update the render target only when it is visible. This is the default value.
	**/
	WhenVisible;

	/**		
		Always update the render target.
	**/
	Always;
}
