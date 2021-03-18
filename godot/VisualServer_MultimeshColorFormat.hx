// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.VisualServer.MultimeshColorFormat")
@:csNative
extern enum VisualServer_MultimeshColorFormat {
	/**		
		MultiMesh does not use per-instance color.
	**/
	None;

	/**		
		MultiMesh color uses 8 bits per component. This packs the color into a single float.
	**/
	Color8bit;

	/**		
		MultiMesh color uses a float per channel.
	**/
	Float;
}
