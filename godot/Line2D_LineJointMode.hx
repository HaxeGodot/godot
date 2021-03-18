// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.Line2D.LineJointMode")
@:csNative
extern enum Line2D_LineJointMode {
	/**		
		The line's joints will be pointy. If `sharp_limit` is greater than the rotation of a joint, it becomes a bevel joint instead.
	**/
	Sharp;

	/**		
		The line's joints will be bevelled/chamfered.
	**/
	Bevel;

	/**		
		The line's joints will be rounded.
	**/
	Round;
}
