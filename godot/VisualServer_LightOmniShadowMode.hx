// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.VisualServer.LightOmniShadowMode")
@:csNative
extern enum VisualServer_LightOmniShadowMode {
	/**		
		Use a dual paraboloid shadow map for omni lights.
	**/
	DualParaboloid;

	/**		
		Use a cubemap shadow map for omni lights. Slower but better quality than dual paraboloid.
	**/
	Cube;
}
