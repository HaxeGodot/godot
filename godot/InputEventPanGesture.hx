// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.InputEventPanGesture")
@:autoBuild(godot.Godot.buildUserClass())
extern class InputEventPanGesture extends godot.InputEventGesture {
	@:native("Delta")
	public var delta:godot.Vector2;

	@:native("new")
	public function new():Void;

	@:native("SetDelta")
	public function setDelta(delta:godot.Vector2):Void;

	@:native("GetDelta")
	public function getDelta():godot.Vector2;
}
