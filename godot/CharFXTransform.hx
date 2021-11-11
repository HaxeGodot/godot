// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
By setting various properties on this object, you can control how individual characters will be displayed in a `godot.RichTextEffect`.
**/
@:libType
@:csNative
@:native("Godot.CharFXTransform")
@:autoBuild(godot.Godot.buildUserClass())
extern class CharFXTransform extends godot.Reference {
	/**		
		The Unicode codepoint the character will use. This only affects non-whitespace characters. `@GDScript.ord` can be useful here. For example, the following will replace all characters with asterisks:
		
		```
		
		# `char_fx` is the CharFXTransform parameter from `_process_custom_fx()`.
		# See the RichTextEffect documentation for details.
		char_fx.character = ord("*")
		
		```
	**/
	@:native("Character")
	public var character:Int;

	/**		
		Contains the arguments passed in the opening BBCode tag. By default, arguments are strings; if their contents match a type such as `Bool`, `Int` or `Single`, they will be converted automatically. Color codes in the form `#rrggbb` or `#rgb` will be converted to an opaque `godot.Color`. String arguments may not contain spaces, even if they're quoted. If present, quotes will also be present in the final string.
		
		For example, the opening BBCode tag `[example foo=hello bar=true baz=42 color=#ffffff]` will map to the following `godot.Collections_Dictionary`:
		
		```
		
		{"foo": "hello", "bar": true, "baz": 42, "color": Color(1, 1, 1, 1)}
		
		```
	**/
	@:native("Env")
	public var env:godot.collections.Dictionary;

	/**		
		The color the character will be drawn with.
	**/
	@:native("Color")
	public var color:godot.Color;

	/**		
		The position offset the character will be drawn with (in pixels).
	**/
	@:native("Offset")
	public var offset:godot.Vector2;

	/**		
		If `true`, the character will be drawn. If `false`, the character will be hidden. Characters around hidden characters will reflow to take the space of hidden characters. If this is not desired, set their `godot.CharFXTransform.color` to `Color(1, 1, 1, 0)` instead.
	**/
	@:native("Visible")
	public var visible:Bool;

	/**		
		The time elapsed since the `godot.RichTextLabel` was added to the scene tree (in seconds). Time stops when the `godot.RichTextLabel` is paused (see `godot.Node.pauseMode`). Resets when the text in the `godot.RichTextLabel` is changed.
		
		Note: Time still passes while the `godot.RichTextLabel` is hidden.
	**/
	@:native("ElapsedTime")
	public var elapsedTime:Single;

	/**		
		The index of the current character (starting from 0). Setting this property won't affect drawing.
	**/
	@:native("AbsoluteIndex")
	public var absoluteIndex:cs.types.UInt64;

	/**		
		The index of the current character (starting from 0). Setting this property won't affect drawing.
	**/
	@:native("RelativeIndex")
	public var relativeIndex:cs.types.UInt64;

	@:native("new")
	public function new():Void;

	@:native("GetRelativeIndex")
	public function getRelativeIndex():cs.types.UInt64;

	@:native("SetRelativeIndex")
	public function setRelativeIndex(index:cs.types.UInt64):Void;

	@:native("GetAbsoluteIndex")
	public function getAbsoluteIndex():cs.types.UInt64;

	@:native("SetAbsoluteIndex")
	public function setAbsoluteIndex(index:cs.types.UInt64):Void;

	@:native("GetElapsedTime")
	public function getElapsedTime():Single;

	@:native("SetElapsedTime")
	public function setElapsedTime(time:Single):Void;

	@:native("IsVisible")
	public function isVisible():Bool;

	@:native("SetVisibility")
	public function setVisibility(visibility:Bool):Void;

	@:native("GetOffset")
	public function getOffset():godot.Vector2;

	@:native("SetOffset")
	public function setOffset(offset:godot.Vector2):Void;

	@:native("GetColor")
	public function getColor():godot.Color;

	@:native("SetColor")
	public function setColor(color:godot.Color):Void;

	@:native("GetEnvironment")
	public function getEnvironment():godot.collections.Dictionary;

	@:native("SetEnvironment")
	public function setEnvironment(environment:godot.collections.Dictionary):Void;

	@:native("GetCharacter")
	public function getCharacter():Int;

	@:native("SetCharacter")
	public function setCharacter(character:Int):Void;
}
