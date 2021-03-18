// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.VisualServer.ScenarioDebugMode")
@:csNative
extern enum VisualServer_ScenarioDebugMode {
	/**		
		Do not use a debug mode.
	**/
	Disabled;

	/**		
		Draw all objects as wireframe models.
	**/
	Wireframe;

	/**		
		Draw all objects in a way that displays how much overdraw is occurring. Overdraw occurs when a section of pixels is drawn and shaded and then another object covers it up. To optimize a scene, you should reduce overdraw.
	**/
	Overdraw;

	/**		
		Draw all objects without shading. Equivalent to setting all objects shaders to `unshaded`.
	**/
	Shadeless;
}
