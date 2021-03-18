// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.VisualServer.LightDirectionalShadowMode")
@:csNative
extern enum VisualServer_LightDirectionalShadowMode {
	/**		
		Use orthogonal shadow projection for directional light.
	**/
	Orthogonal;

	/**		
		Use 2 splits for shadow projection when using directional light.
	**/
	Parallel2Splits;

	/**		
		Use 4 splits for shadow projection when using directional light.
	**/
	Parallel4Splits;
}
