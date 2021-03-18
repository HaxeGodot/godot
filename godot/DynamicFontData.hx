// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Used with `godot.DynamicFont` to describe the location of a vector font file for dynamic rendering at runtime.
**/
@:libType
@:csNative
@:native("Godot.DynamicFontData")
@:autoBuild(godot.Godot.buildUserClass())
extern class DynamicFontData extends godot.Resource {
	/**		
		The path to the vector font file.
	**/
	@:native("FontPath")
	public var fontPath:std.String;

	/**		
		The font hinting mode used by FreeType. See `godot.DynamicFontData_HintingEnum` for options.
	**/
	@:native("Hinting")
	public var hinting:godot.DynamicFontData_HintingEnum;

	/**		
		If `true`, the font is rendered with anti-aliasing. This property applies both to the main font and its outline (if it has one).
	**/
	@:native("Antialiased")
	public var antialiased:Bool;

	@:native("new")
	public function new():Void;

	@:native("SetAntialiased")
	public function setAntialiased(antialiased:Bool):Void;

	@:native("IsAntialiased")
	public function isAntialiased():Bool;

	@:native("SetFontPath")
	public function setFontPath(path:std.String):Void;

	@:native("GetFontPath")
	public function getFontPath():std.String;

	@:native("SetHinting")
	public function setHinting(mode:godot.DynamicFontData_HintingEnum):Void;

	@:native("GetHinting")
	public function getHinting():godot.DynamicFontData_HintingEnum;
}
