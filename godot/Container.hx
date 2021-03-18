// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Base node for containers. A `godot.Container` contains other controls and automatically arranges them in a certain way.

A Control can inherit this to create custom container classes.
**/
@:libType
@:csNative
@:native("Godot.Container")
@:autoBuild(godot.Godot.buildUserClass())
extern class Container extends godot.Control {
	/**		
		Notification for when sorting the children, it must be obeyed immediately.
	**/
	@:native("NotificationSortChildren")
	public static var NOTIFICATION_SORT_CHILDREN(default, never):Int;

	@:native("new")
	public function new():Void;

	/**		
		Queue resort of the contained children. This is called automatically anyway, but can be called upon request.
	**/
	@:native("QueueSort")
	public function queueSort():Void;

	/**		
		Fit a child control in a given rect. This is mainly a helper for creating custom container classes.
	**/
	@:native("FitChildInRect")
	public function fitChildInRect(child:godot.Control, rect:godot.Rect2):Void;
}
