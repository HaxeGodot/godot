// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Font contains a Unicode-compatible character set, as well as the ability to draw it with variable width, ascent, descent and kerning. For creating fonts from TTF files (or other font formats), see the editor support for fonts.

Note: If a DynamicFont doesn't contain a character used in a string, the character in question will be replaced with codepoint `0xfffd` if it's available in the DynamicFont. If this replacement character isn't available in the DynamicFont, the character will be hidden without displaying any replacement character in the string.

Note: If a BitmapFont doesn't contain a character used in a string, the character in question will be hidden without displaying any replacement character in the string.
**/
@:libType
@:csNative
@:native("Godot.Font")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class Font extends godot.Resource {
	#if doc_gen
	/**		
		Draw `string` into a canvas item using the font at a given position, with `modulate` color, and optionally clipping the width. `position` specifies the baseline, not the top. To draw from the top, ascent must be added to the Y axis.
		
		See also `godot.CanvasItem.drawString`.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
		@param outlineModulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("Draw")
	public function draw(canvasItem:godot.RID, position:godot.Vector2, string:std.String, ?modulate:Null<godot.Color>, ?clipW:Int, ?outlineModulate:Null<godot.Color>):Void;
	#else
	/**		
		Draw `string` into a canvas item using the font at a given position, with `modulate` color, and optionally clipping the width. `position` specifies the baseline, not the top. To draw from the top, ascent must be added to the Y axis.
		
		See also `godot.CanvasItem.drawString`.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
		@param outlineModulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("Draw")
	public overload function draw(canvasItem:godot.RID, position:godot.Vector2, string:std.String):Void;

	/**		
		Draw `string` into a canvas item using the font at a given position, with `modulate` color, and optionally clipping the width. `position` specifies the baseline, not the top. To draw from the top, ascent must be added to the Y axis.
		
		See also `godot.CanvasItem.drawString`.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
		@param outlineModulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("Draw")
	public overload function draw(canvasItem:godot.RID, position:godot.Vector2, string:std.String, modulate:Nullable1<godot.Color>):Void;

	/**		
		Draw `string` into a canvas item using the font at a given position, with `modulate` color, and optionally clipping the width. `position` specifies the baseline, not the top. To draw from the top, ascent must be added to the Y axis.
		
		See also `godot.CanvasItem.drawString`.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
		@param outlineModulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("Draw")
	public overload function draw(canvasItem:godot.RID, position:godot.Vector2, string:std.String, modulate:Nullable1<godot.Color>, clipW:Int):Void;

	/**		
		Draw `string` into a canvas item using the font at a given position, with `modulate` color, and optionally clipping the width. `position` specifies the baseline, not the top. To draw from the top, ascent must be added to the Y axis.
		
		See also `godot.CanvasItem.drawString`.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
		@param outlineModulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("Draw")
	public overload function draw(canvasItem:godot.RID, position:godot.Vector2, string:std.String, modulate:Nullable1<godot.Color>, clipW:Int, outlineModulate:Nullable1<godot.Color>):Void;
	#end

	/**		
		Returns the font ascent (number of pixels above the baseline).
	**/
	@:native("GetAscent")
	public function getAscent():Single;

	/**		
		Returns the font descent (number of pixels below the baseline).
	**/
	@:native("GetDescent")
	public function getDescent():Single;

	/**		
		Returns the total font height (ascent plus descent) in pixels.
	**/
	@:native("GetHeight")
	public function getHeight():Single;

	@:native("IsDistanceFieldHint")
	public function isDistanceFieldHint():Bool;

	#if doc_gen
	/**		
		Returns the size of a character, optionally taking kerning into account if the next character is provided. Note that the height returned is the font height (see `godot.Font.getHeight`) and has no relation to the glyph height.
	**/
	@:native("GetCharSize")
	public function getCharSize(char:Int, ?next:Int):godot.Vector2;
	#else
	/**		
		Returns the size of a character, optionally taking kerning into account if the next character is provided. Note that the height returned is the font height (see `godot.Font.getHeight`) and has no relation to the glyph height.
	**/
	@:native("GetCharSize")
	public overload function getCharSize(char:Int):godot.Vector2;

	/**		
		Returns the size of a character, optionally taking kerning into account if the next character is provided. Note that the height returned is the font height (see `godot.Font.getHeight`) and has no relation to the glyph height.
	**/
	@:native("GetCharSize")
	public overload function getCharSize(char:Int, next:Int):godot.Vector2;
	#end

	/**		
		Returns the size of a string, taking kerning and advance into account. Note that the height returned is the font height (see `godot.Font.getHeight`) and has no relation to the string.
	**/
	@:native("GetStringSize")
	public function getStringSize(string:std.String):godot.Vector2;

	/**		
		Returns the size that the string would have with word wrapping enabled with a fixed `width`.
	**/
	@:native("GetWordwrapStringSize")
	public function getWordwrapStringSize(string:std.String, width:Single):godot.Vector2;

	/**		
		Returns `true` if the font has an outline.
	**/
	@:native("HasOutline")
	public function hasOutline():Bool;

	#if doc_gen
	/**		
		Draw character `char` into a canvas item using the font at a given position, with `modulate` color, and optionally kerning if `next` is passed. clipping the width. `position` specifies the baseline, not the top. To draw from the top, ascent must be added to the Y axis. The width used by the character is returned, making this function useful for drawing strings character by character.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("DrawChar")
	public function drawChar(canvasItem:godot.RID, position:godot.Vector2, char:Int, ?next:Int, ?modulate:Null<godot.Color>, ?outline:Bool):Single;
	#else
	/**		
		Draw character `char` into a canvas item using the font at a given position, with `modulate` color, and optionally kerning if `next` is passed. clipping the width. `position` specifies the baseline, not the top. To draw from the top, ascent must be added to the Y axis. The width used by the character is returned, making this function useful for drawing strings character by character.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("DrawChar")
	public overload function drawChar(canvasItem:godot.RID, position:godot.Vector2, char:Int):Single;

	/**		
		Draw character `char` into a canvas item using the font at a given position, with `modulate` color, and optionally kerning if `next` is passed. clipping the width. `position` specifies the baseline, not the top. To draw from the top, ascent must be added to the Y axis. The width used by the character is returned, making this function useful for drawing strings character by character.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("DrawChar")
	public overload function drawChar(canvasItem:godot.RID, position:godot.Vector2, char:Int, next:Int):Single;

	/**		
		Draw character `char` into a canvas item using the font at a given position, with `modulate` color, and optionally kerning if `next` is passed. clipping the width. `position` specifies the baseline, not the top. To draw from the top, ascent must be added to the Y axis. The width used by the character is returned, making this function useful for drawing strings character by character.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("DrawChar")
	public overload function drawChar(canvasItem:godot.RID, position:godot.Vector2, char:Int, next:Int, modulate:Nullable1<godot.Color>):Single;

	/**		
		Draw character `char` into a canvas item using the font at a given position, with `modulate` color, and optionally kerning if `next` is passed. clipping the width. `position` specifies the baseline, not the top. To draw from the top, ascent must be added to the Y axis. The width used by the character is returned, making this function useful for drawing strings character by character.
		
		@param modulate If the parameter is null, then the default value is new Color(1, 1, 1, 1)
	**/
	@:native("DrawChar")
	public overload function drawChar(canvasItem:godot.RID, position:godot.Vector2, char:Int, next:Int, modulate:Nullable1<godot.Color>, outline:Bool):Single;
	#end

	/**		
		After editing a font (changing size, ascent, char rects, etc.). Call this function to propagate changes to controls that might use it.
	**/
	@:native("UpdateChanges")
	public function updateChanges():Void;
}
