// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.ArrayMesh.ArrayType")
@:csNative
extern enum ArrayMesh_ArrayType {
	/**		
		`godot.Vector3`, `godot.Vector2`, or `godot.Collections_Array` of vertex positions.
	**/
	Vertex;

	/**		
		`godot.Vector3` of vertex normals.
	**/
	Normal;

	/**		
		`Single` of vertex tangents. Each element in groups of 4 floats, first 3 floats determine the tangent, and the last the binormal direction as -1 or 1.
	**/
	Tangent;

	/**		
		`godot.Color` of vertex colors.
	**/
	Color;

	/**		
		`godot.Vector2` for UV coordinates.
	**/
	TexUv;

	/**		
		`godot.Vector2` for second UV coordinates.
	**/
	TexUv2;

	/**		
		`Single` or `Int` of bone indices. Each element in groups of 4 floats.
	**/
	Bones;

	/**		
		`Single` of bone weights. Each element in groups of 4 floats.
	**/
	Weights;

	/**		
		`Int` of integers used as indices referencing vertices, colors, normals, tangents, and textures. All of those arrays must have the same number of elements as the vertex array. No index can be beyond the vertex array size. When this index array is present, it puts the function into "index mode," where the index selects the *i*'th vertex, normal, tangent, color, UV, etc. This means if you want to have different normals or colors along an edge, you have to duplicate the vertices.
		
		For triangles, the index array is interpreted as triples, referring to the vertices of each triangle. For lines, the index array is in pairs indicating the start and end of each line.
	**/
	Index;

	/**		
		Represents the size of the `godot.ArrayMesh_ArrayType` enum.
	**/
	Max;
}
