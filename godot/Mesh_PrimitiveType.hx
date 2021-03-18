// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.Mesh.PrimitiveType")
@:csNative
extern enum Mesh_PrimitiveType {
	/**		
		Render array as points (one vertex equals one point).
	**/
	Points;

	/**		
		Render array as lines (every two vertices a line is created).
	**/
	Lines;

	/**		
		Render array as line strip.
	**/
	LineStrip;

	/**		
		Render array as line loop (like line strip, but closed).
	**/
	LineLoop;

	/**		
		Render array as triangles (every three vertices a triangle is created).
	**/
	Triangles;

	/**		
		Render array as triangle strips.
	**/
	TriangleStrip;

	/**		
		Render array as triangle fans.
	**/
	TriangleFan;
}
