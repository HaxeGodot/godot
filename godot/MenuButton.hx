// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Special button that brings up a `godot.PopupMenu` when clicked.

New items can be created inside this `godot.PopupMenu` using `get_popup().add_item("My Item Name")`. You can also create them directly from the editor. To do so, select the `godot.MenuButton` node, then in the toolbar at the top of the 2D editor, click Items then click Add in the popup. You will be able to give each items new properties.
**/
@:libType
@:csNative
@:native("Godot.MenuButton")
@:autoBuild(godot.Godot.buildUserClass())
extern class MenuButton extends godot.Button {
	/**		
		If `true`, when the cursor hovers above another `godot.MenuButton` within the same parent which also has `switch_on_hover` enabled, it will close the current `godot.MenuButton` and open the other one.
	**/
	@:native("SwitchOnHover")
	public var switchOnHover:Bool;

	@:native("Items")
	public var items:godot.collections.Array;

	@:native("new")
	public function new():Void;

	/**		
		Returns the `godot.PopupMenu` contained in this button.
	**/
	@:native("GetPopup")
	public function getPopup():godot.PopupMenu;

	@:native("SetSwitchOnHover")
	public function setSwitchOnHover(enable:Bool):Void;

	@:native("IsSwitchOnHover")
	public function isSwitchOnHover():Bool;

	/**		
		If `true`, shortcuts are disabled and cannot be used to trigger the button.
	**/
	@:native("SetDisableShortcuts")
	public function setDisableShortcuts(disabled:Bool):Void;
}
