// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
`godot.CanvasModulate` tints the canvas elements using its assigned `godot.CanvasModulate.color`.
**/
@:libType
@:csNative
@:native("Godot.CanvasModulate")
@:autoBuild(godot.Godot.buildUserClass())
extern class CanvasModulate extends godot.Node2D {
	/**		
		The tint color to apply.
	**/
	@:native("Color")
	public var color:godot.Color;

	@:native("new")
	public function new():Void;

	@:native("SetColor")
	public function setColor(color:godot.Color):Void;

	@:native("GetColor")
	public function getColor():godot.Color;
}
