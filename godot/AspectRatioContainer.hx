// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Arranges child controls in a way to preserve their aspect ratio automatically whenever the container is resized. Solves the problem where the container size is dynamic and the contents' size needs to adjust accordingly without losing proportions.
**/
@:libType
@:csNative
@:native("Godot.AspectRatioContainer")
@:autoBuild(godot.Godot.buildUserClass())
extern class AspectRatioContainer extends godot.Container {
	/**		
		Specifies the vertical relative position of child controls.
	**/
	@:native("AlignmentVertical")
	public var alignmentVertical:godot.AspectRatioContainer_AlignMode;

	/**		
		Specifies the horizontal relative position of child controls.
	**/
	@:native("AlignmentHorizontal")
	public var alignmentHorizontal:godot.AspectRatioContainer_AlignMode;

	/**		
		The stretch mode used to align child controls.
	**/
	@:native("StretchMode")
	public var stretchMode:godot.AspectRatioContainer_StretchModeEnum;

	/**		
		The aspect ratio to enforce on child controls. This is the width divided by the height. The ratio depends on the `godot.AspectRatioContainer.stretchMode`.
	**/
	@:native("Ratio")
	public var ratio:Single;

	@:native("new")
	public function new():Void;

	@:native("SetRatio")
	public function setRatio(ratio:Single):Void;

	@:native("GetRatio")
	public function getRatio():Single;

	@:native("SetStretchMode")
	public function setStretchMode(stretchMode:godot.AspectRatioContainer_StretchModeEnum):Void;

	@:native("GetStretchMode")
	public function getStretchMode():godot.AspectRatioContainer_StretchModeEnum;

	@:native("SetAlignmentHorizontal")
	public function setAlignmentHorizontal(alignmentHorizontal:godot.AspectRatioContainer_AlignMode):Void;

	@:native("GetAlignmentHorizontal")
	public function getAlignmentHorizontal():godot.AspectRatioContainer_AlignMode;

	@:native("SetAlignmentVertical")
	public function setAlignmentVertical(alignmentVertical:godot.AspectRatioContainer_AlignMode):Void;

	@:native("GetAlignmentVertical")
	public function getAlignmentVertical():godot.AspectRatioContainer_AlignMode;
}
