// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.ArrayMesh.ArrayFormat")
@:csNative
extern enum ArrayMesh_ArrayFormat {
	/**		
		Array format will include vertices (mandatory).
	**/
	Vertex;

	/**		
		Array format will include normals.
	**/
	Normal;

	/**		
		Array format will include tangents.
	**/
	Tangent;

	/**		
		Array format will include a color array.
	**/
	Color;

	/**		
		Array format will include UVs.
	**/
	TexUv;

	/**		
		Array format will include another set of UVs.
	**/
	TexUv2;

	/**		
		Array format will include bone indices.
	**/
	Bones;

	/**		
		Array format will include bone weights.
	**/
	Weights;

	/**		
		Index array will be used.
	**/
	Index;
}
