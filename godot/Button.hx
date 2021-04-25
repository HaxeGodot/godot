// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Button is the standard themed button. It can contain text and an icon, and will display them according to the current `godot.Theme`.

Example of creating a button and assigning an action when pressed by code:

```

func _ready():
var button = Button.new()
button.text = "Click me"
button.connect("pressed", self, "_button_pressed")
add_child(button)

func _button_pressed():
print("Hello world!")

```

Buttons (like all Control nodes) can also be created in the editor, but some situations may require creating them from code.

See also `godot.BaseButton` which contains common properties and methods associated with this node.

Note: Buttons do not interpret touch input and therefore don't support multitouch, since mouse emulation can only press one button at a given time. Use `godot.TouchScreenButton` for buttons that trigger gameplay movement or actions, as `godot.TouchScreenButton` supports multitouch.
**/
@:libType
@:csNative
@:native("Godot.Button")
@:autoBuild(godot.Godot.buildUserClass())
extern class Button extends godot.BaseButton {
	/**		
		When enabled, the button's icon will expand/shrink to fit the button's size while keeping its aspect.
	**/
	@:native("ExpandIcon")
	public var expandIcon:Bool;

	/**		
		Text alignment policy for the button's text, use one of the `godot.Button_TextAlign` constants.
	**/
	@:native("Align")
	public var align:godot.Button_TextAlign;

	/**		
		When this property is enabled, text that is too large to fit the button is clipped, when disabled the Button will always be wide enough to hold the text.
	**/
	@:native("ClipText")
	public var clipText:Bool;

	/**		
		Flat buttons don't display decoration.
	**/
	@:native("Flat")
	public var flat:Bool;

	/**		
		Button's icon, if text is present the icon will be placed before the text.
	**/
	@:native("Icon")
	public var icon:godot.Texture;

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

	@:native("SetButtonIcon")
	public function setButtonIcon(texture:godot.Texture):Void;

	@:native("GetButtonIcon")
	public function getButtonIcon():godot.Texture;

	@:native("SetExpandIcon")
	public function setExpandIcon(arg0:Bool):Void;

	@:native("IsExpandIcon")
	public function isExpandIcon():Bool;

	@:native("SetFlat")
	public function setFlat(enabled:Bool):Void;

	@:native("SetClipText")
	public function setClipText(enabled:Bool):Void;

	@:native("GetClipText")
	public function getClipText():Bool;

	@:native("SetTextAlign")
	public function setTextAlign(align:godot.Button_TextAlign):Void;

	@:native("GetTextAlign")
	public function getTextAlign():godot.Button_TextAlign;

	@:native("IsFlat")
	public function isFlat():Bool;
}
