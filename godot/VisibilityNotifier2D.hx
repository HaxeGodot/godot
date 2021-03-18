// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
The VisibilityNotifier2D detects when it is visible on the screen. It also notifies when its bounding rectangle enters or exits the screen or a viewport.

If you want nodes to be disabled automatically when they exit the screen, use `godot.VisibilityEnabler2D` instead.

Note: For performance reasons, VisibilityNotifier2D uses an approximate heuristic with precision determined by . If you need precise visibility checking, use another method such as adding an `godot.Area2D` node as a child of a `godot.Camera2D` node.
**/
@:libType
@:csNative
@:native("Godot.VisibilityNotifier2D")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisibilityNotifier2D extends godot.Node2D {
	/**		
		The VisibilityNotifier2D's bounding rectangle.
	**/
	@:native("Rect")
	public var rect:godot.Rect2;

	@:native("new")
	public function new():Void;

	@:native("SetRect")
	public function setRect(rect:godot.Rect2):Void;

	@:native("GetRect")
	public function getRect():godot.Rect2;

	/**		
		If `true`, the bounding rectangle is on the screen.
		
		Note: It takes one frame for the node's visibility to be assessed once added to the scene tree, so this method will return `false` right after it is instantiated, even if it will be on screen in the draw pass.
	**/
	@:native("IsOnScreen")
	public function isOnScreen():Bool;
}
