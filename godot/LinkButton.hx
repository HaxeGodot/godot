// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This kind of button is primarily used when the interaction with the button causes a context change (like linking to a web page).
**/
@:libType
@:csNative
@:native("Godot.LinkButton")
@:autoBuild(godot.Godot.buildUserClass())
extern class LinkButton extends godot.BaseButton {
	/**		
		Determines when to show the underline. See `godot.LinkButton_UnderlineMode` for options.
	**/
	@:native("Underline")
	public var underline:godot.LinkButton_UnderlineMode;

	/**		
		The button's text that will be displayed inside the button's area.
	**/
	@:native("Text")
	public var text:std.String;

	@:native("new")
	public function new():Void;

	@:native("SetText")
	public function setText(text:std.String):Void;

	@:native("GetText")
	public function getText():std.String;

	@:native("SetUnderlineMode")
	public function setUnderlineMode(underlineMode:godot.LinkButton_UnderlineMode):Void;

	@:native("GetUnderlineMode")
	public function getUnderlineMode():godot.LinkButton_UnderlineMode;
}
