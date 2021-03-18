// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Label displays plain text on the screen. It gives you control over the horizontal and vertical alignment, and can wrap the text inside the node's bounding rectangle. It doesn't support bold, italics or other formatting. For that, use `godot.RichTextLabel` instead.

Note: Contrarily to most other `godot.Control`s, Label's `godot.Control.mouseFilter` defaults to  (i.e. it doesn't react to mouse input events). This implies that a label won't display any configured `godot.Control.hintTooltip`, unless you change its mouse filter.
**/
@:libType
@:csNative
@:native("Godot.Label")
@:autoBuild(godot.Godot.buildUserClass())
extern class Label extends godot.Control {
	/**		
		Limits the lines of text the node shows on screen.
	**/
	@:native("MaxLinesVisible")
	public var maxLinesVisible:Int;

	/**		
		The node ignores the first `lines_skipped` lines before it starts to display text.
	**/
	@:native("LinesSkipped")
	public var linesSkipped:Int;

	/**		
		Limits the amount of visible characters. If you set `percent_visible` to 0.5, only up to half of the text's characters will display on screen. Useful to animate the text in a dialog box.
	**/
	@:native("PercentVisible")
	public var percentVisible:Single;

	/**		
		Restricts the number of characters to display. Set to -1 to disable.
	**/
	@:native("VisibleCharacters")
	public var visibleCharacters:Int;

	/**		
		If `true`, all the text displays as UPPERCASE.
	**/
	@:native("Uppercase")
	public var uppercase:Bool;

	/**		
		If `true`, the Label only shows the text that fits inside its bounding rectangle. It also lets you scale the node down freely.
	**/
	@:native("ClipText")
	public var clipText:Bool;

	/**		
		If `true`, wraps the text inside the node's bounding rectangle. If you resize the node, it will change its height automatically to show all the text.
	**/
	@:native("Autowrap")
	public var autowrap:Bool;

	/**		
		Controls the text's vertical align. Supports top, center, bottom, and fill. Set it to one of the `godot.Label_VAlign` constants.
	**/
	@:native("Valign")
	public var valign:godot.Label_VAlign;

	/**		
		Controls the text's horizontal align. Supports left, center, right, and fill, or justify. Set it to one of the `godot.Label_AlignEnum` constants.
	**/
	@:native("Align")
	public var align:godot.Label_AlignEnum;

	/**		
		The text to display on screen.
	**/
	@:native("Text")
	public var text:std.String;

	@:native("new")
	public function new():Void;

	@:native("SetAlign")
	public function setAlign(align:godot.Label_AlignEnum):Void;

	@:native("GetAlign")
	public function getAlign():godot.Label_AlignEnum;

	@:native("SetValign")
	public function setValign(valign:godot.Label_VAlign):Void;

	@:native("GetValign")
	public function getValign():godot.Label_VAlign;

	@:native("SetText")
	public function setText(text:std.String):Void;

	@:native("GetText")
	public function getText():std.String;

	@:native("SetAutowrap")
	public function setAutowrap(enable:Bool):Void;

	@:native("HasAutowrap")
	public function hasAutowrap():Bool;

	@:native("SetClipText")
	public function setClipText(enable:Bool):Void;

	@:native("IsClippingText")
	public function isClippingText():Bool;

	@:native("SetUppercase")
	public function setUppercase(enable:Bool):Void;

	@:native("IsUppercase")
	public function isUppercase():Bool;

	/**		
		Returns the font size in pixels.
	**/
	@:native("GetLineHeight")
	public function getLineHeight():Int;

	/**		
		Returns the amount of lines of text the Label has.
	**/
	@:native("GetLineCount")
	public function getLineCount():Int;

	/**		
		Returns the number of lines shown. Useful if the `godot.Label`'s height cannot currently display all lines.
	**/
	@:native("GetVisibleLineCount")
	public function getVisibleLineCount():Int;

	/**		
		Returns the total number of printable characters in the text (excluding spaces and newlines).
	**/
	@:native("GetTotalCharacterCount")
	public function getTotalCharacterCount():Int;

	@:native("SetVisibleCharacters")
	public function setVisibleCharacters(amount:Int):Void;

	@:native("GetVisibleCharacters")
	public function getVisibleCharacters():Int;

	@:native("SetPercentVisible")
	public function setPercentVisible(percentVisible:Single):Void;

	@:native("GetPercentVisible")
	public function getPercentVisible():Single;

	@:native("SetLinesSkipped")
	public function setLinesSkipped(linesSkipped:Int):Void;

	@:native("GetLinesSkipped")
	public function getLinesSkipped():Int;

	@:native("SetMaxLinesVisible")
	public function setMaxLinesVisible(linesVisible:Int):Void;

	@:native("GetMaxLinesVisible")
	public function getMaxLinesVisible():Int;
}
