// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.AnimationNode.FilterAction")
@:csNative
extern enum AnimationNode_FilterAction {
	/**		
		Do not use filtering.
	**/
	Ignore;

	/**		
		Paths matching the filter will be allowed to pass.
	**/
	Pass;

	/**		
		Paths matching the filter will be discarded.
	**/
	Stop;

	/**		
		Paths matching the filter will be blended (by the blend value).
	**/
	Blend;
}
