// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.Mesh.ArrayFormat")
@:csNative
extern enum Mesh_ArrayFormat {
	/**		
		Mesh array contains vertices. All meshes require a vertex array so this should always be present.
	**/
	FormatVertex;

	/**		
		Mesh array contains normals.
	**/
	FormatNormal;

	/**		
		Mesh array contains tangents.
	**/
	FormatTangent;

	/**		
		Mesh array contains colors.
	**/
	FormatColor;

	/**		
		Used internally to calculate other `ARRAY_COMPRESS_*` enum values. Do not use.
	**/
	CompressBase;

	/**		
		Mesh array contains UVs.
	**/
	FormatTexUv;

	/**		
		Mesh array contains second UV.
	**/
	FormatTexUv2;

	/**		
		Mesh array contains bones.
	**/
	FormatBones;

	/**		
		Mesh array contains bone weights.
	**/
	FormatWeights;

	/**		
		Mesh array uses indices.
	**/
	FormatIndex;

	/**		
		Flag used to mark a compressed (half float) vertex array.
	**/
	CompressVertex;

	/**		
		Flag used to mark a compressed (half float) normal array.
	**/
	CompressNormal;

	/**		
		Flag used to mark a compressed (half float) tangent array.
	**/
	CompressTangent;

	/**		
		Flag used to mark a compressed (half float) color array.
	**/
	CompressColor;

	/**		
		Flag used to mark a compressed (half float) UV coordinates array.
	**/
	CompressTexUv;

	/**		
		Flag used to mark a compressed (half float) UV coordinates array for the second UV coordinates.
	**/
	CompressTexUv2;

	/**		
		Flag used to mark a compressed bone array.
	**/
	CompressBones;

	/**		
		Flag used to mark a compressed (half float) weight array.
	**/
	CompressWeights;

	/**		
		Flag used to mark a compressed index array.
	**/
	CompressIndex;

	/**		
		Flag used to mark that the array contains 2D vertices.
	**/
	FlagUse2dVertices;

	/**		
		Flag used to mark that the array uses 16-bit bones instead of 8-bit.
	**/
	FlagUse16BitBones;

	/**		
		Flag used to mark that the array uses an octahedral representation of normal and tangent vectors rather than cartesian.
	**/
	FlagUseOctahedralCompression;

	/**		
		Used to set flags `godot.Mesh_ArrayFormat.compressVertex`, `godot.Mesh_ArrayFormat.compressNormal`, `godot.Mesh_ArrayFormat.compressTangent`, `godot.Mesh_ArrayFormat.compressColor`, `godot.Mesh_ArrayFormat.compressTexUv`, `godot.Mesh_ArrayFormat.compressTexUv2`, `godot.Mesh_ArrayFormat.compressWeights`, and `godot.Mesh_ArrayFormat.flagUseOctahedralCompression` quickly.
	**/
	CompressDefault;
}
