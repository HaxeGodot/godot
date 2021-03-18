// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.VisualServer.ArrayFormat")
@:csNative
extern enum VisualServer_ArrayFormat {
	/**		
		Flag used to mark a vertex array.
	**/
	FormatVertex;

	/**		
		Flag used to mark a normal array.
	**/
	FormatNormal;

	/**		
		Flag used to mark a tangent array.
	**/
	FormatTangent;

	/**		
		Flag used to mark a color array.
	**/
	FormatColor;

	/**		
		Flag used to mark an UV coordinates array.
	**/
	FormatTexUv;

	/**		
		Flag used to mark an UV coordinates array for the second UV coordinates.
	**/
	FormatTexUv2;

	/**		
		Flag used to mark a bone information array.
	**/
	FormatBones;

	/**		
		Flag used to mark a weights array.
	**/
	FormatWeights;

	/**		
		Flag used to mark an index array.
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
		Used to set flags , , , ,  and  quickly.
	**/
	CompressDefault;

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
}
