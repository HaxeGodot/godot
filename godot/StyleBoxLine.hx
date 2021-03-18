// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
`godot.StyleBox` that displays a single line of a given color and thickness. It can be used to draw things like separators.
**/
@:libType
@:csNative
@:native("Godot.StyleBoxLine")
@:autoBuild(godot.Godot.buildUserClass())
extern class StyleBoxLine extends godot.StyleBox {
	/**		
		If `true`, the line will be vertical. If `false`, the line will be horizontal.
	**/
	@:native("Vertical")
	public var vertical:Bool;

	/**		
		The line's thickness in pixels.
	**/
	@:native("Thickness")
	public var thickness:Int;

	/**		
		The number of pixels the line will extend past the `godot.StyleBoxLine`'s bounds. If set to a negative value, the line will end inside the `godot.StyleBoxLine`'s bounds.
	**/
	@:native("GrowEnd")
	public var growEnd:Single;

	/**		
		The number of pixels the line will extend before the `godot.StyleBoxLine`'s bounds. If set to a negative value, the line will begin inside the `godot.StyleBoxLine`'s bounds.
	**/
	@:native("GrowBegin")
	public var growBegin:Single;

	/**		
		The line's color.
	**/
	@:native("Color")
	public var color:godot.Color;

	@:native("new")
	public function new():Void;

	@:native("SetColor")
	public function setColor(color:godot.Color):Void;

	@:native("GetColor")
	public function getColor():godot.Color;

	@:native("SetThickness")
	public function setThickness(thickness:Int):Void;

	@:native("GetThickness")
	public function getThickness():Int;

	@:native("SetGrowBegin")
	public function setGrowBegin(offset:Single):Void;

	@:native("GetGrowBegin")
	public function getGrowBegin():Single;

	@:native("SetGrowEnd")
	public function setGrowEnd(offset:Single):Void;

	@:native("GetGrowEnd")
	public function getGrowEnd():Single;

	@:native("SetVertical")
	public function setVertical(vertical:Bool):Void;

	@:native("IsVertical")
	public function isVertical():Bool;
}
