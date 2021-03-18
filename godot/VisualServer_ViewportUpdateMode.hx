// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.VisualServer.ViewportUpdateMode")
@:csNative
extern enum VisualServer_ViewportUpdateMode {
	/**		
		Do not update the viewport.
	**/
	Disabled;

	/**		
		Update the viewport once then set to disabled.
	**/
	Once;

	/**		
		Update the viewport whenever it is visible.
	**/
	WhenVisible;

	/**		
		Always update the viewport.
	**/
	Always;
}
