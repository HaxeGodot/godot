// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Sets the active tab's `visible` property to the value `true`. Sets all other children's to `false`.

Ignores non-`godot.Control` children.

Individual tabs are always visible unless you use `godot.TabContainer.setTabDisabled` and `godot.TabContainer.setTabTitle` to hide it.

To hide only a tab's content, nest the content inside a child `godot.Control`, so it receives the `godot.TabContainer`'s visibility setting instead.
**/
@:libType
@:csNative
@:native("Godot.TabContainer")
@:autoBuild(godot.Godot.buildUserClass())
extern class TabContainer extends godot.Container {
	/**		
		If `true`, children `godot.Control` nodes that are hidden have their minimum size take into account in the total, instead of only the currently visible one.
	**/
	@:native("UseHiddenTabsForMinSize")
	public var useHiddenTabsForMinSize:Bool;

	/**		
		If `true`, tabs can be rearranged with mouse drag.
	**/
	@:native("DragToRearrangeEnabled")
	public var dragToRearrangeEnabled:Bool;

	/**		
		If `true`, tabs are visible. If `false`, tabs' content and titles are hidden.
	**/
	@:native("TabsVisible")
	public var tabsVisible:Bool;

	/**		
		The current tab index. When set, this index's `godot.Control` node's `visible` property is set to `true` and all others are set to `false`.
	**/
	@:native("CurrentTab")
	public var currentTab:Int;

	/**		
		The alignment of all tabs in the tab container. See the `godot.TabContainer_TabAlignEnum` constants for details.
	**/
	@:native("TabAlign")
	public var tabAlign:godot.TabContainer_TabAlignEnum;

	@:native("new")
	public function new():Void;

	/**		
		Returns the number of tabs.
	**/
	@:native("GetTabCount")
	public function getTabCount():Int;

	@:native("SetCurrentTab")
	public function setCurrentTab(tabIdx:Int):Void;

	@:native("GetCurrentTab")
	public function getCurrentTab():Int;

	/**		
		Returns the previously active tab index.
	**/
	@:native("GetPreviousTab")
	public function getPreviousTab():Int;

	/**		
		Returns the child `godot.Control` node located at the active tab index.
	**/
	@:native("GetCurrentTabControl")
	public function getCurrentTabControl():godot.Control;

	/**		
		Returns the `godot.Control` node from the tab at index `tab_idx`.
	**/
	@:native("GetTabControl")
	public function getTabControl(tabIdx:Int):godot.Control;

	@:native("SetTabAlign")
	public function setTabAlign(align:godot.TabContainer_TabAlignEnum):Void;

	@:native("GetTabAlign")
	public function getTabAlign():godot.TabContainer_TabAlignEnum;

	@:native("SetTabsVisible")
	public function setTabsVisible(visible:Bool):Void;

	@:native("AreTabsVisible")
	public function areTabsVisible():Bool;

	/**		
		Sets a title for the tab at index `tab_idx`. Tab titles default to the name of the indexed child node, but this can be overridden with `godot.TabContainer.setTabTitle`.
	**/
	@:native("SetTabTitle")
	public function setTabTitle(tabIdx:Int, title:std.String):Void;

	/**		
		Returns the title of the tab at index `tab_idx`. Tab titles default to the name of the indexed child node, but this can be overridden with `godot.TabContainer.setTabTitle`.
	**/
	@:native("GetTabTitle")
	public function getTabTitle(tabIdx:Int):std.String;

	/**		
		Sets an icon for the tab at index `tab_idx`.
	**/
	@:native("SetTabIcon")
	public function setTabIcon(tabIdx:Int, icon:godot.Texture):Void;

	/**		
		Returns the `godot.Texture` for the tab at index `tab_idx` or `null` if the tab has no `godot.Texture`.
	**/
	@:native("GetTabIcon")
	public function getTabIcon(tabIdx:Int):godot.Texture;

	/**		
		If `disabled` is `false`, hides the tab at index `tab_idx`.
		
		Note: Its title text will remain, unless also removed with `godot.TabContainer.setTabTitle`.
	**/
	@:native("SetTabDisabled")
	public function setTabDisabled(tabIdx:Int, disabled:Bool):Void;

	/**		
		Returns `true` if the tab at index `tab_idx` is disabled.
	**/
	@:native("GetTabDisabled")
	public function getTabDisabled(tabIdx:Int):Bool;

	/**		
		If set on a `godot.Popup` node instance, a popup menu icon appears in the top-right corner of the `godot.TabContainer`. Clicking it will expand the `godot.Popup` node.
	**/
	@:native("SetPopup")
	public function setPopup(popup:godot.Node):Void;

	/**		
		Returns the `godot.Popup` node instance if one has been set already with `godot.TabContainer.setPopup`.
	**/
	@:native("GetPopup")
	public function getPopup():godot.Popup;

	@:native("SetDragToRearrangeEnabled")
	public function setDragToRearrangeEnabled(enabled:Bool):Void;

	@:native("GetDragToRearrangeEnabled")
	public function getDragToRearrangeEnabled():Bool;

	/**		
		Defines rearrange group id, choose for each `godot.TabContainer` the same value to enable tab drag between `godot.TabContainer`. Enable drag with `set_drag_to_rearrange_enabled(true)`.
	**/
	@:native("SetTabsRearrangeGroup")
	public function setTabsRearrangeGroup(groupId:Int):Void;

	/**		
		Returns the `godot.TabContainer` rearrange group id.
	**/
	@:native("GetTabsRearrangeGroup")
	public function getTabsRearrangeGroup():Int;

	@:native("SetUseHiddenTabsForMinSize")
	public function setUseHiddenTabsForMinSize(enabled:Bool):Void;

	@:native("GetUseHiddenTabsForMinSize")
	public function getUseHiddenTabsForMinSize():Bool;
}
