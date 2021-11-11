// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.VisualScriptFunctionCall.CallModeEnum")
@:csNative
extern enum VisualScriptFunctionCall_CallModeEnum {
	/**		
		The method will be called on this `godot.Object`.
	**/
	Self;

	/**		
		The method will be called on the given `godot.Node` in the scene tree.
	**/
	NodePath;

	/**		
		The method will be called on an instanced node with the given type and script.
	**/
	Instance;

	/**		
		The method will be called on a GDScript basic type (e.g. `godot.Vector2`).
	**/
	BasicType;

	/**		
		The method will be called on a singleton.
	**/
	Singleton;
}
