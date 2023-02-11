// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Renders a given `godot.Curve` provided to it. Simplifies the task of drawing curves and/or saving them as image files.
**/
@:libType
@:csNative
@:native("Godot.CurveTexture")
@:autoBuild(godot.Godot.buildUserClass())
extern class CurveTexture extends godot.Texture {
	/**		
		The `godot.Curve` that is rendered onto the texture.
	**/
	@:native("Curve")
	public var curve:godot.Curve;

	/**		
		The width of the texture (in pixels). Higher values make it possible to represent high-frequency data better (such as sudden direction changes), at the cost of increased generation time and memory usage.
	**/
	@:native("Width")
	public var width:Int;

	@:native("new")
	public function new():Void;

	@:native("SetWidth")
	public function setWidth(width:Int):Void;

	@:native("SetCurve")
	public function setCurve(curve:godot.Curve):Void;

	@:native("GetCurve")
	public function getCurve():godot.Curve;
}
