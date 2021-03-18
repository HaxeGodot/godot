// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.VisualServer.ParticlesDrawOrder")
@:csNative
extern enum VisualServer_ParticlesDrawOrder {
	/**		
		Draw particles in the order that they appear in the particles array.
	**/
	Index;

	/**		
		Sort particles based on their lifetime.
	**/
	Lifetime;

	/**		
		Sort particles based on their distance to the camera.
	**/
	ViewDepth;
}
