// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Simple tabs control, similar to `godot.TabContainer` but is only in charge of drawing tabs, not interacting with children.
**/
@:libType
@:csNative
@:native("Godot.Tabs")
@:autoBuild(godot.Godot.buildUserClass())
extern class Tabs extends godot.Control {
	/**
		`reposition_active_tab_request` signal.
		
		Emitted when the active tab is rearranged via mouse drag. See `dragToRearrangeEnabled`.
	**/
	public var onRepositionActiveTabRequest(get, never):Signal<(idxTo:Int)->Void>;
	@:dox(hide) @:noCompletion inline function get_onRepositionActiveTabRequest():Signal<(idxTo:Int)->Void> {
		return new Signal(this, "reposition_active_tab_request", Signal.SignalHandlerIntVoid.connectSignal, Signal.SignalHandlerIntVoid.disconnectSignal, Signal.SignalHandlerIntVoid.isSignalConnected);
	}

	/**
		`right_button_pressed` signal.
		
		Emitted when a tab is right-clicked.
	**/
	public var onRightButtonPressed(get, never):Signal<(tab:Int)->Void>;
	@:dox(hide) @:noCompletion inline function get_onRightButtonPressed():Signal<(tab:Int)->Void> {
		return new Signal(this, "right_button_pressed", Signal.SignalHandlerIntVoid.connectSignal, Signal.SignalHandlerIntVoid.disconnectSignal, Signal.SignalHandlerIntVoid.isSignalConnected);
	}

	/**
		`tab_changed` signal.
		
		Emitted when switching to another tab.
	**/
	public var onTabChanged(get, never):Signal<(tab:Int)->Void>;
	@:dox(hide) @:noCompletion inline function get_onTabChanged():Signal<(tab:Int)->Void> {
		return new Signal(this, "tab_changed", Signal.SignalHandlerIntVoid.connectSignal, Signal.SignalHandlerIntVoid.disconnectSignal, Signal.SignalHandlerIntVoid.isSignalConnected);
	}

	/**
		`tab_clicked` signal.
		
		Emitted when a tab is clicked, even if it is the current tab.
	**/
	public var onTabClicked(get, never):Signal<(tab:Int)->Void>;
	@:dox(hide) @:noCompletion inline function get_onTabClicked():Signal<(tab:Int)->Void> {
		return new Signal(this, "tab_clicked", Signal.SignalHandlerIntVoid.connectSignal, Signal.SignalHandlerIntVoid.disconnectSignal, Signal.SignalHandlerIntVoid.isSignalConnected);
	}

	/**
		`tab_close` signal.
		
		Emitted when a tab is closed.
	**/
	public var onTabClose(get, never):Signal<(tab:Int)->Void>;
	@:dox(hide) @:noCompletion inline function get_onTabClose():Signal<(tab:Int)->Void> {
		return new Signal(this, "tab_close", Signal.SignalHandlerIntVoid.connectSignal, Signal.SignalHandlerIntVoid.disconnectSignal, Signal.SignalHandlerIntVoid.isSignalConnected);
	}

	/**
		`tab_hover` signal.
		
		Emitted when a tab is hovered by the mouse.
	**/
	public var onTabHover(get, never):Signal<(tab:Int)->Void>;
	@:dox(hide) @:noCompletion inline function get_onTabHover():Signal<(tab:Int)->Void> {
		return new Signal(this, "tab_hover", Signal.SignalHandlerIntVoid.connectSignal, Signal.SignalHandlerIntVoid.disconnectSignal, Signal.SignalHandlerIntVoid.isSignalConnected);
	}

	/**		
		If `true`, tabs can be rearranged with mouse drag.
	**/
	@:native("DragToRearrangeEnabled")
	public var dragToRearrangeEnabled:Bool;

	/**		
		if `true`, the mouse's scroll wheel can be used to navigate the scroll view.
	**/
	@:native("ScrollingEnabled")
	public var scrollingEnabled:Bool;

	/**		
		Sets when the close button will appear on the tabs. See `godot.Tabs_CloseButtonDisplayPolicy` for details.
	**/
	@:native("TabCloseDisplayPolicy")
	public var tabCloseDisplayPolicy:godot.Tabs_CloseButtonDisplayPolicy;

	/**		
		The alignment of all tabs. See `godot.Tabs_TabAlignEnum` for details.
	**/
	@:native("TabAlign")
	public var tabAlign:godot.Tabs_TabAlignEnum;

	/**		
		Select tab at index `tab_idx`.
	**/
	@:native("CurrentTab")
	public var currentTab:Int;

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
		Sets a `title` for the tab at index `tab_idx`.
	**/
	@:native("SetTabTitle")
	public function setTabTitle(tabIdx:Int, title:std.String):Void;

	/**		
		Returns the title of the tab at index `tab_idx`.
	**/
	@:native("GetTabTitle")
	public function getTabTitle(tabIdx:Int):std.String;

	/**		
		Sets an `icon` for the tab at index `tab_idx`.
	**/
	@:native("SetTabIcon")
	public function setTabIcon(tabIdx:Int, icon:godot.Texture):Void;

	/**		
		Returns the `godot.Texture` for the tab at index `tab_idx` or `null` if the tab has no `godot.Texture`.
	**/
	@:native("GetTabIcon")
	public function getTabIcon(tabIdx:Int):godot.Texture;

	/**		
		If `disabled` is `true`, disables the tab at index `tab_idx`, making it non-interactable.
	**/
	@:native("SetTabDisabled")
	public function setTabDisabled(tabIdx:Int, disabled:Bool):Void;

	/**		
		Returns `true` if the tab at index `tab_idx` is disabled.
	**/
	@:native("GetTabDisabled")
	public function getTabDisabled(tabIdx:Int):Bool;

	/**		
		Removes the tab at index `tab_idx`.
	**/
	@:native("RemoveTab")
	public function removeTab(tabIdx:Int):Void;

	#if doc_gen
	/**		
		Adds a new tab.
	**/
	@:native("AddTab")
	public function addTab(?title:std.String, ?icon:godot.Texture):Void;
	#else
	/**		
		Adds a new tab.
	**/
	@:native("AddTab")
	public overload function addTab():Void;

	/**		
		Adds a new tab.
	**/
	@:native("AddTab")
	public overload function addTab(title:std.String):Void;

	/**		
		Adds a new tab.
	**/
	@:native("AddTab")
	public overload function addTab(title:std.String, icon:godot.Texture):Void;
	#end

	@:native("SetTabAlign")
	public function setTabAlign(align:godot.Tabs_TabAlignEnum):Void;

	@:native("GetTabAlign")
	public function getTabAlign():godot.Tabs_TabAlignEnum;

	/**		
		Returns the number of hidden tabs offsetted to the left.
	**/
	@:native("GetTabOffset")
	public function getTabOffset():Int;

	/**		
		Returns `true` if the offset buttons (the ones that appear when there's not enough space for all tabs) are visible.
	**/
	@:native("GetOffsetButtonsVisible")
	public function getOffsetButtonsVisible():Bool;

	/**		
		Moves the scroll view to make the tab visible.
	**/
	@:native("EnsureTabVisible")
	public function ensureTabVisible(idx:Int):Void;

	/**		
		Returns tab `godot.Rect2` with local position and size.
	**/
	@:native("GetTabRect")
	public function getTabRect(tabIdx:Int):godot.Rect2;

	/**		
		Moves a tab from `from` to `to`.
	**/
	@:native("MoveTab")
	public function moveTab(from:Int, to:Int):Void;

	@:native("SetTabCloseDisplayPolicy")
	public function setTabCloseDisplayPolicy(policy:godot.Tabs_CloseButtonDisplayPolicy):Void;

	@:native("GetTabCloseDisplayPolicy")
	public function getTabCloseDisplayPolicy():godot.Tabs_CloseButtonDisplayPolicy;

	@:native("SetScrollingEnabled")
	public function setScrollingEnabled(enabled:Bool):Void;

	@:native("GetScrollingEnabled")
	public function getScrollingEnabled():Bool;

	@:native("SetDragToRearrangeEnabled")
	public function setDragToRearrangeEnabled(enabled:Bool):Void;

	@:native("GetDragToRearrangeEnabled")
	public function getDragToRearrangeEnabled():Bool;

	/**		
		Defines the rearrange group ID. Choose for each `godot.Tabs` the same value to dragging tabs between `godot.Tabs`. Enable drag with `godot.Tabs.dragToRearrangeEnabled`.
	**/
	@:native("SetTabsRearrangeGroup")
	public function setTabsRearrangeGroup(groupId:Int):Void;

	/**		
		Returns the `godot.Tabs`' rearrange group ID.
	**/
	@:native("GetTabsRearrangeGroup")
	public function getTabsRearrangeGroup():Int;

	/**		
		If `true`, enables selecting a tab with the right mouse button.
	**/
	@:native("SetSelectWithRmb")
	public function setSelectWithRmb(enabled:Bool):Void;

	/**		
		Returns `true` if select with right mouse button is enabled.
	**/
	@:native("GetSelectWithRmb")
	public function getSelectWithRmb():Bool;
}
