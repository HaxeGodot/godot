// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.VisualServer.EnvironmentSSAOBlur")
@:csNative
extern enum VisualServer_EnvironmentSSAOBlur {
	/**		
		Disables the blur set for SSAO. Will make SSAO look noisier.
	**/
	Disabled;

	/**		
		Perform a 1x1 blur on the SSAO output.
	**/
	Blur1x1;

	/**		
		Performs a 2x2 blur on the SSAO output.
	**/
	Blur2x2;

	/**		
		Performs a 3x3 blur on the SSAO output. Use this for smoothest SSAO.
	**/
	Blur3x3;
}
