// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
`godot.PopupMenu` is a `godot.Control` that displays a list of options. They are popular in toolbars or context menus.
**/
@:libType
@:csNative
@:native("Godot.PopupMenu")
@:autoBuild(godot.Godot.buildUserClass())
extern class PopupMenu extends godot.Popup {
	/**
		`id_focused` signal.
	**/
	public var onIdFocused(get, never):Signal<(id:Int)->Void>;
	@:dox(hide) @:noCompletion inline function get_onIdFocused():Signal<(id:Int)->Void> {
		return new Signal(this, "id_focused", Signal.SignalHandlerIntVoid.connectSignal, Signal.SignalHandlerIntVoid.disconnectSignal, Signal.SignalHandlerIntVoid.isSignalConnected);
	}

	/**
		`id_pressed` signal.
	**/
	public var onIdPressed(get, never):Signal<(id:Int)->Void>;
	@:dox(hide) @:noCompletion inline function get_onIdPressed():Signal<(id:Int)->Void> {
		return new Signal(this, "id_pressed", Signal.SignalHandlerIntVoid.connectSignal, Signal.SignalHandlerIntVoid.disconnectSignal, Signal.SignalHandlerIntVoid.isSignalConnected);
	}

	/**
		`index_pressed` signal.
	**/
	public var onIndexPressed(get, never):Signal<(index:Int)->Void>;
	@:dox(hide) @:noCompletion inline function get_onIndexPressed():Signal<(index:Int)->Void> {
		return new Signal(this, "index_pressed", Signal.SignalHandlerIntVoid.connectSignal, Signal.SignalHandlerIntVoid.disconnectSignal, Signal.SignalHandlerIntVoid.isSignalConnected);
	}

	/**		
		If `true`, allows navigating `godot.PopupMenu` with letter keys.
	**/
	@:native("AllowSearch")
	public var allowSearch:Bool;

	/**		
		Sets the delay time in seconds for the submenu item to popup on mouse hovering. If the popup menu is added as a child of another (acting as a submenu), it will inherit the delay time of the parent menu item.
	**/
	@:native("SubmenuPopupDelay")
	public var submenuPopupDelay:Single;

	/**		
		If `true`, hides the `godot.PopupMenu` when a state item is selected.
	**/
	@:native("HideOnStateItemSelection")
	public var hideOnStateItemSelection:Bool;

	/**		
		If `true`, hides the `godot.PopupMenu` when a checkbox or radio button is selected.
	**/
	@:native("HideOnCheckableItemSelection")
	public var hideOnCheckableItemSelection:Bool;

	/**		
		If `true`, hides the `godot.PopupMenu` when an item is selected.
	**/
	@:native("HideOnItemSelection")
	public var hideOnItemSelection:Bool;

	@:native("Items")
	public var items:godot.collections.Array;

	@:native("new")
	public function new():Void;

	#if doc_gen
	/**		
		Adds a new item with text `label`.
		
		An `id` can optionally be provided, as well as an accelerator (`accel`). If no `id` is provided, one will be created from the index. If no `accel` is provided then the default `0` will be assigned to it. See `godot.PopupMenu.getItemAccelerator` for more info on accelerators.
	**/
	@:native("AddItem")
	public function addItem(label:std.String, ?id:Int, ?accel:UInt):Void;
	#else
	/**		
		Adds a new item with text `label`.
		
		An `id` can optionally be provided, as well as an accelerator (`accel`). If no `id` is provided, one will be created from the index. If no `accel` is provided then the default `0` will be assigned to it. See `godot.PopupMenu.getItemAccelerator` for more info on accelerators.
	**/
	@:native("AddItem")
	public overload function addItem(label:std.String):Void;

	/**		
		Adds a new item with text `label`.
		
		An `id` can optionally be provided, as well as an accelerator (`accel`). If no `id` is provided, one will be created from the index. If no `accel` is provided then the default `0` will be assigned to it. See `godot.PopupMenu.getItemAccelerator` for more info on accelerators.
	**/
	@:native("AddItem")
	public overload function addItem(label:std.String, id:Int):Void;

	/**		
		Adds a new item with text `label`.
		
		An `id` can optionally be provided, as well as an accelerator (`accel`). If no `id` is provided, one will be created from the index. If no `accel` is provided then the default `0` will be assigned to it. See `godot.PopupMenu.getItemAccelerator` for more info on accelerators.
	**/
	@:native("AddItem")
	public overload function addItem(label:std.String, id:Int, accel:UInt):Void;
	#end

	#if doc_gen
	/**		
		Adds a new item with text `label` and icon `texture`.
		
		An `id` can optionally be provided, as well as an accelerator (`accel`). If no `id` is provided, one will be created from the index. If no `accel` is provided then the default `0` will be assigned to it. See `godot.PopupMenu.getItemAccelerator` for more info on accelerators.
	**/
	@:native("AddIconItem")
	public function addIconItem(texture:godot.Texture, label:std.String, ?id:Int, ?accel:UInt):Void;
	#else
	/**		
		Adds a new item with text `label` and icon `texture`.
		
		An `id` can optionally be provided, as well as an accelerator (`accel`). If no `id` is provided, one will be created from the index. If no `accel` is provided then the default `0` will be assigned to it. See `godot.PopupMenu.getItemAccelerator` for more info on accelerators.
	**/
	@:native("AddIconItem")
	public overload function addIconItem(texture:godot.Texture, label:std.String):Void;

	/**		
		Adds a new item with text `label` and icon `texture`.
		
		An `id` can optionally be provided, as well as an accelerator (`accel`). If no `id` is provided, one will be created from the index. If no `accel` is provided then the default `0` will be assigned to it. See `godot.PopupMenu.getItemAccelerator` for more info on accelerators.
	**/
	@:native("AddIconItem")
	public overload function addIconItem(texture:godot.Texture, label:std.String, id:Int):Void;

	/**		
		Adds a new item with text `label` and icon `texture`.
		
		An `id` can optionally be provided, as well as an accelerator (`accel`). If no `id` is provided, one will be created from the index. If no `accel` is provided then the default `0` will be assigned to it. See `godot.PopupMenu.getItemAccelerator` for more info on accelerators.
	**/
	@:native("AddIconItem")
	public overload function addIconItem(texture:godot.Texture, label:std.String, id:Int, accel:UInt):Void;
	#end

	#if doc_gen
	/**		
		Adds a new checkable item with text `label`.
		
		An `id` can optionally be provided, as well as an accelerator (`accel`). If no `id` is provided, one will be created from the index. If no `accel` is provided then the default `0` will be assigned to it. See `godot.PopupMenu.getItemAccelerator` for more info on accelerators.
		
		Note: Checkable items just display a checkmark, but don't have any built-in checking behavior and must be checked/unchecked manually. See `godot.PopupMenu.setItemChecked` for more info on how to control it.
	**/
	@:native("AddCheckItem")
	public function addCheckItem(label:std.String, ?id:Int, ?accel:UInt):Void;
	#else
	/**		
		Adds a new checkable item with text `label`.
		
		An `id` can optionally be provided, as well as an accelerator (`accel`). If no `id` is provided, one will be created from the index. If no `accel` is provided then the default `0` will be assigned to it. See `godot.PopupMenu.getItemAccelerator` for more info on accelerators.
		
		Note: Checkable items just display a checkmark, but don't have any built-in checking behavior and must be checked/unchecked manually. See `godot.PopupMenu.setItemChecked` for more info on how to control it.
	**/
	@:native("AddCheckItem")
	public overload function addCheckItem(label:std.String):Void;

	/**		
		Adds a new checkable item with text `label`.
		
		An `id` can optionally be provided, as well as an accelerator (`accel`). If no `id` is provided, one will be created from the index. If no `accel` is provided then the default `0` will be assigned to it. See `godot.PopupMenu.getItemAccelerator` for more info on accelerators.
		
		Note: Checkable items just display a checkmark, but don't have any built-in checking behavior and must be checked/unchecked manually. See `godot.PopupMenu.setItemChecked` for more info on how to control it.
	**/
	@:native("AddCheckItem")
	public overload function addCheckItem(label:std.String, id:Int):Void;

	/**		
		Adds a new checkable item with text `label`.
		
		An `id` can optionally be provided, as well as an accelerator (`accel`). If no `id` is provided, one will be created from the index. If no `accel` is provided then the default `0` will be assigned to it. See `godot.PopupMenu.getItemAccelerator` for more info on accelerators.
		
		Note: Checkable items just display a checkmark, but don't have any built-in checking behavior and must be checked/unchecked manually. See `godot.PopupMenu.setItemChecked` for more info on how to control it.
	**/
	@:native("AddCheckItem")
	public overload function addCheckItem(label:std.String, id:Int, accel:UInt):Void;
	#end

	#if doc_gen
	/**		
		Adds a new checkable item with text `label` and icon `texture`.
		
		An `id` can optionally be provided, as well as an accelerator (`accel`). If no `id` is provided, one will be created from the index. If no `accel` is provided then the default `0` will be assigned to it. See `godot.PopupMenu.getItemAccelerator` for more info on accelerators.
		
		Note: Checkable items just display a checkmark, but don't have any built-in checking behavior and must be checked/unchecked manually. See `godot.PopupMenu.setItemChecked` for more info on how to control it.
	**/
	@:native("AddIconCheckItem")
	public function addIconCheckItem(texture:godot.Texture, label:std.String, ?id:Int, ?accel:UInt):Void;
	#else
	/**		
		Adds a new checkable item with text `label` and icon `texture`.
		
		An `id` can optionally be provided, as well as an accelerator (`accel`). If no `id` is provided, one will be created from the index. If no `accel` is provided then the default `0` will be assigned to it. See `godot.PopupMenu.getItemAccelerator` for more info on accelerators.
		
		Note: Checkable items just display a checkmark, but don't have any built-in checking behavior and must be checked/unchecked manually. See `godot.PopupMenu.setItemChecked` for more info on how to control it.
	**/
	@:native("AddIconCheckItem")
	public overload function addIconCheckItem(texture:godot.Texture, label:std.String):Void;

	/**		
		Adds a new checkable item with text `label` and icon `texture`.
		
		An `id` can optionally be provided, as well as an accelerator (`accel`). If no `id` is provided, one will be created from the index. If no `accel` is provided then the default `0` will be assigned to it. See `godot.PopupMenu.getItemAccelerator` for more info on accelerators.
		
		Note: Checkable items just display a checkmark, but don't have any built-in checking behavior and must be checked/unchecked manually. See `godot.PopupMenu.setItemChecked` for more info on how to control it.
	**/
	@:native("AddIconCheckItem")
	public overload function addIconCheckItem(texture:godot.Texture, label:std.String, id:Int):Void;

	/**		
		Adds a new checkable item with text `label` and icon `texture`.
		
		An `id` can optionally be provided, as well as an accelerator (`accel`). If no `id` is provided, one will be created from the index. If no `accel` is provided then the default `0` will be assigned to it. See `godot.PopupMenu.getItemAccelerator` for more info on accelerators.
		
		Note: Checkable items just display a checkmark, but don't have any built-in checking behavior and must be checked/unchecked manually. See `godot.PopupMenu.setItemChecked` for more info on how to control it.
	**/
	@:native("AddIconCheckItem")
	public overload function addIconCheckItem(texture:godot.Texture, label:std.String, id:Int, accel:UInt):Void;
	#end

	#if doc_gen
	/**		
		Adds a new radio check button with text `label`.
		
		An `id` can optionally be provided, as well as an accelerator (`accel`). If no `id` is provided, one will be created from the index. If no `accel` is provided then the default `0` will be assigned to it. See `godot.PopupMenu.getItemAccelerator` for more info on accelerators.
		
		Note: Checkable items just display a checkmark, but don't have any built-in checking behavior and must be checked/unchecked manually. See `godot.PopupMenu.setItemChecked` for more info on how to control it.
	**/
	@:native("AddRadioCheckItem")
	public function addRadioCheckItem(label:std.String, ?id:Int, ?accel:UInt):Void;
	#else
	/**		
		Adds a new radio check button with text `label`.
		
		An `id` can optionally be provided, as well as an accelerator (`accel`). If no `id` is provided, one will be created from the index. If no `accel` is provided then the default `0` will be assigned to it. See `godot.PopupMenu.getItemAccelerator` for more info on accelerators.
		
		Note: Checkable items just display a checkmark, but don't have any built-in checking behavior and must be checked/unchecked manually. See `godot.PopupMenu.setItemChecked` for more info on how to control it.
	**/
	@:native("AddRadioCheckItem")
	public overload function addRadioCheckItem(label:std.String):Void;

	/**		
		Adds a new radio check button with text `label`.
		
		An `id` can optionally be provided, as well as an accelerator (`accel`). If no `id` is provided, one will be created from the index. If no `accel` is provided then the default `0` will be assigned to it. See `godot.PopupMenu.getItemAccelerator` for more info on accelerators.
		
		Note: Checkable items just display a checkmark, but don't have any built-in checking behavior and must be checked/unchecked manually. See `godot.PopupMenu.setItemChecked` for more info on how to control it.
	**/
	@:native("AddRadioCheckItem")
	public overload function addRadioCheckItem(label:std.String, id:Int):Void;

	/**		
		Adds a new radio check button with text `label`.
		
		An `id` can optionally be provided, as well as an accelerator (`accel`). If no `id` is provided, one will be created from the index. If no `accel` is provided then the default `0` will be assigned to it. See `godot.PopupMenu.getItemAccelerator` for more info on accelerators.
		
		Note: Checkable items just display a checkmark, but don't have any built-in checking behavior and must be checked/unchecked manually. See `godot.PopupMenu.setItemChecked` for more info on how to control it.
	**/
	@:native("AddRadioCheckItem")
	public overload function addRadioCheckItem(label:std.String, id:Int, accel:UInt):Void;
	#end

	#if doc_gen
	/**		
		Same as `godot.PopupMenu.addIconCheckItem`, but uses a radio check button.
	**/
	@:native("AddIconRadioCheckItem")
	public function addIconRadioCheckItem(texture:godot.Texture, label:std.String, ?id:Int, ?accel:UInt):Void;
	#else
	/**		
		Same as `godot.PopupMenu.addIconCheckItem`, but uses a radio check button.
	**/
	@:native("AddIconRadioCheckItem")
	public overload function addIconRadioCheckItem(texture:godot.Texture, label:std.String):Void;

	/**		
		Same as `godot.PopupMenu.addIconCheckItem`, but uses a radio check button.
	**/
	@:native("AddIconRadioCheckItem")
	public overload function addIconRadioCheckItem(texture:godot.Texture, label:std.String, id:Int):Void;

	/**		
		Same as `godot.PopupMenu.addIconCheckItem`, but uses a radio check button.
	**/
	@:native("AddIconRadioCheckItem")
	public overload function addIconRadioCheckItem(texture:godot.Texture, label:std.String, id:Int, accel:UInt):Void;
	#end

	#if doc_gen
	/**		
		Adds a new multistate item with text `label`.
		
		Contrarily to normal binary items, multistate items can have more than two states, as defined by `max_states`. Each press or activate of the item will increase the state by one. The default value is defined by `default_state`.
		
		An `id` can optionally be provided, as well as an accelerator (`accel`). If no `id` is provided, one will be created from the index. If no `accel` is provided then the default `0` will be assigned to it. See `godot.PopupMenu.getItemAccelerator` for more info on accelerators.
	**/
	@:native("AddMultistateItem")
	public function addMultistateItem(label:std.String, maxStates:Int, ?defaultState:Int, ?id:Int, ?accel:UInt):Void;
	#else
	/**		
		Adds a new multistate item with text `label`.
		
		Contrarily to normal binary items, multistate items can have more than two states, as defined by `max_states`. Each press or activate of the item will increase the state by one. The default value is defined by `default_state`.
		
		An `id` can optionally be provided, as well as an accelerator (`accel`). If no `id` is provided, one will be created from the index. If no `accel` is provided then the default `0` will be assigned to it. See `godot.PopupMenu.getItemAccelerator` for more info on accelerators.
	**/
	@:native("AddMultistateItem")
	public overload function addMultistateItem(label:std.String, maxStates:Int):Void;

	/**		
		Adds a new multistate item with text `label`.
		
		Contrarily to normal binary items, multistate items can have more than two states, as defined by `max_states`. Each press or activate of the item will increase the state by one. The default value is defined by `default_state`.
		
		An `id` can optionally be provided, as well as an accelerator (`accel`). If no `id` is provided, one will be created from the index. If no `accel` is provided then the default `0` will be assigned to it. See `godot.PopupMenu.getItemAccelerator` for more info on accelerators.
	**/
	@:native("AddMultistateItem")
	public overload function addMultistateItem(label:std.String, maxStates:Int, defaultState:Int):Void;

	/**		
		Adds a new multistate item with text `label`.
		
		Contrarily to normal binary items, multistate items can have more than two states, as defined by `max_states`. Each press or activate of the item will increase the state by one. The default value is defined by `default_state`.
		
		An `id` can optionally be provided, as well as an accelerator (`accel`). If no `id` is provided, one will be created from the index. If no `accel` is provided then the default `0` will be assigned to it. See `godot.PopupMenu.getItemAccelerator` for more info on accelerators.
	**/
	@:native("AddMultistateItem")
	public overload function addMultistateItem(label:std.String, maxStates:Int, defaultState:Int, id:Int):Void;

	/**		
		Adds a new multistate item with text `label`.
		
		Contrarily to normal binary items, multistate items can have more than two states, as defined by `max_states`. Each press or activate of the item will increase the state by one. The default value is defined by `default_state`.
		
		An `id` can optionally be provided, as well as an accelerator (`accel`). If no `id` is provided, one will be created from the index. If no `accel` is provided then the default `0` will be assigned to it. See `godot.PopupMenu.getItemAccelerator` for more info on accelerators.
	**/
	@:native("AddMultistateItem")
	public overload function addMultistateItem(label:std.String, maxStates:Int, defaultState:Int, id:Int, accel:UInt):Void;
	#end

	#if doc_gen
	/**		
		Adds a `godot.ShortCut`.
		
		An `id` can optionally be provided. If no `id` is provided, one will be created from the index.
	**/
	@:native("AddShortcut")
	public function addShortcut(shortcut:godot.ShortCut, ?id:Int, ?global:Bool):Void;
	#else
	/**		
		Adds a `godot.ShortCut`.
		
		An `id` can optionally be provided. If no `id` is provided, one will be created from the index.
	**/
	@:native("AddShortcut")
	public overload function addShortcut(shortcut:godot.ShortCut):Void;

	/**		
		Adds a `godot.ShortCut`.
		
		An `id` can optionally be provided. If no `id` is provided, one will be created from the index.
	**/
	@:native("AddShortcut")
	public overload function addShortcut(shortcut:godot.ShortCut, id:Int):Void;

	/**		
		Adds a `godot.ShortCut`.
		
		An `id` can optionally be provided. If no `id` is provided, one will be created from the index.
	**/
	@:native("AddShortcut")
	public overload function addShortcut(shortcut:godot.ShortCut, id:Int, global:Bool):Void;
	#end

	#if doc_gen
	/**		
		Adds a new item and assigns the specified `godot.ShortCut` and icon `texture` to it. Sets the label of the checkbox to the `godot.ShortCut`'s name.
		
		An `id` can optionally be provided. If no `id` is provided, one will be created from the index.
	**/
	@:native("AddIconShortcut")
	public function addIconShortcut(texture:godot.Texture, shortcut:godot.ShortCut, ?id:Int, ?global:Bool):Void;
	#else
	/**		
		Adds a new item and assigns the specified `godot.ShortCut` and icon `texture` to it. Sets the label of the checkbox to the `godot.ShortCut`'s name.
		
		An `id` can optionally be provided. If no `id` is provided, one will be created from the index.
	**/
	@:native("AddIconShortcut")
	public overload function addIconShortcut(texture:godot.Texture, shortcut:godot.ShortCut):Void;

	/**		
		Adds a new item and assigns the specified `godot.ShortCut` and icon `texture` to it. Sets the label of the checkbox to the `godot.ShortCut`'s name.
		
		An `id` can optionally be provided. If no `id` is provided, one will be created from the index.
	**/
	@:native("AddIconShortcut")
	public overload function addIconShortcut(texture:godot.Texture, shortcut:godot.ShortCut, id:Int):Void;

	/**		
		Adds a new item and assigns the specified `godot.ShortCut` and icon `texture` to it. Sets the label of the checkbox to the `godot.ShortCut`'s name.
		
		An `id` can optionally be provided. If no `id` is provided, one will be created from the index.
	**/
	@:native("AddIconShortcut")
	public overload function addIconShortcut(texture:godot.Texture, shortcut:godot.ShortCut, id:Int, global:Bool):Void;
	#end

	#if doc_gen
	/**		
		Adds a new checkable item and assigns the specified `godot.ShortCut` to it. Sets the label of the checkbox to the `godot.ShortCut`'s name.
		
		An `id` can optionally be provided. If no `id` is provided, one will be created from the index.
		
		Note: Checkable items just display a checkmark, but don't have any built-in checking behavior and must be checked/unchecked manually. See `godot.PopupMenu.setItemChecked` for more info on how to control it.
	**/
	@:native("AddCheckShortcut")
	public function addCheckShortcut(shortcut:godot.ShortCut, ?id:Int, ?global:Bool):Void;
	#else
	/**		
		Adds a new checkable item and assigns the specified `godot.ShortCut` to it. Sets the label of the checkbox to the `godot.ShortCut`'s name.
		
		An `id` can optionally be provided. If no `id` is provided, one will be created from the index.
		
		Note: Checkable items just display a checkmark, but don't have any built-in checking behavior and must be checked/unchecked manually. See `godot.PopupMenu.setItemChecked` for more info on how to control it.
	**/
	@:native("AddCheckShortcut")
	public overload function addCheckShortcut(shortcut:godot.ShortCut):Void;

	/**		
		Adds a new checkable item and assigns the specified `godot.ShortCut` to it. Sets the label of the checkbox to the `godot.ShortCut`'s name.
		
		An `id` can optionally be provided. If no `id` is provided, one will be created from the index.
		
		Note: Checkable items just display a checkmark, but don't have any built-in checking behavior and must be checked/unchecked manually. See `godot.PopupMenu.setItemChecked` for more info on how to control it.
	**/
	@:native("AddCheckShortcut")
	public overload function addCheckShortcut(shortcut:godot.ShortCut, id:Int):Void;

	/**		
		Adds a new checkable item and assigns the specified `godot.ShortCut` to it. Sets the label of the checkbox to the `godot.ShortCut`'s name.
		
		An `id` can optionally be provided. If no `id` is provided, one will be created from the index.
		
		Note: Checkable items just display a checkmark, but don't have any built-in checking behavior and must be checked/unchecked manually. See `godot.PopupMenu.setItemChecked` for more info on how to control it.
	**/
	@:native("AddCheckShortcut")
	public overload function addCheckShortcut(shortcut:godot.ShortCut, id:Int, global:Bool):Void;
	#end

	#if doc_gen
	/**		
		Adds a new checkable item and assigns the specified `godot.ShortCut` and icon `texture` to it. Sets the label of the checkbox to the `godot.ShortCut`'s name.
		
		An `id` can optionally be provided. If no `id` is provided, one will be created from the index.
		
		Note: Checkable items just display a checkmark, but don't have any built-in checking behavior and must be checked/unchecked manually. See `godot.PopupMenu.setItemChecked` for more info on how to control it.
	**/
	@:native("AddIconCheckShortcut")
	public function addIconCheckShortcut(texture:godot.Texture, shortcut:godot.ShortCut, ?id:Int, ?global:Bool):Void;
	#else
	/**		
		Adds a new checkable item and assigns the specified `godot.ShortCut` and icon `texture` to it. Sets the label of the checkbox to the `godot.ShortCut`'s name.
		
		An `id` can optionally be provided. If no `id` is provided, one will be created from the index.
		
		Note: Checkable items just display a checkmark, but don't have any built-in checking behavior and must be checked/unchecked manually. See `godot.PopupMenu.setItemChecked` for more info on how to control it.
	**/
	@:native("AddIconCheckShortcut")
	public overload function addIconCheckShortcut(texture:godot.Texture, shortcut:godot.ShortCut):Void;

	/**		
		Adds a new checkable item and assigns the specified `godot.ShortCut` and icon `texture` to it. Sets the label of the checkbox to the `godot.ShortCut`'s name.
		
		An `id` can optionally be provided. If no `id` is provided, one will be created from the index.
		
		Note: Checkable items just display a checkmark, but don't have any built-in checking behavior and must be checked/unchecked manually. See `godot.PopupMenu.setItemChecked` for more info on how to control it.
	**/
	@:native("AddIconCheckShortcut")
	public overload function addIconCheckShortcut(texture:godot.Texture, shortcut:godot.ShortCut, id:Int):Void;

	/**		
		Adds a new checkable item and assigns the specified `godot.ShortCut` and icon `texture` to it. Sets the label of the checkbox to the `godot.ShortCut`'s name.
		
		An `id` can optionally be provided. If no `id` is provided, one will be created from the index.
		
		Note: Checkable items just display a checkmark, but don't have any built-in checking behavior and must be checked/unchecked manually. See `godot.PopupMenu.setItemChecked` for more info on how to control it.
	**/
	@:native("AddIconCheckShortcut")
	public overload function addIconCheckShortcut(texture:godot.Texture, shortcut:godot.ShortCut, id:Int, global:Bool):Void;
	#end

	#if doc_gen
	/**		
		Adds a new radio check button and assigns a `godot.ShortCut` to it. Sets the label of the checkbox to the `godot.ShortCut`'s name.
		
		An `id` can optionally be provided. If no `id` is provided, one will be created from the index.
		
		Note: Checkable items just display a checkmark, but don't have any built-in checking behavior and must be checked/unchecked manually. See `godot.PopupMenu.setItemChecked` for more info on how to control it.
	**/
	@:native("AddRadioCheckShortcut")
	public function addRadioCheckShortcut(shortcut:godot.ShortCut, ?id:Int, ?global:Bool):Void;
	#else
	/**		
		Adds a new radio check button and assigns a `godot.ShortCut` to it. Sets the label of the checkbox to the `godot.ShortCut`'s name.
		
		An `id` can optionally be provided. If no `id` is provided, one will be created from the index.
		
		Note: Checkable items just display a checkmark, but don't have any built-in checking behavior and must be checked/unchecked manually. See `godot.PopupMenu.setItemChecked` for more info on how to control it.
	**/
	@:native("AddRadioCheckShortcut")
	public overload function addRadioCheckShortcut(shortcut:godot.ShortCut):Void;

	/**		
		Adds a new radio check button and assigns a `godot.ShortCut` to it. Sets the label of the checkbox to the `godot.ShortCut`'s name.
		
		An `id` can optionally be provided. If no `id` is provided, one will be created from the index.
		
		Note: Checkable items just display a checkmark, but don't have any built-in checking behavior and must be checked/unchecked manually. See `godot.PopupMenu.setItemChecked` for more info on how to control it.
	**/
	@:native("AddRadioCheckShortcut")
	public overload function addRadioCheckShortcut(shortcut:godot.ShortCut, id:Int):Void;

	/**		
		Adds a new radio check button and assigns a `godot.ShortCut` to it. Sets the label of the checkbox to the `godot.ShortCut`'s name.
		
		An `id` can optionally be provided. If no `id` is provided, one will be created from the index.
		
		Note: Checkable items just display a checkmark, but don't have any built-in checking behavior and must be checked/unchecked manually. See `godot.PopupMenu.setItemChecked` for more info on how to control it.
	**/
	@:native("AddRadioCheckShortcut")
	public overload function addRadioCheckShortcut(shortcut:godot.ShortCut, id:Int, global:Bool):Void;
	#end

	#if doc_gen
	/**		
		Same as `godot.PopupMenu.addIconCheckShortcut`, but uses a radio check button.
	**/
	@:native("AddIconRadioCheckShortcut")
	public function addIconRadioCheckShortcut(texture:godot.Texture, shortcut:godot.ShortCut, ?id:Int, ?global:Bool):Void;
	#else
	/**		
		Same as `godot.PopupMenu.addIconCheckShortcut`, but uses a radio check button.
	**/
	@:native("AddIconRadioCheckShortcut")
	public overload function addIconRadioCheckShortcut(texture:godot.Texture, shortcut:godot.ShortCut):Void;

	/**		
		Same as `godot.PopupMenu.addIconCheckShortcut`, but uses a radio check button.
	**/
	@:native("AddIconRadioCheckShortcut")
	public overload function addIconRadioCheckShortcut(texture:godot.Texture, shortcut:godot.ShortCut, id:Int):Void;

	/**		
		Same as `godot.PopupMenu.addIconCheckShortcut`, but uses a radio check button.
	**/
	@:native("AddIconRadioCheckShortcut")
	public overload function addIconRadioCheckShortcut(texture:godot.Texture, shortcut:godot.ShortCut, id:Int, global:Bool):Void;
	#end

	#if doc_gen
	/**		
		Adds an item that will act as a submenu of the parent `godot.PopupMenu` node when clicked. The `submenu` argument is the name of the child `godot.PopupMenu` node that will be shown when the item is clicked.
		
		An `id` can optionally be provided. If no `id` is provided, one will be created from the index.
	**/
	@:native("AddSubmenuItem")
	public function addSubmenuItem(label:std.String, submenu:std.String, ?id:Int):Void;
	#else
	/**		
		Adds an item that will act as a submenu of the parent `godot.PopupMenu` node when clicked. The `submenu` argument is the name of the child `godot.PopupMenu` node that will be shown when the item is clicked.
		
		An `id` can optionally be provided. If no `id` is provided, one will be created from the index.
	**/
	@:native("AddSubmenuItem")
	public overload function addSubmenuItem(label:std.String, submenu:std.String):Void;

	/**		
		Adds an item that will act as a submenu of the parent `godot.PopupMenu` node when clicked. The `submenu` argument is the name of the child `godot.PopupMenu` node that will be shown when the item is clicked.
		
		An `id` can optionally be provided. If no `id` is provided, one will be created from the index.
	**/
	@:native("AddSubmenuItem")
	public overload function addSubmenuItem(label:std.String, submenu:std.String, id:Int):Void;
	#end

	/**		
		Sets the text of the item at index `idx`.
	**/
	@:native("SetItemText")
	public function setItemText(idx:Int, text:std.String):Void;

	/**		
		Replaces the `godot.Texture` icon of the specified `idx`.
	**/
	@:native("SetItemIcon")
	public function setItemIcon(idx:Int, icon:godot.Texture):Void;

	/**		
		Sets the checkstate status of the item at index `idx`.
	**/
	@:native("SetItemChecked")
	public function setItemChecked(idx:Int, checked:Bool):Void;

	/**		
		Sets the `id` of the item at index `idx`.
	**/
	@:native("SetItemId")
	public function setItemId(idx:Int, id:Int):Void;

	/**		
		Sets the accelerator of the item at index `idx`. Accelerators are special combinations of keys that activate the item, no matter which control is focused.
	**/
	@:native("SetItemAccelerator")
	public function setItemAccelerator(idx:Int, accel:UInt):Void;

	/**		
		Sets the metadata of an item, which may be of any type. You can later get it with `godot.PopupMenu.getItemMetadata`, which provides a simple way of assigning context data to items.
	**/
	@:native("SetItemMetadata")
	public function setItemMetadata(idx:Int, metadata:Dynamic):Void;

	/**		
		Enables/disables the item at index `idx`. When it is disabled, it can't be selected and its action can't be invoked.
	**/
	@:native("SetItemDisabled")
	public function setItemDisabled(idx:Int, disabled:Bool):Void;

	/**		
		Sets the submenu of the item at index `idx`. The submenu is the name of a child `godot.PopupMenu` node that would be shown when the item is clicked.
	**/
	@:native("SetItemSubmenu")
	public function setItemSubmenu(idx:Int, submenu:std.String):Void;

	/**		
		Mark the item at index `idx` as a separator, which means that it would be displayed as a line. If `false`, sets the type of the item to plain text.
	**/
	@:native("SetItemAsSeparator")
	public function setItemAsSeparator(idx:Int, enable:Bool):Void;

	/**		
		Sets whether the item at index `idx` has a checkbox. If `false`, sets the type of the item to plain text.
		
		Note: Checkable items just display a checkmark, but don't have any built-in checking behavior and must be checked/unchecked manually.
	**/
	@:native("SetItemAsCheckable")
	public function setItemAsCheckable(idx:Int, enable:Bool):Void;

	/**		
		Sets the type of the item at the specified index `idx` to radio button. If `false`, sets the type of the item to plain text.
	**/
	@:native("SetItemAsRadioCheckable")
	public function setItemAsRadioCheckable(idx:Int, enable:Bool):Void;

	/**		
		Sets the `String` tooltip of the item at the specified index `idx`.
	**/
	@:native("SetItemTooltip")
	public function setItemTooltip(idx:Int, tooltip:std.String):Void;

	#if doc_gen
	/**		
		Sets a `godot.ShortCut` for the specified item `idx`.
	**/
	@:native("SetItemShortcut")
	public function setItemShortcut(idx:Int, shortcut:godot.ShortCut, ?global:Bool):Void;
	#else
	/**		
		Sets a `godot.ShortCut` for the specified item `idx`.
	**/
	@:native("SetItemShortcut")
	public overload function setItemShortcut(idx:Int, shortcut:godot.ShortCut):Void;

	/**		
		Sets a `godot.ShortCut` for the specified item `idx`.
	**/
	@:native("SetItemShortcut")
	public overload function setItemShortcut(idx:Int, shortcut:godot.ShortCut, global:Bool):Void;
	#end

	/**		
		Sets the state of a multistate item. See `godot.PopupMenu.addMultistateItem` for details.
	**/
	@:native("SetItemMultistate")
	public function setItemMultistate(idx:Int, state:Int):Void;

	/**		
		Disables the `godot.ShortCut` of the specified index `idx`.
	**/
	@:native("SetItemShortcutDisabled")
	public function setItemShortcutDisabled(idx:Int, disabled:Bool):Void;

	/**		
		Toggles the check state of the item of the specified index `idx`.
	**/
	@:native("ToggleItemChecked")
	public function toggleItemChecked(idx:Int):Void;

	/**		
		Cycle to the next state of a multistate item. See `godot.PopupMenu.addMultistateItem` for details.
	**/
	@:native("ToggleItemMultistate")
	public function toggleItemMultistate(idx:Int):Void;

	/**		
		Returns the text of the item at index `idx`.
	**/
	@:native("GetItemText")
	public function getItemText(idx:Int):std.String;

	/**		
		Returns the icon of the item at index `idx`.
	**/
	@:native("GetItemIcon")
	public function getItemIcon(idx:Int):godot.Texture;

	/**		
		Returns `true` if the item at index `idx` is checked.
	**/
	@:native("IsItemChecked")
	public function isItemChecked(idx:Int):Bool;

	/**		
		Returns the id of the item at index `idx`. `id` can be manually assigned, while index can not.
	**/
	@:native("GetItemId")
	public function getItemId(idx:Int):Int;

	/**		
		Returns the index of the item containing the specified `id`. Index is automatically assigned to each item by the engine. Index can not be set manually.
	**/
	@:native("GetItemIndex")
	public function getItemIndex(id:Int):Int;

	/**		
		Returns the accelerator of the item at index `idx`. Accelerators are special combinations of keys that activate the item, no matter which control is focused.
	**/
	@:native("GetItemAccelerator")
	public function getItemAccelerator(idx:Int):UInt;

	/**		
		Returns the metadata of the specified item, which might be of any type. You can set it with `godot.PopupMenu.setItemMetadata`, which provides a simple way of assigning context data to items.
	**/
	@:native("GetItemMetadata")
	public function getItemMetadata(idx:Int):Dynamic;

	/**		
		Returns `true` if the item at index `idx` is disabled. When it is disabled it can't be selected, or its action invoked.
		
		See `godot.PopupMenu.setItemDisabled` for more info on how to disable an item.
	**/
	@:native("IsItemDisabled")
	public function isItemDisabled(idx:Int):Bool;

	/**		
		Returns the submenu name of the item at index `idx`. See `godot.PopupMenu.addSubmenuItem` for more info on how to add a submenu.
	**/
	@:native("GetItemSubmenu")
	public function getItemSubmenu(idx:Int):std.String;

	/**		
		Returns `true` if the item is a separator. If it is, it will be displayed as a line. See `godot.PopupMenu.addSeparator` for more info on how to add a separator.
	**/
	@:native("IsItemSeparator")
	public function isItemSeparator(idx:Int):Bool;

	/**		
		Returns `true` if the item at index `idx` is checkable in some way, i.e. if it has a checkbox or radio button.
		
		Note: Checkable items just display a checkmark or radio button, but don't have any built-in checking behavior and must be checked/unchecked manually.
	**/
	@:native("IsItemCheckable")
	public function isItemCheckable(idx:Int):Bool;

	/**		
		Returns `true` if the item at index `idx` has radio button-style checkability.
		
		Note: This is purely cosmetic; you must add the logic for checking/unchecking items in radio groups.
	**/
	@:native("IsItemRadioCheckable")
	public function isItemRadioCheckable(idx:Int):Bool;

	/**		
		Returns `true` if the specified item's shortcut is disabled.
	**/
	@:native("IsItemShortcutDisabled")
	public function isItemShortcutDisabled(idx:Int):Bool;

	/**		
		Returns the tooltip associated with the specified index index `idx`.
	**/
	@:native("GetItemTooltip")
	public function getItemTooltip(idx:Int):std.String;

	/**		
		Returns the `godot.ShortCut` associated with the specified `idx` item.
	**/
	@:native("GetItemShortcut")
	public function getItemShortcut(idx:Int):godot.ShortCut;

	/**		
		Returns the index of the currently focused item. Returns `-1` if no item is focused.
	**/
	@:native("GetCurrentIndex")
	public function getCurrentIndex():Int;

	/**		
		Returns the number of items in the `godot.PopupMenu`.
	**/
	@:native("GetItemCount")
	public function getItemCount():Int;

	/**		
		Removes the item at index `idx` from the menu.
		
		Note: The indices of items after the removed item will be shifted by one.
	**/
	@:native("RemoveItem")
	public function removeItem(idx:Int):Void;

	#if doc_gen
	/**		
		Adds a separator between items. Separators also occupy an index, which you can set by using the `id` parameter.
		
		A `label` can optionally be provided, which will appear at the center of the separator.
	**/
	@:native("AddSeparator")
	public function addSeparator(?label:std.String, ?id:Int):Void;
	#else
	/**		
		Adds a separator between items. Separators also occupy an index, which you can set by using the `id` parameter.
		
		A `label` can optionally be provided, which will appear at the center of the separator.
	**/
	@:native("AddSeparator")
	public overload function addSeparator():Void;

	/**		
		Adds a separator between items. Separators also occupy an index, which you can set by using the `id` parameter.
		
		A `label` can optionally be provided, which will appear at the center of the separator.
	**/
	@:native("AddSeparator")
	public overload function addSeparator(label:std.String):Void;

	/**		
		Adds a separator between items. Separators also occupy an index, which you can set by using the `id` parameter.
		
		A `label` can optionally be provided, which will appear at the center of the separator.
	**/
	@:native("AddSeparator")
	public overload function addSeparator(label:std.String, id:Int):Void;
	#end

	/**		
		Removes all items from the `godot.PopupMenu`.
	**/
	@:native("Clear")
	public function clear():Void;

	@:native("SetHideOnItemSelection")
	public function setHideOnItemSelection(enable:Bool):Void;

	@:native("IsHideOnItemSelection")
	public function isHideOnItemSelection():Bool;

	@:native("SetHideOnCheckableItemSelection")
	public function setHideOnCheckableItemSelection(enable:Bool):Void;

	@:native("IsHideOnCheckableItemSelection")
	public function isHideOnCheckableItemSelection():Bool;

	@:native("SetHideOnStateItemSelection")
	public function setHideOnStateItemSelection(enable:Bool):Void;

	@:native("IsHideOnStateItemSelection")
	public function isHideOnStateItemSelection():Bool;

	@:native("SetSubmenuPopupDelay")
	public function setSubmenuPopupDelay(seconds:Single):Void;

	@:native("GetSubmenuPopupDelay")
	public function getSubmenuPopupDelay():Single;

	/**		
		Hides the `godot.PopupMenu` when the window loses focus.
	**/
	@:native("SetHideOnWindowLoseFocus")
	public function setHideOnWindowLoseFocus(enable:Bool):Void;

	/**		
		Returns `true` if the popup will be hidden when the window loses focus or not.
	**/
	@:native("IsHideOnWindowLoseFocus")
	public function isHideOnWindowLoseFocus():Bool;

	@:native("SetAllowSearch")
	public function setAllowSearch(allow:Bool):Void;

	@:native("GetAllowSearch")
	public function getAllowSearch():Bool;
}
