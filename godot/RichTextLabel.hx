// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Rich text can contain custom text, fonts, images and some basic formatting. The label manages these as an internal tag stack. It also adapts itself to given width/heights.

Note: Assignments to `godot.RichTextLabel.bbcodeText` clear the tag stack and reconstruct it from the property's contents. Any edits made to `godot.RichTextLabel.bbcodeText` will erase previous edits made from other manual sources such as `godot.RichTextLabel.appendBbcode` and the `push_*` / `godot.RichTextLabel.pop` methods.

Note: RichTextLabel doesn't support entangled BBCode tags. For example, instead of using `[b]bold[i]bold italic[/b]italic[/i]`, use `[b]bold[i]bold italic[/i][/b][i]italic[/i]`.

Note: Unlike `godot.Label`, RichTextLabel doesn't have a property to horizontally align text to the center. Instead, enable `godot.RichTextLabel.bbcodeEnabled` and surround the text in a `[center]` tag as follows: `[center]Example[/center]`. There is currently no built-in way to vertically align text either, but this can be emulated by relying on anchors/containers and the `godot.RichTextLabel.fitContentHeight` property.
**/
@:libType
@:csNative
@:native("Godot.RichTextLabel")
@:autoBuild(godot.Godot.buildUserClass())
extern class RichTextLabel extends godot.Control {
	/**
		`meta_clicked` signal.
		
		Triggered when the user clicks on content between meta tags. If the meta is defined in text, e.g. ``url={"data"="hi"}`hi`/url``, then the parameter for this signal will be a `String` type. If a particular type or an object is desired, the `pushMeta` method must be used to manually insert the data into the tag stack.
	**/
	public var onMetaClicked(get, never):Signal<(meta:Any)->Void>;
	@:dox(hide) @:noCompletion inline function get_onMetaClicked():Signal<(meta:Any)->Void> {
		return new Signal(this, "meta_clicked", Signal.SignalHandlerVariantVoid.connectSignal, Signal.SignalHandlerVariantVoid.disconnectSignal, Signal.SignalHandlerVariantVoid.isSignalConnected);
	}

	/**
		`meta_hover_ended` signal.
		
		Triggers when the mouse exits a meta tag.
	**/
	public var onMetaHoverEnded(get, never):Signal<(meta:Any)->Void>;
	@:dox(hide) @:noCompletion inline function get_onMetaHoverEnded():Signal<(meta:Any)->Void> {
		return new Signal(this, "meta_hover_ended", Signal.SignalHandlerVariantVoid.connectSignal, Signal.SignalHandlerVariantVoid.disconnectSignal, Signal.SignalHandlerVariantVoid.isSignalConnected);
	}

	/**
		`meta_hover_started` signal.
		
		Triggers when the mouse enters a meta tag.
	**/
	public var onMetaHoverStarted(get, never):Signal<(meta:Any)->Void>;
	@:dox(hide) @:noCompletion inline function get_onMetaHoverStarted():Signal<(meta:Any)->Void> {
		return new Signal(this, "meta_hover_started", Signal.SignalHandlerVariantVoid.connectSignal, Signal.SignalHandlerVariantVoid.disconnectSignal, Signal.SignalHandlerVariantVoid.isSignalConnected);
	}

	/**		
		The currently installed custom effects. This is an array of `godot.RichTextEffect`s.
		
		To add a custom effect, it's more convenient to use `godot.RichTextLabel.installEffect`.
	**/
	@:native("CustomEffects")
	public var customEffects:godot.collections.Array;

	/**		
		If `true`, the label uses the custom font color.
	**/
	@:native("OverrideSelectedFontColor")
	public var overrideSelectedFontColor:Bool;

	/**		
		If `true`, the label allows text selection.
	**/
	@:native("SelectionEnabled")
	public var selectionEnabled:Bool;

	/**		
		If `true`, the window scrolls down to display new content automatically.
	**/
	@:native("ScrollFollowing")
	public var scrollFollowing:Bool;

	/**		
		If `true`, the scrollbar is visible. Setting this to `false` does not block scrolling completely. See `godot.RichTextLabel.scrollToLine`.
	**/
	@:native("ScrollActive")
	public var scrollActive:Bool;

	/**		
		If `true`, the label's height will be automatically updated to fit its content.
		
		Note: This property is used as a workaround to fix issues with `godot.RichTextLabel` in `godot.Container`s, but it's unreliable in some cases and will be removed in future versions.
	**/
	@:native("FitContentHeight")
	public var fitContentHeight:Bool;

	/**		
		The raw text of the label.
		
		When set, clears the tag stack and adds a raw text tag to the top of it. Does not parse BBCodes. Does not modify `godot.RichTextLabel.bbcodeText`.
	**/
	@:native("Text")
	public var text:std.String;

	/**		
		The number of spaces associated with a single tab length. Does not affect `\t` in text tags, only indent tags.
	**/
	@:native("TabSize")
	public var tabSize:Int;

	/**		
		If `true`, the label underlines meta tags such as `[url]{text}[/url]`.
	**/
	@:native("MetaUnderlined")
	public var metaUnderlined:Bool;

	/**		
		The range of characters to display, as a `Single` between 0.0 and 1.0. When assigned an out of range value, it's the same as assigning 1.0.
		
		Note: Setting this property updates `godot.RichTextLabel.visibleCharacters` based on current `godot.RichTextLabel.getTotalCharacterCount`.
	**/
	@:native("PercentVisible")
	public var percentVisible:Single;

	/**		
		The restricted number of characters to display in the label. If `-1`, all characters will be displayed.
		
		Note: Setting this property updates `godot.RichTextLabel.percentVisible` based on current `godot.RichTextLabel.getTotalCharacterCount`.
	**/
	@:native("VisibleCharacters")
	public var visibleCharacters:Int;

	/**		
		The label's text in BBCode format. Is not representative of manual modifications to the internal tag stack. Erases changes made by other methods when edited.
		
		Note: It is unadvised to use the `+=` operator with `bbcode_text` (e.g. `bbcode_text += "some string"`) as it replaces the whole text and can cause slowdowns. Use `godot.RichTextLabel.appendBbcode` for adding text instead, unless you absolutely need to close a tag that was opened in an earlier method call.
	**/
	@:native("BbcodeText")
	public var bbcodeText:std.String;

	/**		
		If `true`, the label uses BBCode formatting.
		
		Note: Trying to alter the `godot.RichTextLabel`'s text with `godot.RichTextLabel.addText` will reset this to `false`. Use instead `godot.RichTextLabel.appendBbcode` to preserve BBCode formatting.
	**/
	@:native("BbcodeEnabled")
	public var bbcodeEnabled:Bool;

	@:native("new")
	public function new():Void;

	@:native("GetText")
	public function getText():std.String;

	/**		
		Adds raw non-BBCode-parsed text to the tag stack.
	**/
	@:native("AddText")
	public function addText(text:std.String):Void;

	@:native("SetText")
	public function setText(text:std.String):Void;

	#if doc_gen
	/**		
		Adds an image's opening and closing tags to the tag stack, optionally providing a `width` and `height` to resize the image.
		
		If `width` or `height` is set to 0, the image size will be adjusted in order to keep the original aspect ratio.
	**/
	@:native("AddImage")
	public function addImage(image:godot.Texture, ?width:Int, ?height:Int):Void;
	#else
	/**		
		Adds an image's opening and closing tags to the tag stack, optionally providing a `width` and `height` to resize the image.
		
		If `width` or `height` is set to 0, the image size will be adjusted in order to keep the original aspect ratio.
	**/
	@:native("AddImage")
	public overload function addImage(image:godot.Texture):Void;

	/**		
		Adds an image's opening and closing tags to the tag stack, optionally providing a `width` and `height` to resize the image.
		
		If `width` or `height` is set to 0, the image size will be adjusted in order to keep the original aspect ratio.
	**/
	@:native("AddImage")
	public overload function addImage(image:godot.Texture, width:Int):Void;

	/**		
		Adds an image's opening and closing tags to the tag stack, optionally providing a `width` and `height` to resize the image.
		
		If `width` or `height` is set to 0, the image size will be adjusted in order to keep the original aspect ratio.
	**/
	@:native("AddImage")
	public overload function addImage(image:godot.Texture, width:Int, height:Int):Void;
	#end

	/**		
		Adds a newline tag to the tag stack.
	**/
	@:native("Newline")
	public function newline():Void;

	/**		
		Removes a line of content from the label. Returns `true` if the line exists.
		
		The `line` argument is the index of the line to remove, it can take values in the interval `[0, get_line_count() - 1]`.
	**/
	@:native("RemoveLine")
	public function removeLine(line:Int):Bool;

	/**		
		Adds a `[font]` tag to the tag stack. Overrides default fonts for its duration.
	**/
	@:native("PushFont")
	public function pushFont(font:godot.Font):Void;

	/**		
		Adds a `[font]` tag with a normal font to the tag stack.
	**/
	@:native("PushNormal")
	public function pushNormal():Void;

	/**		
		Adds a `[font]` tag with a bold font to the tag stack. This is the same as adding a `[b]` tag if not currently in a `[i]` tag.
	**/
	@:native("PushBold")
	public function pushBold():Void;

	/**		
		Adds a `[font]` tag with a bold italics font to the tag stack.
	**/
	@:native("PushBoldItalics")
	public function pushBoldItalics():Void;

	/**		
		Adds a `[font]` tag with a italics font to the tag stack. This is the same as adding a `[i]` tag if not currently in a `[b]` tag.
	**/
	@:native("PushItalics")
	public function pushItalics():Void;

	/**		
		Adds a `[font]` tag with a monospace font to the tag stack.
	**/
	@:native("PushMono")
	public function pushMono():Void;

	/**		
		Adds a `[color]` tag to the tag stack.
	**/
	@:native("PushColor")
	public function pushColor(color:godot.Color):Void;

	/**		
		Adds an `[align]` tag based on the given `align` value. See `godot.RichTextLabel_Align` for possible values.
	**/
	@:native("PushAlign")
	public function pushAlign(align:godot.RichTextLabel_Align):Void;

	/**		
		Adds an `[indent]` tag to the tag stack. Multiplies `level` by current `godot.RichTextLabel.tabSize` to determine new margin length.
	**/
	@:native("PushIndent")
	public function pushIndent(level:Int):Void;

	/**		
		Adds a `[list]` tag to the tag stack. Similar to the BBCodes `[ol]` or `[ul]`, but supports more list types. Not fully implemented!
	**/
	@:native("PushList")
	public function pushList(type:godot.RichTextLabel_ListType):Void;

	/**		
		Adds a `[meta]` tag to the tag stack. Similar to the BBCode `[url=something]{text}[/url]`, but supports non-`String` metadata types.
	**/
	@:native("PushMeta")
	public function pushMeta(data:Dynamic):Void;

	/**		
		Adds a `[u]` tag to the tag stack.
	**/
	@:native("PushUnderline")
	public function pushUnderline():Void;

	/**		
		Adds a `[s]` tag to the tag stack.
	**/
	@:native("PushStrikethrough")
	public function pushStrikethrough():Void;

	/**		
		Adds a `[table=columns]` tag to the tag stack.
	**/
	@:native("PushTable")
	public function pushTable(columns:Int):Void;

	/**		
		Edits the selected column's expansion options. If `expand` is `true`, the column expands in proportion to its expansion ratio versus the other columns' ratios.
		
		For example, 2 columns with ratios 3 and 4 plus 70 pixels in available width would expand 30 and 40 pixels, respectively.
		
		If `expand` is `false`, the column will not contribute to the total ratio.
	**/
	@:native("SetTableColumnExpand")
	public function setTableColumnExpand(column:Int, expand:Bool, ratio:Int):Void;

	/**		
		Adds a `[cell]` tag to the tag stack. Must be inside a `[table]` tag. See `godot.RichTextLabel.pushTable` for details.
	**/
	@:native("PushCell")
	public function pushCell():Void;

	/**		
		Terminates the current tag. Use after `push_*` methods to close BBCodes manually. Does not need to follow `add_*` methods.
	**/
	@:native("Pop")
	public function pop():Void;

	/**		
		Clears the tag stack and sets `godot.RichTextLabel.bbcodeText` to an empty string.
	**/
	@:native("Clear")
	public function clear():Void;

	@:native("SetMetaUnderline")
	public function setMetaUnderline(enable:Bool):Void;

	@:native("IsMetaUnderlined")
	public function isMetaUnderlined():Bool;

	@:native("SetOverrideSelectedFontColor")
	public function setOverrideSelectedFontColor(override_:Bool):Void;

	@:native("IsOverridingSelectedFontColor")
	public function isOverridingSelectedFontColor():Bool;

	@:native("SetScrollActive")
	public function setScrollActive(active:Bool):Void;

	@:native("IsScrollActive")
	public function isScrollActive():Bool;

	@:native("SetScrollFollow")
	public function setScrollFollow(follow:Bool):Void;

	@:native("IsScrollFollowing")
	public function isScrollFollowing():Bool;

	/**		
		Returns the vertical scrollbar.
	**/
	@:native("GetVScroll")
	public function getVScroll():godot.VScrollBar;

	/**		
		Scrolls the window's top line to match `line`.
	**/
	@:native("ScrollToLine")
	public function scrollToLine(line:Int):Void;

	@:native("SetTabSize")
	public function setTabSize(spaces:Int):Void;

	@:native("GetTabSize")
	public function getTabSize():Int;

	@:native("SetFitContentHeight")
	public function setFitContentHeight(enabled:Bool):Void;

	@:native("IsFitContentHeightEnabled")
	public function isFitContentHeightEnabled():Bool;

	@:native("SetSelectionEnabled")
	public function setSelectionEnabled(enabled:Bool):Void;

	@:native("IsSelectionEnabled")
	public function isSelectionEnabled():Bool;

	/**		
		The assignment version of `godot.RichTextLabel.appendBbcode`. Clears the tag stack and inserts the new content. Returns  if parses `bbcode` successfully.
	**/
	@:native("ParseBbcode")
	public function parseBbcode(bbcode:std.String):godot.Error;

	/**		
		Parses `bbcode` and adds tags to the tag stack as needed. Returns the result of the parsing,  if successful.
		
		Note: Using this method, you can't close a tag that was opened in a previous `godot.RichTextLabel.appendBbcode` call. This is done to improve performance, especially when updating large RichTextLabels since rebuilding the whole BBCode every time would be slower. If you absolutely need to close a tag in a future method call, append the `godot.RichTextLabel.bbcodeText` instead of using `godot.RichTextLabel.appendBbcode`.
	**/
	@:native("AppendBbcode")
	public function appendBbcode(bbcode:std.String):godot.Error;

	@:native("SetBbcode")
	public function setBbcode(text:std.String):Void;

	@:native("GetBbcode")
	public function getBbcode():std.String;

	@:native("SetVisibleCharacters")
	public function setVisibleCharacters(amount:Int):Void;

	@:native("GetVisibleCharacters")
	public function getVisibleCharacters():Int;

	@:native("SetPercentVisible")
	public function setPercentVisible(percentVisible:Single):Void;

	@:native("GetPercentVisible")
	public function getPercentVisible():Single;

	/**		
		Returns the total number of characters from text tags. Does not include BBCodes.
	**/
	@:native("GetTotalCharacterCount")
	public function getTotalCharacterCount():Int;

	@:native("SetUseBbcode")
	public function setUseBbcode(enable:Bool):Void;

	@:native("IsUsingBbcode")
	public function isUsingBbcode():Bool;

	/**		
		Returns the total number of newlines in the tag stack's text tags. Considers wrapped text as one line.
	**/
	@:native("GetLineCount")
	public function getLineCount():Int;

	/**		
		Returns the number of visible lines.
	**/
	@:native("GetVisibleLineCount")
	public function getVisibleLineCount():Int;

	/**		
		Returns the height of the content.
	**/
	@:native("GetContentHeight")
	public function getContentHeight():Int;

	/**		
		Parses BBCode parameter `expressions` into a dictionary.
	**/
	@:native("ParseExpressionsForValues")
	public function parseExpressionsForValues(expressions:haxe.Rest<std.String>):godot.collections.Dictionary;

	@:native("SetEffects")
	public function setEffects(effects:godot.collections.Array):Void;

	@:native("GetEffects")
	public function getEffects():godot.collections.Array;

	/**		
		Installs a custom effect. `effect` should be a valid `godot.RichTextEffect`.
	**/
	@:native("InstallEffect")
	public function installEffect(effect:Dynamic):Void;
}
