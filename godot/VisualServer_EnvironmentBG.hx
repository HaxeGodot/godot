// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.VisualServer.EnvironmentBG")
@:csNative
extern enum VisualServer_EnvironmentBG {
	/**		
		Use the clear color as background.
	**/
	ClearColor;

	/**		
		Use a specified color as the background.
	**/
	Color;

	/**		
		Use a sky resource for the background.
	**/
	Sky;

	/**		
		Use a custom color for background, but use a sky for shading and reflections.
	**/
	ColorSky;

	/**		
		Use a specified canvas layer as the background. This can be useful for instantiating a 2D scene in a 3D world.
	**/
	Canvas;

	/**		
		Do not clear the background, use whatever was rendered last frame as the background.
	**/
	Keep;

	/**		
		Represents the size of the `godot.VisualServer_EnvironmentBG` enum.
	**/
	Max;
}
