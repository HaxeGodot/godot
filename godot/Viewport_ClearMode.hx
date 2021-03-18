// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.Viewport.ClearMode")
@:csNative
extern enum Viewport_ClearMode {
	/**		
		Always clear the render target before drawing.
	**/
	Always;

	/**		
		Never clear the render target.
	**/
	Never;

	/**		
		Clear the render target next frame, then switch to .
	**/
	OnlyNextFrame;
}
