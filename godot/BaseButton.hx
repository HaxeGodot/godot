// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
BaseButton is the abstract base class for buttons, so it shouldn't be used directly (it doesn't display anything). Other types of buttons inherit from it.
**/
@:libType
@:csNative
@:native("Godot.BaseButton")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class BaseButton extends godot.Control {
	/**		
		`godot.ButtonGroup` associated to the button.
	**/
	@:native("Group")
	public var group:godot.ButtonGroup;

	/**		
		`godot.ShortCut` associated to the button.
	**/
	@:native("Shortcut")
	public var shortcut:godot.ShortCut;

	/**		
		If `true`, the button stays pressed when moving the cursor outside the button while pressing it.
		
		Note: This property only affects the button's visual appearance. Signals will be emitted at the same moment regardless of this property's value.
	**/
	@:native("KeepPressedOutside")
	public var keepPressedOutside:Bool;

	/**		
		Focus access mode to use when switching between enabled/disabled (see `godot.Control.focusMode` and `godot.BaseButton.disabled`).
	**/
	@:native("EnabledFocusMode")
	public var enabledFocusMode:godot.Control_FocusModeEnum;

	/**		
		Binary mask to choose which mouse buttons this button will respond to.
		
		To allow both left-click and right-click, use `BUTTON_MASK_LEFT | BUTTON_MASK_RIGHT`.
	**/
	@:native("ButtonMask")
	public var buttonMask:Int;

	/**		
		Determines when the button is considered clicked, one of the `godot.BaseButton_ActionModeEnum` constants.
	**/
	@:native("ActionMode")
	public var actionMode:godot.BaseButton_ActionModeEnum;

	/**		
		If `true`, the button's state is pressed. Means the button is pressed down or toggled (if `godot.BaseButton.toggleMode` is active).
	**/
	@:native("Pressed")
	public var pressed:Bool;

	/**		
		If `true`, the button will add information about its shortcut in the tooltip.
	**/
	@:native("ShortcutInTooltip")
	public var shortcutInTooltip:Bool;

	/**		
		If `true`, the button is in toggle mode. Makes the button flip state between pressed and unpressed each time its area is clicked.
	**/
	@:native("ToggleMode")
	public var toggleMode:Bool;

	/**		
		If `true`, the button is in disabled state and can't be clicked or toggled.
	**/
	@:native("Disabled")
	public var disabled:Bool;

	/**		
		Called when the button is pressed. If you need to know the button's pressed state (and `godot.BaseButton.toggleMode` is active), use `godot.BaseButton._Toggled` instead.
	**/
	@:native("_Pressed")
	public function _Pressed():Void;

	/**		
		Called when the button is toggled (only if `godot.BaseButton.toggleMode` is active).
	**/
	@:native("_Toggled")
	public function _Toggled(buttonPressed:Bool):Void;

	@:native("SetPressed")
	public function setPressed(pressed:Bool):Void;

	@:native("IsPressed")
	public function isPressed():Bool;

	/**		
		Returns `true` if the mouse has entered the button and has not left it yet.
	**/
	@:native("IsHovered")
	public function isHovered():Bool;

	@:native("SetToggleMode")
	public function setToggleMode(enabled:Bool):Void;

	@:native("IsToggleMode")
	public function isToggleMode():Bool;

	@:native("SetShortcutInTooltip")
	public function setShortcutInTooltip(enabled:Bool):Void;

	@:native("IsShortcutInTooltipEnabled")
	public function isShortcutInTooltipEnabled():Bool;

	@:native("SetDisabled")
	public function setDisabled(disabled:Bool):Void;

	@:native("IsDisabled")
	public function isDisabled():Bool;

	@:native("SetActionMode")
	public function setActionMode(mode:godot.BaseButton_ActionModeEnum):Void;

	@:native("GetActionMode")
	public function getActionMode():godot.BaseButton_ActionModeEnum;

	@:native("SetButtonMask")
	public function setButtonMask(mask:Int):Void;

	@:native("GetButtonMask")
	public function getButtonMask():Int;

	/**		
		Returns the visual state used to draw the button. This is useful mainly when implementing your own draw code by either overriding _draw() or connecting to "draw" signal. The visual state of the button is defined by the `godot.BaseButton_DrawMode` enum.
	**/
	@:native("GetDrawMode")
	public function getDrawMode():godot.BaseButton_DrawMode;

	@:native("SetEnabledFocusMode")
	public function setEnabledFocusMode(mode:godot.Control_FocusModeEnum):Void;

	@:native("GetEnabledFocusMode")
	public function getEnabledFocusMode():godot.Control_FocusModeEnum;

	@:native("SetKeepPressedOutside")
	public function setKeepPressedOutside(enabled:Bool):Void;

	@:native("IsKeepPressedOutside")
	public function isKeepPressedOutside():Bool;

	@:native("SetShortcut")
	public function setShortcut(shortcut:godot.ShortCut):Void;

	@:native("GetShortcut")
	public function getShortcut():godot.ShortCut;

	@:native("SetButtonGroup")
	public function setButtonGroup(buttonGroup:godot.ButtonGroup):Void;

	@:native("GetButtonGroup")
	public function getButtonGroup():godot.ButtonGroup;
}
