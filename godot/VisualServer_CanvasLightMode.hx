// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.VisualServer.CanvasLightMode")
@:csNative
extern enum VisualServer_CanvasLightMode {
	/**		
		Adds light color additive to the canvas.
	**/
	Add;

	/**		
		Adds light color subtractive to the canvas.
	**/
	Sub;

	/**		
		The light adds color depending on transparency.
	**/
	Mix;

	/**		
		The light adds color depending on mask.
	**/
	Mask;
}
