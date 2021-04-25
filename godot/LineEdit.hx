// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
LineEdit provides a single-line string editor, used for text fields.

It features many built-in shortcuts which will always be available (`Ctrl` here maps to `Command` on macOS):

- Ctrl + C: Copy

- Ctrl + X: Cut

- Ctrl + V or Ctrl + Y: Paste/"yank"

- Ctrl + Z: Undo

- Ctrl + Shift + Z: Redo

- Ctrl + U: Delete text from the cursor position to the beginning of the line

- Ctrl + K: Delete text from the cursor position to the end of the line

- Ctrl + A: Select all text

- Up/Down arrow: Move the cursor to the beginning/end of the line

On macOS, some extra keyboard shortcuts are available:

- Ctrl + F: Like the right arrow key, move the cursor one character right

- Ctrl + B: Like the left arrow key, move the cursor one character left

- Ctrl + P: Like the up arrow key, move the cursor to the previous line

- Ctrl + N: Like the down arrow key, move the cursor to the next line

- Ctrl + D: Like the Delete key, delete the character on the right side of cursor

- Ctrl + H: Like the Backspace key, delete the character on the left side of the cursor

- Command + Left arrow: Like the Home key, move the cursor to the beginning of the line

- Command + Right arrow: Like the End key, move the cursor to the end of the line
**/
@:libType
@:csNative
@:native("Godot.LineEdit")
@:autoBuild(godot.Godot.buildUserClass())
extern class LineEdit extends godot.Control {
	/**
		`text_change_rejected` signal.
		
		Emitted when trying to append text that would overflow the `maxLength`.
	**/
	public var onTextChangeRejected(get, never):Signal<Void->Void>;
	@:dox(hide) inline function get_onTextChangeRejected():Signal<Void->Void> {
		return new Signal(this, "text_change_rejected", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`text_changed` signal.
		
		Emitted when the text changes.
	**/
	public var onTextChanged(get, never):Signal<(newText:std.String)->Void>;
	@:dox(hide) inline function get_onTextChanged():Signal<(newText:std.String)->Void> {
		return new Signal(this, "text_changed", Signal.SignalHandlerStringVoid.connectSignal, Signal.SignalHandlerStringVoid.disconnectSignal, Signal.SignalHandlerStringVoid.isSignalConnected);
	}

	/**
		`text_entered` signal.
		
		Emitted when the user presses `KEY_ENTER` on the `LineEdit`.
	**/
	public var onTextEntered(get, never):Signal<(newText:std.String)->Void>;
	@:dox(hide) inline function get_onTextEntered():Signal<(newText:std.String)->Void> {
		return new Signal(this, "text_entered", Signal.SignalHandlerStringVoid.connectSignal, Signal.SignalHandlerStringVoid.disconnectSignal, Signal.SignalHandlerStringVoid.isSignalConnected);
	}

	/**		
		The cursor's position inside the `godot.LineEdit`. When set, the text may scroll to accommodate it.
	**/
	@:native("CaretPosition")
	public var caretPosition:Int;

	/**		
		Duration (in seconds) of a caret's blinking cycle.
	**/
	@:native("CaretBlinkSpeed")
	public var caretBlinkSpeed:Single;

	/**		
		If `true`, the caret (visual cursor) blinks.
	**/
	@:native("CaretBlink")
	public var caretBlink:Bool;

	/**		
		Opacity of the `godot.LineEdit.placeholderText`. From `0` to `1`.
	**/
	@:native("PlaceholderAlpha")
	public var placeholderAlpha:Single;

	/**		
		Text shown when the `godot.LineEdit` is empty. It is not the `godot.LineEdit`'s default value (see `godot.LineEdit.text`).
	**/
	@:native("PlaceholderText")
	public var placeholderText:std.String;

	/**		
		Sets the icon that will appear in the right end of the `godot.LineEdit` if there's no `godot.LineEdit.text`, or always, if `godot.LineEdit.clearButtonEnabled` is set to `false`.
	**/
	@:native("RightIcon")
	public var rightIcon:godot.Texture;

	/**		
		If `false`, it's impossible to select the text using mouse nor keyboard.
	**/
	@:native("SelectingEnabled")
	public var selectingEnabled:Bool;

	/**		
		If `false`, using shortcuts will be disabled.
	**/
	@:native("ShortcutKeysEnabled")
	public var shortcutKeysEnabled:Bool;

	/**		
		If `true`, the `godot.LineEdit` will show a clear button if `text` is not empty, which can be used to clear the text quickly.
	**/
	@:native("ClearButtonEnabled")
	public var clearButtonEnabled:Bool;

	/**		
		If `true`, the native virtual keyboard is shown when focused on platforms that support it.
	**/
	@:native("VirtualKeyboardEnabled")
	public var virtualKeyboardEnabled:Bool;

	/**		
		If `true`, the context menu will appear when right-clicked.
	**/
	@:native("ContextMenuEnabled")
	public var contextMenuEnabled:Bool;

	/**		
		If `true`, the `godot.LineEdit` width will increase to stay longer than the `godot.LineEdit.text`. It will not compress if the `godot.LineEdit.text` is shortened.
	**/
	@:native("ExpandToTextLength")
	public var expandToTextLength:Bool;

	/**		
		The character to use to mask secret input (defaults to "*"). Only a single character can be used as the secret character.
	**/
	@:native("SecretCharacter")
	public var secretCharacter:std.String;

	/**		
		If `true`, every character is replaced with the secret character (see `godot.LineEdit.secretCharacter`).
	**/
	@:native("Secret")
	public var secret:Bool;

	/**		
		If `false`, existing text cannot be modified and new text cannot be added.
	**/
	@:native("Editable")
	public var editable:Bool;

	/**		
		Maximum amount of characters that can be entered inside the `godot.LineEdit`. If `0`, there is no limit.
	**/
	@:native("MaxLength")
	public var maxLength:Int;

	/**		
		Text alignment as defined in the `godot.LineEdit_AlignEnum` enum.
	**/
	@:native("Align")
	public var align:godot.LineEdit_AlignEnum;

	/**		
		String value of the `godot.LineEdit`.
		
		Note: Changing text using this property won't emit the `text_changed` signal.
	**/
	@:native("Text")
	public var text:std.String;

	@:native("new")
	public function new():Void;

	@:native("SetAlign")
	public function setAlign(align:godot.LineEdit_AlignEnum):Void;

	@:native("GetAlign")
	public function getAlign():godot.LineEdit_AlignEnum;

	/**		
		Erases the `godot.LineEdit`'s `godot.LineEdit.text`.
	**/
	@:native("Clear")
	public function clear():Void;

	#if doc_gen
	/**		
		Selects characters inside `godot.LineEdit` between `from` and `to`. By default, `from` is at the beginning and `to` at the end.
		
		```
		
		text = "Welcome"
		select() # Will select "Welcome".
		select(4) # Will select "ome".
		select(2, 5) # Will select "lco".
		
		```
	**/
	@:native("Select")
	public function select(?from:Int, ?to:Int):Void;
	#else
	/**		
		Selects characters inside `godot.LineEdit` between `from` and `to`. By default, `from` is at the beginning and `to` at the end.
		
		```
		
		text = "Welcome"
		select() # Will select "Welcome".
		select(4) # Will select "ome".
		select(2, 5) # Will select "lco".
		
		```
	**/
	@:native("Select")
	public overload function select():Void;

	/**		
		Selects characters inside `godot.LineEdit` between `from` and `to`. By default, `from` is at the beginning and `to` at the end.
		
		```
		
		text = "Welcome"
		select() # Will select "Welcome".
		select(4) # Will select "ome".
		select(2, 5) # Will select "lco".
		
		```
	**/
	@:native("Select")
	public overload function select(from:Int):Void;

	/**		
		Selects characters inside `godot.LineEdit` between `from` and `to`. By default, `from` is at the beginning and `to` at the end.
		
		```
		
		text = "Welcome"
		select() # Will select "Welcome".
		select(4) # Will select "ome".
		select(2, 5) # Will select "lco".
		
		```
	**/
	@:native("Select")
	public overload function select(from:Int, to:Int):Void;
	#end

	/**		
		Selects the whole `String`.
	**/
	@:native("SelectAll")
	public function selectAll():Void;

	/**		
		Clears the current selection.
	**/
	@:native("Deselect")
	public function deselect():Void;

	@:native("SetText")
	public function setText(text:std.String):Void;

	@:native("GetText")
	public function getText():std.String;

	@:native("SetPlaceholder")
	public function setPlaceholder(text:std.String):Void;

	@:native("GetPlaceholder")
	public function getPlaceholder():std.String;

	@:native("SetPlaceholderAlpha")
	public function setPlaceholderAlpha(alpha:Single):Void;

	@:native("GetPlaceholderAlpha")
	public function getPlaceholderAlpha():Single;

	@:native("SetCursorPosition")
	public function setCursorPosition(position:Int):Void;

	@:native("GetCursorPosition")
	public function getCursorPosition():Int;

	/**		
		Returns the scroll offset due to `godot.LineEdit.caretPosition`, as a number of characters.
	**/
	@:native("GetScrollOffset")
	public function getScrollOffset():Int;

	@:native("SetExpandToTextLength")
	public function setExpandToTextLength(enabled:Bool):Void;

	@:native("GetExpandToTextLength")
	public function getExpandToTextLength():Bool;

	@:native("CursorSetBlinkEnabled")
	public function cursorSetBlinkEnabled(enabled:Bool):Void;

	@:native("CursorGetBlinkEnabled")
	public function cursorGetBlinkEnabled():Bool;

	@:native("CursorSetBlinkSpeed")
	public function cursorSetBlinkSpeed(blinkSpeed:Single):Void;

	@:native("CursorGetBlinkSpeed")
	public function cursorGetBlinkSpeed():Single;

	@:native("SetMaxLength")
	public function setMaxLength(chars:Int):Void;

	@:native("GetMaxLength")
	public function getMaxLength():Int;

	/**		
		Adds `text` after the cursor. If the resulting value is longer than `godot.LineEdit.maxLength`, nothing happens.
	**/
	@:native("AppendAtCursor")
	public function appendAtCursor(text:std.String):Void;

	/**		
		Deletes one character at the cursor's current position (equivalent to pressing the `Delete` key).
	**/
	@:native("DeleteCharAtCursor")
	public function deleteCharAtCursor():Void;

	/**		
		Deletes a section of the `godot.LineEdit.text` going from position `from_column` to `to_column`. Both parameters should be within the text's length.
	**/
	@:native("DeleteText")
	public function deleteText(fromColumn:Int, toColumn:Int):Void;

	@:native("SetEditable")
	public function setEditable(enabled:Bool):Void;

	@:native("IsEditable")
	public function isEditable():Bool;

	@:native("SetSecret")
	public function setSecret(enabled:Bool):Void;

	@:native("IsSecret")
	public function isSecret():Bool;

	@:native("SetSecretCharacter")
	public function setSecretCharacter(character:std.String):Void;

	@:native("GetSecretCharacter")
	public function getSecretCharacter():std.String;

	/**		
		Executes a given action as defined in the `godot.LineEdit_MenuItems` enum.
	**/
	@:native("MenuOption")
	public function menuOption(option:Int):Void;

	/**		
		Returns the `godot.PopupMenu` of this `godot.LineEdit`. By default, this menu is displayed when right-clicking on the `godot.LineEdit`.
	**/
	@:native("GetMenu")
	public function getMenu():godot.PopupMenu;

	@:native("SetContextMenuEnabled")
	public function setContextMenuEnabled(enable:Bool):Void;

	@:native("IsContextMenuEnabled")
	public function isContextMenuEnabled():Bool;

	@:native("SetVirtualKeyboardEnabled")
	public function setVirtualKeyboardEnabled(enable:Bool):Void;

	@:native("IsVirtualKeyboardEnabled")
	public function isVirtualKeyboardEnabled():Bool;

	@:native("SetClearButtonEnabled")
	public function setClearButtonEnabled(enable:Bool):Void;

	@:native("IsClearButtonEnabled")
	public function isClearButtonEnabled():Bool;

	@:native("SetShortcutKeysEnabled")
	public function setShortcutKeysEnabled(enable:Bool):Void;

	@:native("IsShortcutKeysEnabled")
	public function isShortcutKeysEnabled():Bool;

	@:native("SetSelectingEnabled")
	public function setSelectingEnabled(enable:Bool):Void;

	@:native("IsSelectingEnabled")
	public function isSelectingEnabled():Bool;

	@:native("SetRightIcon")
	public function setRightIcon(icon:godot.Texture):Void;

	@:native("GetRightIcon")
	public function getRightIcon():godot.Texture;
}
