// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Node for back-buffering the currently-displayed screen. The region defined in the BackBufferCopy node is bufferized with the content of the screen it covers, or the entire screen according to the copy mode set. Use the `texture(SCREEN_TEXTURE, ...)` function in your shader scripts to access the buffer.

Note: Since this node inherits from `godot.Node2D` (and not `godot.Control`), anchors and margins won't apply to child `godot.Control`-derived nodes. This can be problematic when resizing the window. To avoid this, add `godot.Control`-derived nodes as siblings to the BackBufferCopy node instead of adding them as children.
**/
@:libType
@:csNative
@:native("Godot.BackBufferCopy")
@:autoBuild(godot.Godot.buildUserClass())
extern class BackBufferCopy extends godot.Node2D {
	/**		
		The area covered by the BackBufferCopy. Only used if `godot.BackBufferCopy.copyMode` is .
	**/
	@:native("Rect")
	public var rect:godot.Rect2;

	/**		
		Buffer mode. See `godot.BackBufferCopy_CopyModeEnum` constants.
	**/
	@:native("CopyMode")
	public var copyMode:godot.BackBufferCopy_CopyModeEnum;

	@:native("new")
	public function new():Void;

	@:native("SetRect")
	public function setRect(rect:godot.Rect2):Void;

	@:native("GetRect")
	public function getRect():godot.Rect2;

	@:native("SetCopyMode")
	public function setCopyMode(copyMode:godot.BackBufferCopy_CopyModeEnum):Void;

	@:native("GetCopyMode")
	public function getCopyMode():godot.BackBufferCopy_CopyModeEnum;
}
