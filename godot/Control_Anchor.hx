// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.Control.Anchor")
@:csNative
extern enum Control_Anchor {
	/**		
		Snaps one of the 4 anchor's sides to the origin of the node's `Rect`, in the top left. Use it with one of the `anchor_*` member variables, like `godot.Control.anchorLeft`. To change all 4 anchors at once, use `godot.Control.setAnchorsPreset`.
	**/
	Begin;

	/**		
		Snaps one of the 4 anchor's sides to the end of the node's `Rect`, in the bottom right. Use it with one of the `anchor_*` member variables, like `godot.Control.anchorLeft`. To change all 4 anchors at once, use `godot.Control.setAnchorsPreset`.
	**/
	End;
}
