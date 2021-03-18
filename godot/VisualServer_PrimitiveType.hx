// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.VisualServer.PrimitiveType")
@:csNative
extern enum VisualServer_PrimitiveType {
	/**		
		Primitive to draw consists of points.
	**/
	Points;

	/**		
		Primitive to draw consists of lines.
	**/
	Lines;

	/**		
		Primitive to draw consists of a line strip from start to end.
	**/
	LineStrip;

	/**		
		Primitive to draw consists of a line loop (a line strip with a line between the last and the first vertex).
	**/
	LineLoop;

	/**		
		Primitive to draw consists of triangles.
	**/
	Triangles;

	/**		
		Primitive to draw consists of a triangle strip (the last 3 vertices are always combined to make a triangle).
	**/
	TriangleStrip;

	/**		
		Primitive to draw consists of a triangle strip (the last 2 vertices are always combined with the first to make a triangle).
	**/
	TriangleFan;

	/**		
		Represents the size of the `godot.VisualServer_PrimitiveType` enum.
	**/
	Max;
}
