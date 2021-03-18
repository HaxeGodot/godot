// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.Environment.BGMode")
@:csNative
extern enum Environment_BGMode {
	/**		
		Clears the background using the clear color defined in .
	**/
	ClearColor;

	/**		
		Clears the background using a custom clear color.
	**/
	Color;

	/**		
		Displays a user-defined sky in the background.
	**/
	Sky;

	/**		
		Clears the background using a custom clear color and allows defining a sky for shading and reflection. This mode is slightly faster than  and should be preferred in scenes where reflections can be visible, but the sky itself never is (e.g. top-down camera).
	**/
	ColorSky;

	/**		
		Displays a `godot.CanvasLayer` in the background.
	**/
	Canvas;

	/**		
		Keeps on screen every pixel drawn in the background. This is the fastest background mode, but it can only be safely used in fully-interior scenes (no visible sky or sky reflections). If enabled in a scene where the background is visible, "ghost trail" artifacts will be visible when moving the camera.
	**/
	Keep;

	/**		
		Displays a camera feed in the background.
	**/
	CameraFeed;

	/**		
		Represents the size of the `godot.Environment_BGMode` enum.
	**/
	Max;
}
