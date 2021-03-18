// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A `godot.Container` node that holds a `godot.Viewport`, automatically setting its size.

Note: Changing a ViewportContainer's `godot.Control.rectScale` will cause its contents to appear distorted. To change its visual size without causing distortion, adjust the node's margins instead (if it's not already in a container).
**/
@:libType
@:csNative
@:native("Godot.ViewportContainer")
@:autoBuild(godot.Godot.buildUserClass())
extern class ViewportContainer extends godot.Container {
	/**		
		Divides the viewport's effective resolution by this value while preserving its scale. This can be used to speed up rendering.
		
		For example, a 1280×720 viewport with `godot.ViewportContainer.stretchShrink` set to `2` will be rendered at 640×360 while occupying the same size in the container.
		
		Note: `godot.ViewportContainer.stretch` must be `true` for this property to work.
	**/
	@:native("StretchShrink")
	public var stretchShrink:Int;

	/**		
		If `true`, the viewport will be scaled to the control's size.
	**/
	@:native("Stretch")
	public var stretch:Bool;

	@:native("new")
	public function new():Void;

	@:native("SetStretch")
	public function setStretch(enable:Bool):Void;

	@:native("IsStretchEnabled")
	public function isStretchEnabled():Bool;

	@:native("SetStretchShrink")
	public function setStretchShrink(amount:Int):Void;

	@:native("GetStretchShrink")
	public function getStretchShrink():Int;
}
