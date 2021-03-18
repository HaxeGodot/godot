// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.VisualServer.RenderInfo")
@:csNative
extern enum VisualServer_RenderInfo {
	/**		
		The amount of objects in the frame.
	**/
	ObjectsInFrame;

	/**		
		The amount of vertices in the frame.
	**/
	VerticesInFrame;

	/**		
		The amount of modified materials in the frame.
	**/
	MaterialChangesInFrame;

	/**		
		The amount of shader rebinds in the frame.
	**/
	ShaderChangesInFrame;

	/**		
		The amount of surface changes in the frame.
	**/
	SurfaceChangesInFrame;

	/**		
		The amount of draw calls in frame.
	**/
	DrawCallsInFrame;

	/**		
		The amount of 2d items in the frame.
	**/
	Info2dItemsInFrame;

	/**		
		The amount of 2d draw calls in frame.
	**/
	Info2dDrawCallsInFrame;

	/**		
		Unimplemented in the GLES2 and GLES3 rendering backends, always returns 0.
	**/
	UsageVideoMemTotal;

	/**		
		The amount of video memory used, i.e. texture and vertex memory combined.
	**/
	VideoMemUsed;

	/**		
		The amount of texture memory used.
	**/
	TextureMemUsed;

	/**		
		The amount of vertex memory used.
	**/
	VertexMemUsed;
}
