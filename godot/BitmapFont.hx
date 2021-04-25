// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Renders text using `*.fnt` fonts containing texture atlases. Supports distance fields. For using vector font files like TTF directly, see `godot.DynamicFont`.
**/
@:libType
@:csNative
@:native("Godot.BitmapFont")
@:autoBuild(godot.Godot.buildUserClass())
extern class BitmapFont extends godot.Font {
	/**		
		The fallback font.
	**/
	@:native("Fallback")
	public var fallback:godot.BitmapFont;

	/**		
		If `true`, distance field hint is enabled.
	**/
	@:native("DistanceField")
	public var distanceField:Bool;

	/**		
		Ascent (number of pixels above the baseline).
	**/
	@:native("Ascent")
	public var ascent:Single;

	/**		
		Total font height (ascent plus descent) in pixels.
	**/
	@:native("Height")
	public var height:Single;

	@:native("Kernings")
	public var kernings:cs.NativeArray<Int>;

	@:native("Chars")
	public var chars:cs.NativeArray<Int>;

	@:native("Textures")
	public var textures:godot.collections.Array;

	@:native("new")
	public function new():Void;

	/**		
		Creates a BitmapFont from the `*.fnt` file at `path`.
	**/
	@:native("CreateFromFnt")
	public function createFromFnt(path:std.String):godot.Error;

	@:native("SetHeight")
	public function setHeight(px:Single):Void;

	@:native("SetAscent")
	public function setAscent(px:Single):Void;

	/**		
		Adds a kerning pair to the `godot.BitmapFont` as a difference. Kerning pairs are special cases where a typeface advance is determined by the next character.
	**/
	@:native("AddKerningPair")
	public function addKerningPair(charA:Int, charB:Int, kerning:Int):Void;

	/**		
		Returns a kerning pair as a difference.
	**/
	@:native("GetKerningPair")
	public function getKerningPair(charA:Int, charB:Int):Int;

	/**		
		Adds a texture to the `godot.BitmapFont`.
	**/
	@:native("AddTexture")
	public function addTexture(texture:godot.Texture):Void;

	#if doc_gen
	/**		
		Adds a character to the font, where `character` is the Unicode value, `texture` is the texture index, `rect` is the region in the texture (in pixels!), `align` is the (optional) alignment for the character and `advance` is the (optional) advance.
		
		@param align If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("AddChar")
	public function addChar(character:Int, texture:Int, rect:godot.Rect2, ?align:Null<godot.Vector2>, ?advance:Single):Void;
	#else
	/**		
		Adds a character to the font, where `character` is the Unicode value, `texture` is the texture index, `rect` is the region in the texture (in pixels!), `align` is the (optional) alignment for the character and `advance` is the (optional) advance.
		
		@param align If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("AddChar")
	public overload function addChar(character:Int, texture:Int, rect:godot.Rect2):Void;

	/**		
		Adds a character to the font, where `character` is the Unicode value, `texture` is the texture index, `rect` is the region in the texture (in pixels!), `align` is the (optional) alignment for the character and `advance` is the (optional) advance.
		
		@param align If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("AddChar")
	public overload function addChar(character:Int, texture:Int, rect:godot.Rect2, align:Nullable1<godot.Vector2>):Void;

	/**		
		Adds a character to the font, where `character` is the Unicode value, `texture` is the texture index, `rect` is the region in the texture (in pixels!), `align` is the (optional) alignment for the character and `advance` is the (optional) advance.
		
		@param align If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("AddChar")
	public overload function addChar(character:Int, texture:Int, rect:godot.Rect2, align:Nullable1<godot.Vector2>, advance:Single):Void;
	#end

	/**		
		Returns the number of textures in the BitmapFont atlas.
	**/
	@:native("GetTextureCount")
	public function getTextureCount():Int;

	/**		
		Returns the font atlas texture at index `idx`.
	**/
	@:native("GetTexture")
	public function getTexture(idx:Int):godot.Texture;

	@:native("SetDistanceFieldHint")
	public function setDistanceFieldHint(enable:Bool):Void;

	/**		
		Clears all the font data and settings.
	**/
	@:native("Clear")
	public function clear():Void;

	@:native("SetFallback")
	public function setFallback(fallback:godot.BitmapFont):Void;

	@:native("GetFallback")
	public function getFallback():godot.BitmapFont;
}
