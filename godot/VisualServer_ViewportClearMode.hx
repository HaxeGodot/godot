// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.VisualServer.ViewportClearMode")
@:csNative
extern enum VisualServer_ViewportClearMode {
	/**		
		The viewport is always cleared before drawing.
	**/
	Always;

	/**		
		The viewport is never cleared before drawing.
	**/
	Never;

	/**		
		The viewport is cleared once, then the clear mode is set to .
	**/
	OnlyNextFrame;
}
