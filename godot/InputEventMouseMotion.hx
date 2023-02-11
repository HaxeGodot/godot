// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Contains mouse and pen motion information. Supports relative, absolute positions and speed. See `godot.Node._Input`.

Note: By default, this event can be emitted multiple times per frame rendered, allowing for precise input reporting, at the expense of CPU usage. You can call `godot.Input.setUseAccumulatedInput` with `true` to let multiple events merge into a single emitted event per frame.

Note: If you use InputEventMouseMotion to draw lines, consider implementing [https://en.wikipedia.org/wiki/Bresenham%27s_line_algorithm](Bresenham's line algorithm) as well to avoid visible gaps in lines if the user is moving the mouse quickly.
**/
@:libType
@:csNative
@:native("Godot.InputEventMouseMotion")
@:autoBuild(godot.Godot.buildUserClass())
extern class InputEventMouseMotion extends godot.InputEventMouse {
	/**		
		The mouse speed in pixels per second.
	**/
	@:native("Speed")
	public var speed:godot.Vector2;

	/**		
		The mouse position relative to the previous position (position at the last frame).
		
		Note: Since `godot.InputEventMouseMotion` is only emitted when the mouse moves, the last event won't have a relative position of `Vector2(0, 0)` when the user stops moving the mouse.
	**/
	@:native("Relative")
	public var relative:godot.Vector2;

	/**		
		Represents the pressure the user puts on the pen. Ranges from `0.0` to `1.0`.
	**/
	@:native("Pressure")
	public var pressure:Single;

	/**		
		Represents the angles of tilt of the pen. Positive X-coordinate value indicates a tilt to the right. Positive Y-coordinate value indicates a tilt toward the user. Ranges from `-1.0` to `1.0` for both axes.
	**/
	@:native("Tilt")
	public var tilt:godot.Vector2;

	@:native("new")
	public function new():Void;

	@:native("SetTilt")
	public function setTilt(tilt:godot.Vector2):Void;

	@:native("GetTilt")
	public function getTilt():godot.Vector2;

	@:native("SetPressure")
	public function setPressure(pressure:Single):Void;

	@:native("GetPressure")
	public function getPressure():Single;

	@:native("SetRelative")
	public function setRelative(relative:godot.Vector2):Void;

	@:native("GetRelative")
	public function getRelative():godot.Vector2;

	@:native("SetSpeed")
	public function setSpeed(speed:godot.Vector2):Void;

	@:native("GetSpeed")
	public function getSpeed():godot.Vector2;
}
