// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Can have `godot.PathFollow2D` child nodes moving along the `godot.Curve2D`. See `godot.PathFollow2D` for more information on usage.

Note: The path is considered as relative to the moved nodes (children of `godot.PathFollow2D`). As such, the curve should usually start with a zero vector (`(0, 0)`).
**/
@:libType
@:csNative
@:native("Godot.Path2D")
@:autoBuild(godot.Godot.buildUserClass())
extern class Path2D extends godot.Node2D {
	/**		
		A `godot.Curve2D` describing the path.
	**/
	@:native("Curve")
	public var curve:godot.Curve2D;

	@:native("new")
	public function new():Void;

	@:native("SetCurve")
	public function setCurve(curve:godot.Curve2D):Void;

	@:native("GetCurve")
	public function getCurve():godot.Curve2D;
}
