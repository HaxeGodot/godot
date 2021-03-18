// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.VisualServer.InstanceType")
@:csNative
extern enum VisualServer_InstanceType {
	/**		
		The instance does not have a type.
	**/
	None;

	/**		
		The instance is a mesh.
	**/
	Mesh;

	/**		
		The instance is a multimesh.
	**/
	Multimesh;

	/**		
		The instance is an immediate geometry.
	**/
	Immediate;

	/**		
		The instance is a particle emitter.
	**/
	Particles;

	/**		
		The instance is a light.
	**/
	Light;

	/**		
		The instance is a reflection probe.
	**/
	ReflectionProbe;

	/**		
		The instance is a GI probe.
	**/
	GiProbe;

	/**		
		The instance is a lightmap capture.
	**/
	LightmapCapture;

	/**		
		Represents the size of the `godot.VisualServer_InstanceType` enum.
	**/
	Max;

	/**		
		A combination of the flags of geometry instances (mesh, multimesh, immediate and particles).
	**/
	GeometryMask;
}
