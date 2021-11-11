// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Special button that brings up a `godot.PopupMenu` when clicked.

New items can be created inside this `godot.PopupMenu` using `get_popup().add_item("My Item Name")`. You can also create them directly from the editor. To do so, select the `godot.MenuButton` node, then in the toolbar at the top of the 2D editor, click Items then click Add in the popup. You will be able to give each item new properties.

See also `godot.BaseButton` which contains common properties and methods associated with this node.
**/
@:libType
@:csNative
@:native("Godot.MenuButton")
@:autoBuild(godot.Godot.buildUserClass())
extern class MenuButton extends godot.Button {
	/**
		`about_to_show` signal.
		
		Emitted when `PopupMenu` of this MenuButton is about to show.
	**/
	public var onAboutToShow(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onAboutToShow():Signal<Void->Void> {
		return new Signal(this, "about_to_show", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

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
		
		Warning: This is a required internal node, removing and freeing it may cause a crash. If you wish to hide it or any of its children, use their `godot.CanvasItem.visible` property.
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
