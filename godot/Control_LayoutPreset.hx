// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.Control.LayoutPreset")
@:csNative
extern enum Control_LayoutPreset {
	/**		
		Snap all 4 anchors to the top-left of the parent control's bounds. Use with `godot.Control.setAnchorsPreset`.
	**/
	TopLeft;

	/**		
		Snap all 4 anchors to the top-right of the parent control's bounds. Use with `godot.Control.setAnchorsPreset`.
	**/
	TopRight;

	/**		
		Snap all 4 anchors to the bottom-left of the parent control's bounds. Use with `godot.Control.setAnchorsPreset`.
	**/
	BottomLeft;

	/**		
		Snap all 4 anchors to the bottom-right of the parent control's bounds. Use with `godot.Control.setAnchorsPreset`.
	**/
	BottomRight;

	/**		
		Snap all 4 anchors to the center of the left edge of the parent control's bounds. Use with `godot.Control.setAnchorsPreset`.
	**/
	CenterLeft;

	/**		
		Snap all 4 anchors to the center of the top edge of the parent control's bounds. Use with `godot.Control.setAnchorsPreset`.
	**/
	CenterTop;

	/**		
		Snap all 4 anchors to the center of the right edge of the parent control's bounds. Use with `godot.Control.setAnchorsPreset`.
	**/
	CenterRight;

	/**		
		Snap all 4 anchors to the center of the bottom edge of the parent control's bounds. Use with `godot.Control.setAnchorsPreset`.
	**/
	CenterBottom;

	/**		
		Snap all 4 anchors to the center of the parent control's bounds. Use with `godot.Control.setAnchorsPreset`.
	**/
	Center;

	/**		
		Snap all 4 anchors to the left edge of the parent control. The left margin becomes relative to the left edge and the top margin relative to the top left corner of the node's parent. Use with `godot.Control.setAnchorsPreset`.
	**/
	LeftWide;

	/**		
		Snap all 4 anchors to the top edge of the parent control. The left margin becomes relative to the top left corner, the top margin relative to the top edge, and the right margin relative to the top right corner of the node's parent. Use with `godot.Control.setAnchorsPreset`.
	**/
	TopWide;

	/**		
		Snap all 4 anchors to the right edge of the parent control. The right margin becomes relative to the right edge and the top margin relative to the top right corner of the node's parent. Use with `godot.Control.setAnchorsPreset`.
	**/
	RightWide;

	/**		
		Snap all 4 anchors to the bottom edge of the parent control. The left margin becomes relative to the bottom left corner, the bottom margin relative to the bottom edge, and the right margin relative to the bottom right corner of the node's parent. Use with `godot.Control.setAnchorsPreset`.
	**/
	BottomWide;

	/**		
		Snap all 4 anchors to a vertical line that cuts the parent control in half. Use with `godot.Control.setAnchorsPreset`.
	**/
	VcenterWide;

	/**		
		Snap all 4 anchors to a horizontal line that cuts the parent control in half. Use with `godot.Control.setAnchorsPreset`.
	**/
	HcenterWide;

	/**		
		Snap all 4 anchors to the respective corners of the parent control. Set all 4 margins to 0 after you applied this preset and the `godot.Control` will fit its parent control. This is equivalent to the "Full Rect" layout option in the editor. Use with `godot.Control.setAnchorsPreset`.
	**/
	Wide;
}
