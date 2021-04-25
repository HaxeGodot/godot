// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Displays a rectangle filled with a solid `godot.ColorRect.color`. If you need to display the border alone, consider using `godot.ReferenceRect` instead.
**/
@:libType
@:csNative
@:native("Godot.ColorRect")
@:autoBuild(godot.Godot.buildUserClass())
extern class ColorRect extends godot.Control {
	/**		
		The fill color.
		
		```
		
		$ColorRect.color = Color(1, 0, 0, 1) # Set ColorRect's color to red.
		
		```
	**/
	@:native("Color")
	public var color:godot.Color;

	@:native("new")
	public function new():Void;

	@:native("SetFrameColor")
	public function setFrameColor(color:godot.Color):Void;

	@:native("GetFrameColor")
	public function getFrameColor():godot.Color;
}
