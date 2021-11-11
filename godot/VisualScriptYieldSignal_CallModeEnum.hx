// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.VisualScriptYieldSignal.CallModeEnum")
@:csNative
extern enum VisualScriptYieldSignal_CallModeEnum {
	/**		
		A signal from this `godot.Object` will be used.
	**/
	Self;

	/**		
		A signal from the given `godot.Node` in the scene tree will be used.
	**/
	NodePath;

	/**		
		A signal from an instanced node with the given type will be used.
	**/
	Instance;
}
