// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.VisualServer.ViewportRenderInfo")
@:csNative
extern enum VisualServer_ViewportRenderInfo {
	/**		
		Number of objects drawn in a single frame.
	**/
	ObjectsInFrame;

	/**		
		Number of vertices drawn in a single frame.
	**/
	VerticesInFrame;

	/**		
		Number of material changes during this frame.
	**/
	MaterialChangesInFrame;

	/**		
		Number of shader changes during this frame.
	**/
	ShaderChangesInFrame;

	/**		
		Number of surface changes during this frame.
	**/
	SurfaceChangesInFrame;

	/**		
		Number of draw calls during this frame.
	**/
	DrawCallsInFrame;

	/**		
		Number of 2d items drawn this frame.
	**/
	Info2dItemsInFrame;

	/**		
		Number of 2d draw calls during this frame.
	**/
	Info2dDrawCallsInFrame;

	/**		
		Represents the size of the `godot.VisualServer_ViewportRenderInfo` enum.
	**/
	Max;
}
