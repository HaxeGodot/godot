// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Allows editing a collision polygon's vertices on a selected plane. Can also set a depth perpendicular to that plane. This class is only available in the editor. It will not appear in the scene tree at run-time. Creates a `godot.Shape` for gameplay. Properties modified during gameplay will have no effect.
**/
@:libType
@:csNative
@:native("Godot.CollisionPolygon")
@:autoBuild(godot.Godot.buildUserClass())
extern class CollisionPolygon extends godot.Spatial {
	/**		
		The collision margin for the generated `godot.Shape`. See `godot.Shape.margin` for more details.
	**/
	@:native("Margin")
	public var margin:Single;

	/**		
		Array of vertices which define the polygon.
		
		Note: The returned value is a copy of the original. Methods which mutate the size or properties of the return value will not impact the original polygon. To change properties of the polygon, assign it to a temporary variable and make changes before reassigning the `polygon` member.
	**/
	@:native("Polygon")
	public var polygon:cs.NativeArray<godot.Vector2>;

	/**		
		If `true`, no collision will be produced.
	**/
	@:native("Disabled")
	public var disabled:Bool;

	/**		
		Length that the resulting collision extends in either direction perpendicular to its polygon.
	**/
	@:native("Depth")
	public var depth:Single;

	@:native("new")
	public function new():Void;

	@:native("SetDepth")
	public function setDepth(depth:Single):Void;

	@:native("GetDepth")
	public function getDepth():Single;

	@:native("SetPolygon")
	public function setPolygon(polygon:haxe.Rest<godot.Vector2>):Void;

	public extern inline function getPolygon():std.Array<godot.Vector2> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetPolygon()", this));
	}

	@:native("SetDisabled")
	public function setDisabled(disabled:Bool):Void;

	@:native("IsDisabled")
	public function isDisabled():Bool;

	@:native("SetMargin")
	public function setMargin(margin:Single):Void;

	@:native("GetMargin")
	public function getMargin():Single;
}
