// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.InputEventMagnifyGesture")
@:autoBuild(godot.Godot.buildUserClass())
extern class InputEventMagnifyGesture extends godot.InputEventGesture {
	@:native("Factor")
	public var factor:Single;

	@:native("new")
	public function new():Void;

	@:native("SetFactor")
	public function setFactor(factor:Single):Void;

	@:native("GetFactor")
	public function getFactor():Single;
}
