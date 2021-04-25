// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
StyleBox is `godot.Resource` that provides an abstract base class for drawing stylized boxes for the UI. StyleBoxes are used for drawing the styles of buttons, line edit backgrounds, tree backgrounds, etc. and also for testing a transparency mask for pointer signals. If mask test fails on a StyleBox assigned as mask to a control, clicks and motion signals will go through it to the one below.

Note: For children of `godot.Control` that have Theme Properties, the `focus` `godot.StyleBox` is displayed over the `normal`, `hover` or `pressed` `godot.StyleBox`. This makes the `focus` `godot.StyleBox` more reusable across different nodes.
**/
@:libType
@:csNative
@:native("Godot.StyleBox")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class StyleBox extends godot.Resource {
	/**		
		The bottom margin for the contents of this style box. Increasing this value reduces the space available to the contents from the bottom.
		
		If this value is negative, it is ignored and a child-specific margin is used instead. For example for `godot.StyleBoxFlat` the border thickness (if any) is used instead.
		
		It is up to the code using this style box to decide what these contents are: for example, a `godot.Button` respects this content margin for the textual contents of the button.
		
		`godot.StyleBox.getMargin` should be used to fetch this value as consumer instead of reading these properties directly. This is because it correctly respects negative values and the fallback mentioned above.
	**/
	@:native("ContentMarginBottom")
	public var contentMarginBottom:Single;

	/**		
		The top margin for the contents of this style box. Increasing this value reduces the space available to the contents from the top.
		
		Refer to `godot.StyleBox.contentMarginBottom` for extra considerations.
	**/
	@:native("ContentMarginTop")
	public var contentMarginTop:Single;

	/**		
		The right margin for the contents of this style box. Increasing this value reduces the space available to the contents from the right.
		
		Refer to `godot.StyleBox.contentMarginBottom` for extra considerations.
	**/
	@:native("ContentMarginRight")
	public var contentMarginRight:Single;

	/**		
		The left margin for the contents of this style box.Increasing this value reduces the space available to the contents from the left.
		
		Refer to `godot.StyleBox.contentMarginBottom` for extra considerations.
	**/
	@:native("ContentMarginLeft")
	public var contentMarginLeft:Single;

	/**		
		Test a position in a rectangle, return whether it passes the mask test.
	**/
	@:native("TestMask")
	public function testMask(point:godot.Vector2, rect:godot.Rect2):Bool;

	/**		
		Sets the default value of the specified `godot.Margin` to given `offset` in pixels.
	**/
	@:native("SetDefaultMargin")
	public function setDefaultMargin(margin:godot.Margin, offset:Single):Void;

	/**		
		Returns the default value of the specified `godot.Margin`.
	**/
	@:native("GetDefaultMargin")
	public function getDefaultMargin(margin:godot.Margin):Single;

	/**		
		Returns the content margin offset for the specified `godot.Margin`.
		
		Positive values reduce size inwards, unlike `godot.Control`'s margin values.
	**/
	@:native("GetMargin")
	public function getMargin(margin:godot.Margin):Single;

	/**		
		Returns the minimum size that this stylebox can be shrunk to.
	**/
	@:native("GetMinimumSize")
	public function getMinimumSize():godot.Vector2;

	/**		
		Returns the size of this `godot.StyleBox` without the margins.
	**/
	@:native("GetCenterSize")
	public function getCenterSize():godot.Vector2;

	/**		
		Returns the "offset" of a stylebox. This helper function returns a value equivalent to `Vector2(style.get_margin(MARGIN_LEFT), style.get_margin(MARGIN_TOP))`.
	**/
	@:native("GetOffset")
	public function getOffset():godot.Vector2;

	/**		
		Returns the `godot.CanvasItem` that handles its  or `godot.CanvasItem._Draw` callback at this moment.
	**/
	@:native("GetCurrentItemDrawn")
	public function getCurrentItemDrawn():godot.CanvasItem;

	/**		
		Draws this stylebox using a `godot.CanvasItem` with given `godot.RID`.
		
		You can get a `godot.RID` value using `godot.Object.getInstanceId` on a `godot.CanvasItem`-derived node.
	**/
	@:native("Draw")
	public function draw(canvasItem:godot.RID, rect:godot.Rect2):Void;
}
