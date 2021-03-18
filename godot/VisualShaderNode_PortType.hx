// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.VisualShaderNode.PortType")
@:csNative
extern enum VisualShaderNode_PortType {
	/**		
		Floating-point scalar. Translated to `float` type in shader code.
	**/
	Scalar;

	/**		
		3D vector of floating-point values. Translated to `vec3` type in shader code.
	**/
	Vector;

	/**		
		Boolean type. Translated to `bool` type in shader code.
	**/
	Boolean;

	/**		
		Transform type. Translated to `mat4` type in shader code.
	**/
	Transform;

	/**		
		Sampler type. Translated to reference of sampler uniform in shader code. Can only be used for input ports in non-uniform nodes.
	**/
	Sampler;

	/**		
		Represents the size of the `godot.VisualShaderNode_PortType` enum.
	**/
	Max;
}
