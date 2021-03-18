// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Can have `godot.PathFollow` child nodes moving along the `godot.Curve3D`. See `godot.PathFollow` for more information on the usage.

Note that the path is considered as relative to the moved nodes (children of `godot.PathFollow`). As such, the curve should usually start with a zero vector `(0, 0, 0)`.
**/
@:libType
@:csNative
@:native("Godot.Path")
@:autoBuild(godot.Godot.buildUserClass())
extern class Path extends godot.Spatial {
	/**		
		A `godot.Curve3D` describing the path.
	**/
	@:native("Curve")
	public var curve:godot.Curve3D;

	@:native("new")
	public function new():Void;

	@:native("SetCurve")
	public function setCurve(curve:godot.Curve3D):Void;

	@:native("GetCurve")
	public function getCurve():godot.Curve3D;
}
