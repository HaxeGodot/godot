// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.VisualScriptPropertySet.CallMode")
@:csNative
extern enum VisualScriptPropertySet_CallMode {
	/**		
		The property will be set on this `godot.Object`.
	**/
	Self;

	/**		
		The property will be set on the given `godot.Node` in the scene tree.
	**/
	NodePath;

	/**		
		The property will be set on an instanced node with the given type and script.
	**/
	Instance;

	/**		
		The property will be set on a GDScript basic type (e.g. `godot.Vector2`).
	**/
	BasicType;
}
