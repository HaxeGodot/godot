// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.VisualServer.MultimeshCustomDataFormat")
@:csNative
extern enum VisualServer_MultimeshCustomDataFormat {
	/**		
		MultiMesh does not use custom data.
	**/
	None;

	/**		
		MultiMesh custom data uses 8 bits per component. This packs the 4-component custom data into a single float.
	**/
	Data8bit;

	/**		
		MultiMesh custom data uses a float per component.
	**/
	Float;
}
