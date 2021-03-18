// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
DynamicFont renders vector font files (such as TTF or OTF) dynamically at runtime instead of using a prerendered texture atlas like `godot.BitmapFont`. This trades the faster loading time of `godot.BitmapFont`s for the ability to change font parameters like size and spacing during runtime. `godot.DynamicFontData` is used for referencing the font file paths. DynamicFont also supports defining one or more fallback fonts, which will be used when displaying a character not supported by the main font.

DynamicFont uses the [https://www.freetype.org/](FreeType) library for rasterization.

```

var dynamic_font = DynamicFont.new()
dynamic_font.font_data = load("res://BarlowCondensed-Bold.ttf")
dynamic_font.size = 64
$"Label".set("custom_fonts/font", dynamic_font)

```

Note: DynamicFont doesn't support features such as kerning, right-to-left typesetting, ligatures, text shaping, variable fonts and optional font features yet. If you wish to "bake" an optional font feature into a TTF font file, you can use [https://fontforge.org/](FontForge) to do so. In FontForge, use File &gt; Generate Fonts, click Options, choose the desired features then generate the font.
**/
@:libType
@:csNative
@:native("Godot.DynamicFont")
@:autoBuild(godot.Godot.buildUserClass())
extern class DynamicFont extends godot.Font {
	/**		
		The font data.
	**/
	@:native("FontData")
	public var fontData:godot.DynamicFontData;

	/**		
		Extra space spacing in pixels.
	**/
	@:native("ExtraSpacingSpace")
	public var extraSpacingSpace:Int;

	/**		
		Extra character spacing in pixels.
	**/
	@:native("ExtraSpacingChar")
	public var extraSpacingChar:Int;

	/**		
		Extra spacing at the bottom in pixels.
	**/
	@:native("ExtraSpacingBottom")
	public var extraSpacingBottom:Int;

	/**		
		Extra spacing at the top in pixels.
	**/
	@:native("ExtraSpacingTop")
	public var extraSpacingTop:Int;

	/**		
		If `true`, filtering is used. This makes the font blurry instead of pixelated when scaling it if font oversampling is disabled or ineffective. It's recommended to enable this when using the font in a control whose size changes over time, unless a pixel art aesthetic is desired.
	**/
	@:native("UseFilter")
	public var useFilter:Bool;

	/**		
		If `true`, mipmapping is used. This improves the font's appearance when downscaling it if font oversampling is disabled or ineffective.
	**/
	@:native("UseMipmaps")
	public var useMipmaps:Bool;

	/**		
		The font outline's color.
		
		Note: It's recommended to leave this at the default value so that you can adjust it in individual controls. For example, if the outline is made black here, it won't be possible to change its color using a Label's font outline modulate theme item.
	**/
	@:native("OutlineColor")
	public var outlineColor:godot.Color;

	/**		
		The font outline's thickness in pixels (not relative to the font size).
	**/
	@:native("OutlineSize")
	public var outlineSize:Int;

	/**		
		The font size in pixels.
	**/
	@:native("Size")
	public var size:Int;

	@:native("new")
	public function new():Void;

	@:native("SetFontData")
	public function setFontData(data:godot.DynamicFontData):Void;

	@:native("GetFontData")
	public function getFontData():godot.DynamicFontData;

	/**		
		Returns a string containing all the characters available in the main and all the fallback fonts.
		
		If a given character is included in more than one font, it appears only once in the returned string.
	**/
	@:native("GetAvailableChars")
	public function getAvailableChars():std.String;

	@:native("SetSize")
	public function setSize(data:Int):Void;

	@:native("GetSize")
	public function getSize():Int;

	@:native("SetOutlineSize")
	public function setOutlineSize(size:Int):Void;

	@:native("GetOutlineSize")
	public function getOutlineSize():Int;

	@:native("SetOutlineColor")
	public function setOutlineColor(color:godot.Color):Void;

	@:native("GetOutlineColor")
	public function getOutlineColor():godot.Color;

	@:native("SetUseMipmaps")
	public function setUseMipmaps(enable:Bool):Void;

	@:native("GetUseMipmaps")
	public function getUseMipmaps():Bool;

	@:native("SetUseFilter")
	public function setUseFilter(enable:Bool):Void;

	@:native("GetUseFilter")
	public function getUseFilter():Bool;

	/**		
		Sets the spacing for `type` (see `godot.DynamicFont_SpacingType`) to `value` in pixels (not relative to the font size).
	**/
	@:native("SetSpacing")
	public function setSpacing(type:Int, value:Int):Void;

	/**		
		Returns the spacing for the given `type` (see `godot.DynamicFont_SpacingType`).
	**/
	@:native("GetSpacing")
	public function getSpacing(type:Int):Int;

	/**		
		Adds a fallback font.
	**/
	@:native("AddFallback")
	public function addFallback(data:godot.DynamicFontData):Void;

	/**		
		Sets the fallback font at index `idx`.
	**/
	@:native("SetFallback")
	public function setFallback(idx:Int, data:godot.DynamicFontData):Void;

	/**		
		Returns the fallback font at index `idx`.
	**/
	@:native("GetFallback")
	public function getFallback(idx:Int):godot.DynamicFontData;

	/**		
		Removes the fallback font at index `idx`.
	**/
	@:native("RemoveFallback")
	public function removeFallback(idx:Int):Void;

	/**		
		Returns the number of fallback fonts.
	**/
	@:native("GetFallbackCount")
	public function getFallbackCount():Int;
}
