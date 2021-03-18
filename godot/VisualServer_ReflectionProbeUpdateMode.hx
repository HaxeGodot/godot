// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.VisualServer.ReflectionProbeUpdateMode")
@:csNative
extern enum VisualServer_ReflectionProbeUpdateMode {
	/**		
		Reflection probe will update reflections once and then stop.
	**/
	Once;

	/**		
		Reflection probe will update each frame. This mode is necessary to capture moving objects.
	**/
	Always;
}
