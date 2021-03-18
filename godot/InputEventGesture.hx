// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.InputEventGesture")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class InputEventGesture extends godot.InputEventWithModifiers {
	/**		
		The local gesture position relative to the `godot.Viewport`. If used in `godot.Control._GuiInput`, the position is relative to the current `godot.Control` that received this gesture.
	**/
	@:native("Position")
	public var position:godot.Vector2;

	@:native("SetPosition")
	public function setPosition(position:godot.Vector2):Void;

	@:native("GetPosition")
	public function getPosition():godot.Vector2;
}
