// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.VisualShaderNodeTransformMult.OperatorEnum")
@:csNative
extern enum VisualShaderNodeTransformMult_OperatorEnum {
	/**		
		Multiplies transform `a` by the transform `b`.
	**/
	Axb;

	/**		
		Multiplies transform `b` by the transform `a`.
	**/
	Bxa;

	/**		
		Performs a component-wise multiplication of transform `a` by the transform `b`.
	**/
	AxbComp;

	/**		
		Performs a component-wise multiplication of transform `b` by the transform `a`.
	**/
	BxaComp;
}
