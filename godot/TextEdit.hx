// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
TextEdit is meant for editing large, multiline text. It also has facilities for editing code, such as syntax highlighting support and multiple levels of undo/redo.
**/
@:libType
@:csNative
@:native("Godot.TextEdit")
@:autoBuild(godot.Godot.buildUserClass())
extern class TextEdit extends godot.Control {
	/**
		`breakpoint_toggled` signal.
		
		Emitted when a breakpoint is placed via the breakpoint gutter.
	**/
	public var onBreakpointToggled(get, never):Signal<(row:Int)->Void>;
	@:dox(hide) @:noCompletion inline function get_onBreakpointToggled():Signal<(row:Int)->Void> {
		return new Signal(this, "breakpoint_toggled", Signal.SignalHandlerIntVoid.connectSignal, Signal.SignalHandlerIntVoid.disconnectSignal, Signal.SignalHandlerIntVoid.isSignalConnected);
	}

	/**
		`cursor_changed` signal.
		
		Emitted when the cursor changes.
	**/
	public var onCursorChanged(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onCursorChanged():Signal<Void->Void> {
		return new Signal(this, "cursor_changed", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`info_clicked` signal.
		
		Emitted when the info icon is clicked.
	**/
	public var onInfoClicked(get, never):Signal<(row:Int, info:std.String)->Void>;
	@:dox(hide) @:noCompletion inline function get_onInfoClicked():Signal<(row:Int, info:std.String)->Void> {
		return new Signal(this, "info_clicked", Signal.SignalHandlerIntStringVoid.connectSignal, Signal.SignalHandlerIntStringVoid.disconnectSignal, Signal.SignalHandlerIntStringVoid.isSignalConnected);
	}

	/**
		`request_completion` signal.
	**/
	public var onRequestCompletion(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onRequestCompletion():Signal<Void->Void> {
		return new Signal(this, "request_completion", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`symbol_lookup` signal.
	**/
	public var onSymbolLookup(get, never):Signal<(symbol:std.String, row:Int, column:Int)->Void>;
	@:dox(hide) @:noCompletion inline function get_onSymbolLookup():Signal<(symbol:std.String, row:Int, column:Int)->Void> {
		return new Signal(this, "symbol_lookup", Signal.SignalHandlerStringIntIntVoid.connectSignal, Signal.SignalHandlerStringIntIntVoid.disconnectSignal, Signal.SignalHandlerStringIntIntVoid.isSignalConnected);
	}

	/**
		`text_changed` signal.
		
		Emitted when the text changes.
	**/
	public var onTextChanged(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onTextChanged():Signal<Void->Void> {
		return new Signal(this, "text_changed", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**		
		If `true`, a right-click moves the cursor at the mouse position before displaying the context menu.
		
		If `false`, the context menu disregards mouse location.
	**/
	@:native("CaretMovingByRightClick")
	public var caretMovingByRightClick:Bool;

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
		If `true`, the caret displays as a rectangle.
		
		If `false`, the caret displays as a bar.
	**/
	@:native("CaretBlockMode")
	public var caretBlockMode:Bool;

	/**		
		The width, in pixels, of the minimap.
	**/
	@:native("MinimapWidth")
	public var minimapWidth:Int;

	/**		
		If `true`, a minimap is shown, providing an outline of your source code.
	**/
	@:native("MinimapDraw")
	public var minimapDraw:Bool;

	/**		
		The current horizontal scroll value.
	**/
	@:native("ScrollHorizontal")
	public var scrollHorizontal:Int;

	/**		
		The current vertical scroll value.
	**/
	@:native("ScrollVertical")
	public var scrollVertical:Float;

	/**		
		If `true`, enables text wrapping when it goes beyond the edge of what is visible.
	**/
	@:native("WrapEnabled")
	public var wrapEnabled:Bool;

	/**		
		If `true`, all lines that have been set to hidden by `godot.TextEdit.setLineAsHidden`, will not be visible.
	**/
	@:native("HidingEnabled")
	public var hidingEnabled:Bool;

	/**		
		Vertical scroll sensitivity.
	**/
	@:native("VScrollSpeed")
	public var vScrollSpeed:Single;

	/**		
		If `true`, sets the `step` of the scrollbars to `0.25` which results in smoother scrolling.
	**/
	@:native("SmoothScrolling")
	public var smoothScrolling:Bool;

	/**		
		If `true`, text can be selected.
		
		If `false`, text can not be selected by the user or by the `godot.TextEdit.select` or `godot.TextEdit.selectAll` methods.
	**/
	@:native("SelectingEnabled")
	public var selectingEnabled:Bool;

	/**		
		If `true`, the native virtual keyboard is shown when focused on platforms that support it.
	**/
	@:native("VirtualKeyboardEnabled")
	public var virtualKeyboardEnabled:Bool;

	/**		
		If `true`, shortcut keys for context menu items are enabled, even if the context menu is disabled.
	**/
	@:native("ShortcutKeysEnabled")
	public var shortcutKeysEnabled:Bool;

	/**		
		If `true`, a right-click displays the context menu.
	**/
	@:native("ContextMenuEnabled")
	public var contextMenuEnabled:Bool;

	/**		
		If `true`, custom `font_color_selected` will be used for selected text.
	**/
	@:native("OverrideSelectedFontColor")
	public var overrideSelectedFontColor:Bool;

	/**		
		If `true`, all occurrences of the selected text will be highlighted.
	**/
	@:native("HighlightAllOccurrences")
	public var highlightAllOccurrences:Bool;

	/**		
		If `true`, the fold gutter is visible. This enables folding groups of indented lines.
	**/
	@:native("FoldGutter")
	public var foldGutter:Bool;

	/**		
		If `true`, the breakpoint gutter is visible.
	**/
	@:native("BreakpointGutter")
	public var breakpointGutter:Bool;

	/**		
		If `true`, the "space" character will have a visible representation.
	**/
	@:native("DrawSpaces")
	public var drawSpaces:Bool;

	/**		
		If `true`, the "tab" character will have a visible representation.
	**/
	@:native("DrawTabs")
	public var drawTabs:Bool;

	/**		
		If `true`, line numbers are displayed to the left of the text.
	**/
	@:native("ShowLineNumbers")
	public var showLineNumbers:Bool;

	/**		
		If `true`, any custom color properties that have been set for this `godot.TextEdit` will be visible.
	**/
	@:native("SyntaxHighlighting")
	public var syntaxHighlighting:Bool;

	/**		
		If `true`, the line containing the cursor is highlighted.
	**/
	@:native("HighlightCurrentLine")
	public var highlightCurrentLine:Bool;

	/**		
		If `true`, read-only mode is enabled. Existing text cannot be modified and new text cannot be added.
	**/
	@:native("Readonly")
	public var readonly:Bool;

	/**		
		String value of the `godot.TextEdit`.
	**/
	@:native("Text")
	public var text:std.String;

	@:native("new")
	public function new():Void;

	@:native("SetText")
	public function setText(text:std.String):Void;

	/**		
		Insert the specified text at the cursor position.
	**/
	@:native("InsertTextAtCursor")
	public function insertTextAtCursor(text:std.String):Void;

	/**		
		Returns the amount of total lines in the text.
	**/
	@:native("GetLineCount")
	public function getLineCount():Int;

	@:native("GetText")
	public function getText():std.String;

	/**		
		Returns the text of a specific line.
	**/
	@:native("GetLine")
	public function getLine(line:Int):std.String;

	/**		
		Sets the text for a specific line.
	**/
	@:native("SetLine")
	public function setLine(line:Int, newText:std.String):Void;

	/**		
		Centers the viewport on the line the editing cursor is at. This also resets the `godot.TextEdit.scrollHorizontal` value to `0`.
	**/
	@:native("CenterViewportToCursor")
	public function centerViewportToCursor():Void;

	#if doc_gen
	/**		
		Moves the cursor at the specified `column` index.
		
		If `adjust_viewport` is set to `true`, the viewport will center at the cursor position after the move occurs.
	**/
	@:native("CursorSetColumn")
	public function cursorSetColumn(column:Int, ?adjustViewport:Bool):Void;
	#else
	/**		
		Moves the cursor at the specified `column` index.
		
		If `adjust_viewport` is set to `true`, the viewport will center at the cursor position after the move occurs.
	**/
	@:native("CursorSetColumn")
	public overload function cursorSetColumn(column:Int):Void;

	/**		
		Moves the cursor at the specified `column` index.
		
		If `adjust_viewport` is set to `true`, the viewport will center at the cursor position after the move occurs.
	**/
	@:native("CursorSetColumn")
	public overload function cursorSetColumn(column:Int, adjustViewport:Bool):Void;
	#end

	#if doc_gen
	/**		
		Moves the cursor at the specified `line` index.
		
		If `adjust_viewport` is set to `true`, the viewport will center at the cursor position after the move occurs.
		
		If `can_be_hidden` is set to `true`, the specified `line` can be hidden using `godot.TextEdit.setLineAsHidden`.
	**/
	@:native("CursorSetLine")
	public function cursorSetLine(line:Int, ?adjustViewport:Bool, ?canBeHidden:Bool, ?wrapIndex:Int):Void;
	#else
	/**		
		Moves the cursor at the specified `line` index.
		
		If `adjust_viewport` is set to `true`, the viewport will center at the cursor position after the move occurs.
		
		If `can_be_hidden` is set to `true`, the specified `line` can be hidden using `godot.TextEdit.setLineAsHidden`.
	**/
	@:native("CursorSetLine")
	public overload function cursorSetLine(line:Int):Void;

	/**		
		Moves the cursor at the specified `line` index.
		
		If `adjust_viewport` is set to `true`, the viewport will center at the cursor position after the move occurs.
		
		If `can_be_hidden` is set to `true`, the specified `line` can be hidden using `godot.TextEdit.setLineAsHidden`.
	**/
	@:native("CursorSetLine")
	public overload function cursorSetLine(line:Int, adjustViewport:Bool):Void;

	/**		
		Moves the cursor at the specified `line` index.
		
		If `adjust_viewport` is set to `true`, the viewport will center at the cursor position after the move occurs.
		
		If `can_be_hidden` is set to `true`, the specified `line` can be hidden using `godot.TextEdit.setLineAsHidden`.
	**/
	@:native("CursorSetLine")
	public overload function cursorSetLine(line:Int, adjustViewport:Bool, canBeHidden:Bool):Void;

	/**		
		Moves the cursor at the specified `line` index.
		
		If `adjust_viewport` is set to `true`, the viewport will center at the cursor position after the move occurs.
		
		If `can_be_hidden` is set to `true`, the specified `line` can be hidden using `godot.TextEdit.setLineAsHidden`.
	**/
	@:native("CursorSetLine")
	public overload function cursorSetLine(line:Int, adjustViewport:Bool, canBeHidden:Bool, wrapIndex:Int):Void;
	#end

	/**		
		Returns the column the editing cursor is at.
	**/
	@:native("CursorGetColumn")
	public function cursorGetColumn():Int;

	/**		
		Returns the line the editing cursor is at.
	**/
	@:native("CursorGetLine")
	public function cursorGetLine():Int;

	@:native("CursorSetBlinkEnabled")
	public function cursorSetBlinkEnabled(enable:Bool):Void;

	@:native("CursorGetBlinkEnabled")
	public function cursorGetBlinkEnabled():Bool;

	@:native("CursorSetBlinkSpeed")
	public function cursorSetBlinkSpeed(blinkSpeed:Single):Void;

	@:native("CursorGetBlinkSpeed")
	public function cursorGetBlinkSpeed():Single;

	@:native("CursorSetBlockMode")
	public function cursorSetBlockMode(enable:Bool):Void;

	@:native("CursorIsBlockMode")
	public function cursorIsBlockMode():Bool;

	@:native("SetRightClickMovesCaret")
	public function setRightClickMovesCaret(enable:Bool):Void;

	@:native("IsRightClickMovingCaret")
	public function isRightClickMovingCaret():Bool;

	@:native("SetReadonly")
	public function setReadonly(enable:Bool):Void;

	@:native("IsReadonly")
	public function isReadonly():Bool;

	@:native("SetWrapEnabled")
	public function setWrapEnabled(enable:Bool):Void;

	@:native("IsWrapEnabled")
	public function isWrapEnabled():Bool;

	@:native("SetContextMenuEnabled")
	public function setContextMenuEnabled(enable:Bool):Void;

	@:native("IsContextMenuEnabled")
	public function isContextMenuEnabled():Bool;

	@:native("SetShortcutKeysEnabled")
	public function setShortcutKeysEnabled(enable:Bool):Void;

	@:native("IsShortcutKeysEnabled")
	public function isShortcutKeysEnabled():Bool;

	@:native("SetVirtualKeyboardEnabled")
	public function setVirtualKeyboardEnabled(enable:Bool):Void;

	@:native("IsVirtualKeyboardEnabled")
	public function isVirtualKeyboardEnabled():Bool;

	@:native("SetSelectingEnabled")
	public function setSelectingEnabled(enable:Bool):Void;

	@:native("IsSelectingEnabled")
	public function isSelectingEnabled():Bool;

	/**		
		Returns `true` when the specified `line` is marked as safe.
	**/
	@:native("IsLineSetAsSafe")
	public function isLineSetAsSafe(line:Int):Bool;

	/**		
		If `true`, marks the `line` as safe.
		
		This will show the line number with the color provided in the `safe_line_number_color` theme property.
	**/
	@:native("SetLineAsSafe")
	public function setLineAsSafe(line:Int, safe:Bool):Void;

	/**		
		Returns `true` when the specified `line` is bookmarked.
	**/
	@:native("IsLineSetAsBookmark")
	public function isLineSetAsBookmark(line:Int):Bool;

	/**		
		Bookmarks the `line` if `bookmark` is true. Deletes the bookmark if `bookmark` is false.
		
		Bookmarks are shown in the `godot.TextEdit.breakpointGutter`.
	**/
	@:native("SetLineAsBookmark")
	public function setLineAsBookmark(line:Int, bookmark:Bool):Void;

	/**		
		Adds or removes the breakpoint in `line`. Breakpoints are shown in the `godot.TextEdit.breakpointGutter`.
	**/
	@:native("SetLineAsBreakpoint")
	public function setLineAsBreakpoint(line:Int, breakpoint:Bool):Void;

	/**		
		Returns `true` when the specified `line` has a breakpoint.
	**/
	@:native("IsLineSetAsBreakpoint")
	public function isLineSetAsBreakpoint(line:Int):Bool;

	/**		
		Cut's the current selection.
	**/
	@:native("Cut")
	public function cut():Void;

	/**		
		Copy's the current text selection.
	**/
	@:native("Copy")
	public function copy():Void;

	/**		
		Paste the current selection.
	**/
	@:native("Paste")
	public function paste():Void;

	/**		
		Perform selection, from line/column to line/column.
		
		If `godot.TextEdit.selectingEnabled` is `false`, no selection will occur.
	**/
	@:native("Select")
	public function select(fromLine:Int, fromColumn:Int, toLine:Int, toColumn:Int):Void;

	/**		
		Select all the text.
		
		If `godot.TextEdit.selectingEnabled` is `false`, no selection will occur.
	**/
	@:native("SelectAll")
	public function selectAll():Void;

	/**		
		Deselects the current selection.
	**/
	@:native("Deselect")
	public function deselect():Void;

	/**		
		Returns `true` if the selection is active.
	**/
	@:native("IsSelectionActive")
	public function isSelectionActive():Bool;

	/**		
		Returns the selection begin line.
	**/
	@:native("GetSelectionFromLine")
	public function getSelectionFromLine():Int;

	/**		
		Returns the selection begin column.
	**/
	@:native("GetSelectionFromColumn")
	public function getSelectionFromColumn():Int;

	/**		
		Returns the selection end line.
	**/
	@:native("GetSelectionToLine")
	public function getSelectionToLine():Int;

	/**		
		Returns the selection end column.
	**/
	@:native("GetSelectionToColumn")
	public function getSelectionToColumn():Int;

	/**		
		Returns the text inside the selection.
	**/
	@:native("GetSelectionText")
	public function getSelectionText():std.String;

	/**		
		Returns a `String` text with the word under the caret (text cursor) location.
	**/
	@:native("GetWordUnderCursor")
	public function getWordUnderCursor():std.String;

	/**		
		Perform a search inside the text. Search flags can be specified in the `godot.TextEdit_SearchFlags` enum.
		
		Returns an empty `PoolIntArray` if no result was found. Otherwise, the result line and column can be accessed at indices specified in the `godot.TextEdit_SearchResult` enum, e.g:
		
		```
		
		var result = search(key, flags, line, column)
		if result.size() &gt; 0:
		# Result found.
		var res_line = result[TextEdit.SEARCH_RESULT_LINE]
		var res_column = result[TextEdit.SEARCH_RESULT_COLUMN]
		
		```
	**/
	@:native("Search")
	public function search(key:std.String, flags:UInt, fromLine:Int, fromColumn:Int):cs.NativeArray<Int>;

	/**		
		Perform undo operation.
	**/
	@:native("Undo")
	public function undo():Void;

	/**		
		Perform redo operation.
	**/
	@:native("Redo")
	public function redo():Void;

	/**		
		Clears the undo history.
	**/
	@:native("ClearUndoHistory")
	public function clearUndoHistory():Void;

	@:native("SetShowLineNumbers")
	public function setShowLineNumbers(enable:Bool):Void;

	@:native("IsShowLineNumbersEnabled")
	public function isShowLineNumbersEnabled():Bool;

	@:native("SetDrawTabs")
	public function setDrawTabs(arg0:Bool):Void;

	@:native("IsDrawingTabs")
	public function isDrawingTabs():Bool;

	@:native("SetDrawSpaces")
	public function setDrawSpaces(arg0:Bool):Void;

	@:native("IsDrawingSpaces")
	public function isDrawingSpaces():Bool;

	@:native("SetBreakpointGutterEnabled")
	public function setBreakpointGutterEnabled(enable:Bool):Void;

	@:native("IsBreakpointGutterEnabled")
	public function isBreakpointGutterEnabled():Bool;

	@:native("SetDrawFoldGutter")
	public function setDrawFoldGutter(arg0:Bool):Void;

	@:native("IsDrawingFoldGutter")
	public function isDrawingFoldGutter():Bool;

	@:native("SetHidingEnabled")
	public function setHidingEnabled(enable:Bool):Void;

	@:native("IsHidingEnabled")
	public function isHidingEnabled():Bool;

	/**		
		If `true`, hides the line of the specified index.
	**/
	@:native("SetLineAsHidden")
	public function setLineAsHidden(line:Int, enable:Bool):Void;

	/**		
		Returns whether the line at the specified index is hidden or not.
	**/
	@:native("IsLineHidden")
	public function isLineHidden(line:Int):Bool;

	/**		
		Folds all lines that are possible to be folded (see `godot.TextEdit.canFold`).
	**/
	@:native("FoldAllLines")
	public function foldAllLines():Void;

	/**		
		Unhide all lines that were previously set to hidden by `godot.TextEdit.setLineAsHidden`.
	**/
	@:native("UnhideAllLines")
	public function unhideAllLines():Void;

	/**		
		Folds the given line, if possible (see `godot.TextEdit.canFold`).
	**/
	@:native("FoldLine")
	public function foldLine(line:Int):Void;

	/**		
		Unfolds the given line, if folded.
	**/
	@:native("UnfoldLine")
	public function unfoldLine(line:Int):Void;

	/**		
		Toggle the folding of the code block at the given line.
	**/
	@:native("ToggleFoldLine")
	public function toggleFoldLine(line:Int):Void;

	/**		
		Returns if the given line is foldable, that is, it has indented lines right below it.
	**/
	@:native("CanFold")
	public function canFold(line:Int):Bool;

	/**		
		Returns whether the line at the specified index is folded or not.
	**/
	@:native("IsFolded")
	public function isFolded(line:Int):Bool;

	@:native("SetHighlightAllOccurrences")
	public function setHighlightAllOccurrences(enable:Bool):Void;

	@:native("IsHighlightAllOccurrencesEnabled")
	public function isHighlightAllOccurrencesEnabled():Bool;

	@:native("SetOverrideSelectedFontColor")
	public function setOverrideSelectedFontColor(override_:Bool):Void;

	@:native("IsOverridingSelectedFontColor")
	public function isOverridingSelectedFontColor():Bool;

	@:native("SetSyntaxColoring")
	public function setSyntaxColoring(enable:Bool):Void;

	@:native("IsSyntaxColoringEnabled")
	public function isSyntaxColoringEnabled():Bool;

	@:native("SetHighlightCurrentLine")
	public function setHighlightCurrentLine(enabled:Bool):Void;

	@:native("IsHighlightCurrentLineEnabled")
	public function isHighlightCurrentLineEnabled():Bool;

	@:native("SetSmoothScrollEnable")
	public function setSmoothScrollEnable(enable:Bool):Void;

	@:native("IsSmoothScrollEnabled")
	public function isSmoothScrollEnabled():Bool;

	@:native("SetVScrollSpeed")
	public function setVScrollSpeed(speed:Single):Void;

	@:native("GetVScrollSpeed")
	public function getVScrollSpeed():Single;

	@:native("SetVScroll")
	public function setVScroll(value:Float):Void;

	@:native("GetVScroll")
	public function getVScroll():Float;

	@:native("SetHScroll")
	public function setHScroll(value:Int):Void;

	@:native("GetHScroll")
	public function getHScroll():Int;

	/**		
		Adds a `keyword` and its `godot.Color`.
	**/
	@:native("AddKeywordColor")
	public function addKeywordColor(keyword:std.String, color:godot.Color):Void;

	/**		
		Returns whether the specified `keyword` has a color set to it or not.
	**/
	@:native("HasKeywordColor")
	public function hasKeywordColor(keyword:std.String):Bool;

	/**		
		Returns the `godot.Color` of the specified `keyword`.
	**/
	@:native("GetKeywordColor")
	public function getKeywordColor(keyword:std.String):godot.Color;

	#if doc_gen
	/**		
		Adds color region (given the delimiters) and its colors.
	**/
	@:native("AddColorRegion")
	public function addColorRegion(beginKey:std.String, endKey:std.String, color:godot.Color, ?lineOnly:Bool):Void;
	#else
	/**		
		Adds color region (given the delimiters) and its colors.
	**/
	@:native("AddColorRegion")
	public overload function addColorRegion(beginKey:std.String, endKey:std.String, color:godot.Color):Void;

	/**		
		Adds color region (given the delimiters) and its colors.
	**/
	@:native("AddColorRegion")
	public overload function addColorRegion(beginKey:std.String, endKey:std.String, color:godot.Color, lineOnly:Bool):Void;
	#end

	/**		
		Clears all custom syntax coloring information previously added with `godot.TextEdit.addColorRegion` or `godot.TextEdit.addKeywordColor`.
	**/
	@:native("ClearColors")
	public function clearColors():Void;

	/**		
		Triggers a right-click menu action by the specified index. See `godot.TextEdit_MenuItems` for a list of available indexes.
	**/
	@:native("MenuOption")
	public function menuOption(option:Int):Void;

	/**		
		Returns the `godot.PopupMenu` of this `godot.TextEdit`. By default, this menu is displayed when right-clicking on the `godot.TextEdit`.
	**/
	@:native("GetMenu")
	public function getMenu():godot.PopupMenu;

	/**		
		Returns an array containing the line number of each breakpoint.
	**/
	@:native("GetBreakpoints")
	public function getBreakpoints():godot.collections.Array;

	/**		
		Removes all the breakpoints. This will not fire the `breakpoint_toggled` signal.
	**/
	@:native("RemoveBreakpoints")
	public function removeBreakpoints():Void;

	@:native("DrawMinimap")
	public function drawMinimap(draw:Bool):Void;

	@:native("IsDrawingMinimap")
	public function isDrawingMinimap():Bool;

	@:native("SetMinimapWidth")
	public function setMinimapWidth(width:Int):Void;

	@:native("GetMinimapWidth")
	public function getMinimapWidth():Int;
}
