// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.VisualShaderNodeTransformVecMult.OperatorEnum")
@:csNative
extern enum VisualShaderNodeTransformVecMult_OperatorEnum {
	/**		
		Multiplies transform `a` by the vector `b`.
	**/
	Axb;

	/**		
		Multiplies vector `b` by the transform `a`.
	**/
	Bxa;

	/**		
		Multiplies transform `a` by the vector `b`, skipping the last row and column of the transform.
	**/
	Op3x3Axb;

	/**		
		Multiplies vector `b` by the transform `a`, skipping the last row and column of the transform.
	**/
	Op3x3Bxa;
}
