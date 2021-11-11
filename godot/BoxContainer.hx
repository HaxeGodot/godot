// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Arranges child controls vertically or horizontally, and rearranges the controls automatically when their minimum size changes.
**/
@:libType
@:csNative
@:native("Godot.BoxContainer")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class BoxContainer extends godot.Container {
	/**		
		The alignment of the container's children (must be one of `godot.BoxContainer_AlignMode.begin`, `godot.BoxContainer_AlignMode.center` or `godot.BoxContainer_AlignMode.end`).
	**/
	@:native("Alignment")
	public var alignment:godot.BoxContainer_AlignMode;

	/**		
		Adds a control to the box as a spacer. If `true`, `begin` will insert the spacer control in front of other children.
	**/
	@:native("AddSpacer")
	public function addSpacer(begin:Bool):Void;

	@:native("GetAlignment")
	public function getAlignment():godot.BoxContainer_AlignMode;

	@:native("SetAlignment")
	public function setAlignment(alignment:godot.BoxContainer_AlignMode):Void;
}
