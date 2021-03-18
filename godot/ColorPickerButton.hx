// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Encapsulates a `godot.ColorPicker` making it accessible by pressing a button. Pressing the button will toggle the `godot.ColorPicker` visibility.
**/
@:libType
@:csNative
@:native("Godot.ColorPickerButton")
@:autoBuild(godot.Godot.buildUserClass())
extern class ColorPickerButton extends godot.Button {
	/**		
		If `true`, the alpha channel in the displayed `godot.ColorPicker` will be visible.
	**/
	@:native("EditAlpha")
	public var editAlpha:Bool;

	/**		
		The currently selected color.
	**/
	@:native("Color")
	public var color:godot.Color;

	@:native("new")
	public function new():Void;

	@:native("SetPickColor")
	public function setPickColor(color:godot.Color):Void;

	@:native("GetPickColor")
	public function getPickColor():godot.Color;

	/**		
		Returns the `godot.ColorPicker` that this node toggles.
	**/
	@:native("GetPicker")
	public function getPicker():godot.ColorPicker;

	/**		
		Returns the control's `godot.PopupPanel` which allows you to connect to popup signals. This allows you to handle events when the ColorPicker is shown or hidden.
	**/
	@:native("GetPopup")
	public function getPopup():godot.PopupPanel;

	@:native("SetEditAlpha")
	public function setEditAlpha(show:Bool):Void;

	@:native("IsEditingAlpha")
	public function isEditingAlpha():Bool;
}
