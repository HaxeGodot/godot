// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.VisualScriptPropertyGet.CallMode")
@:csNative
extern enum VisualScriptPropertyGet_CallMode {
	/**		
		The property will be retrieved from this `godot.Object`.
	**/
	Self;

	/**		
		The property will be retrieved from the given `godot.Node` in the scene tree.
	**/
	NodePath;

	/**		
		The property will be retrieved from an instanced node with the given type and script.
	**/
	Instance;

	/**		
		The property will be retrieved from a GDScript basic type (e.g. `godot.Vector2`).
	**/
	BasicType;
}
