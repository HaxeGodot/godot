// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A rectangle box that displays only a `godot.ReferenceRect.borderColor` border color around its rectangle. `godot.ReferenceRect` has no fill `godot.Color`. If you need to display a rectangle filled with a solid color, consider using `godot.ColorRect` instead.
**/
@:libType
@:csNative
@:native("Godot.ReferenceRect")
@:autoBuild(godot.Godot.buildUserClass())
extern class ReferenceRect extends godot.Control {
	/**		
		If set to `true`, the `godot.ReferenceRect` will only be visible while in editor. Otherwise, `godot.ReferenceRect` will be visible in game.
	**/
	@:native("EditorOnly")
	public var editorOnly:Bool;

	/**		
		Sets the border width of the `godot.ReferenceRect`. The border grows both inwards and outwards with respect to the rectangle box.
	**/
	@:native("BorderWidth")
	public var borderWidth:Single;

	/**		
		Sets the border `godot.Color` of the `godot.ReferenceRect`.
	**/
	@:native("BorderColor")
	public var borderColor:godot.Color;

	@:native("new")
	public function new():Void;

	@:native("GetBorderColor")
	public function getBorderColor():godot.Color;

	@:native("SetBorderColor")
	public function setBorderColor(color:godot.Color):Void;

	@:native("GetBorderWidth")
	public function getBorderWidth():Single;

	@:native("SetBorderWidth")
	public function setBorderWidth(width:Single):Void;

	@:native("GetEditorOnly")
	public function getEditorOnly():Bool;

	@:native("SetEditorOnly")
	public function setEditorOnly(enabled:Bool):Void;
}
