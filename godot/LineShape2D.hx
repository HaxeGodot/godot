// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Line shape for 2D collisions. It works like a 2D plane and will not allow any physics body to go to the negative side. Not recommended for rigid bodies, and usually not recommended for static bodies either because it forces checks against it on every frame.
**/
@:libType
@:csNative
@:native("Godot.LineShape2D")
@:autoBuild(godot.Godot.buildUserClass())
extern class LineShape2D extends godot.Shape2D {
	/**		
		The line's distance from the origin.
	**/
	@:native("D")
	public var d:Single;

	/**		
		The line's normal.
	**/
	@:native("Normal")
	public var normal:godot.Vector2;

	@:native("new")
	public function new():Void;

	@:native("SetNormal")
	public function setNormal(normal:godot.Vector2):Void;

	@:native("GetNormal")
	public function getNormal():godot.Vector2;

	@:native("SetD")
	public function setD(d:Single):Void;

	@:native("GetD")
	public function getD():Single;
}
