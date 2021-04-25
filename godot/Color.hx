// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A color represented by red, green, blue, and alpha (RGBA) components.
The alpha component is often used for transparency.
Values are in floating-point and usually range from 0 to 1.
Some properties (such as CanvasItem.modulate) may accept values
greater than 1 (overbright or HDR colors).

If you want to supply values in a range of 0 to 255, you should use
`godot.Color.color8` and the `r8`/`g8`/`b8`/`a8` properties.
**/
#if doc_gen
@:struct
@:libType
@:csNative
@:native("Godot.Color")
@:autoBuild(godot.Godot.buildUserClass())
extern class Color extends cs.system.ValueType implements cs.system.IEquatable_1<godot.Color> {
#else
@:forward
@:forwardStatics
extern abstract Color(Color_) from Color_ to Color_ {
#end
	#if !doc_gen
	/**		
		Constructs a color from RGBA values, typically on the range of 0 to 1.
		
		@param r The color's red component, typically on the range of 0 to 1.
		@param g The color's green component, typically on the range of 0 to 1.
		@param b The color's blue component, typically on the range of 0 to 1.
		@param a The color's alpha (transparency) value, typically on the range of 0 to 1. Default: 1.
	**/
	public overload inline function new(r:Single, g:Single, b:Single, a:Single) {
		this = new Color_(r, g, b, a);
	}
	#end

	#if !doc_gen
	/**		
		Constructs a color from an existing color and an alpha value.
		
		@param c The color to construct from. Only its RGB values are used.
		@param a The color's alpha (transparency) value, typically on the range of 0 to 1. Default: 1.
	**/
	public overload inline function new(c:godot.Color, a:Single) {
		this = new Color_(c, a);
	}
	#end

	#if !doc_gen
	/**		
		Constructs a color from a 32-bit integer in RGBA format
		(each byte represents a color channel).
		
		@param rgba The int representing the color.
	**/
	public overload inline function new(rgba:Int) {
		this = new Color_(rgba);
	}
	#end

	#if !doc_gen
	/**		
		Constructs a color from a 64-bit integer in RGBA format
		(each word represents a color channel).
		
		@param rgba The long representing the color.
	**/
	public overload inline function new(rgba:haxe.Int64) {
		this = new Color_(rgba);
	}
	#end

	#if !doc_gen
	/**		
		Constructs a color from the HTML hexadecimal color string in RGBA format.
		
		@param rgba A string for the HTML hexadecimal representation of this color.
	**/
	public overload inline function new(rgba:std.String) {
		this = new Color_(rgba);
	}
	#end

	/**
		Operator overload for `godot.Color` + `godot.Color`.
	**/
	@:op(A + B) static inline function op_Addition(left:godot.Color, right:godot.Color):godot.Color {
		return cs.Syntax.code("{0} + {1}", left, right);
	}

	/**
		Operator overload for `godot.Color` - `godot.Color`.
	**/
	@:op(A - B) static inline function op_Subtraction(left:godot.Color, right:godot.Color):godot.Color {
		return cs.Syntax.code("{0} - {1}", left, right);
	}

	/**
		Operator overload for -`godot.Color`.
	**/
	@:op(-A) static inline function op_UnaryNegation(color:godot.Color):godot.Color {
		return cs.Syntax.code("-{0}", color);
	}

	/**
		Operator overload for `godot.Color` * ((global::System.Single)(`Float`)).
	**/
	@:op(A * B) static inline overload function op_Multiply(color:godot.Color, scale:Float):godot.Color {
		return cs.Syntax.code("{0} * ((global::System.Single)({1}))", color, scale);
	}

	/**
		Operator overload for ((global::System.Single)(`Float`)) * `godot.Color`.
	**/
	@:op(A * B) static inline overload function op_Multiply(scale:Float, color:godot.Color):godot.Color {
		return cs.Syntax.code("((global::System.Single)({0})) * {1}", scale, color);
	}

	/**
		Operator overload for `godot.Color` * `godot.Color`.
	**/
	@:op(A * B) static inline overload function op_Multiply(left:godot.Color, right:godot.Color):godot.Color {
		return cs.Syntax.code("{0} * {1}", left, right);
	}

	/**
		Operator overload for `godot.Color` / ((global::System.Single)(`Float`)).
	**/
	@:op(A / B) static inline overload function op_Division(color:godot.Color, scale:Float):godot.Color {
		return cs.Syntax.code("{0} / ((global::System.Single)({1}))", color, scale);
	}

	/**
		Operator overload for `godot.Color` / `godot.Color`.
	**/
	@:op(A / B) static inline overload function op_Division(left:godot.Color, right:godot.Color):godot.Color {
		return cs.Syntax.code("{0} / {1}", left, right);
	}

	/**
		Operator overload for `godot.Color` == `godot.Color`.
	**/
	@:op(A == B) static inline function op_Equality(left:godot.Color, right:godot.Color):Bool {
		return cs.Syntax.code("{0} == {1}", left, right);
	}

	/**
		Operator overload for `godot.Color` != `godot.Color`.
	**/
	@:op(A != B) static inline function op_Inequality(left:godot.Color, right:godot.Color):Bool {
		return cs.Syntax.code("{0} != {1}", left, right);
	}

	/**
		Operator overload for `godot.Color` < `godot.Color`.
	**/
	@:op(A < B) static inline function op_LessThan(left:godot.Color, right:godot.Color):Bool {
		return cs.Syntax.code("{0} < {1}", left, right);
	}

	/**
		Operator overload for `godot.Color` > `godot.Color`.
	**/
	@:op(A > B) static inline function op_GreaterThan(left:godot.Color, right:godot.Color):Bool {
		return cs.Syntax.code("{0} > {1}", left, right);
	}
#if !doc_gen
}

@:struct
@:libType
@:csNative
@:native("Godot.Color")
@:autoBuild(godot.Godot.buildUserClass())
extern class Color_ extends cs.system.ValueType implements cs.system.IEquatable_1<godot.Color> {
#end
	/**		
		The HSV value (brightness) of this color, on the range 0 to 1.
		
		Value: Getting is equivalent to using `Max()` on the RGB components. Setting uses `godot.Color.fromHsv`.
	**/
	@:native("v")
	public var v:Single;

	/**		
		The HSV saturation of this color, on the range 0 to 1.
		
		Value: Getting is equivalent to the ratio between the min and max RGB value. Setting uses `godot.Color.fromHsv`.
	**/
	@:native("s")
	public var s:Single;

	/**		
		The HSV hue of this color, on the range 0 to 1.
		
		Value: Getting is a long process, refer to the source code for details. Setting uses `godot.Color.fromHsv`.
	**/
	@:native("h")
	public var h:Single;

	/**		
		Wrapper for `godot.Color.a` that uses the range 0 to 255 instead of 0 to 1.
		
		Value: Getting is equivalent to multiplying by 255 and rounding. Setting is equivalent to dividing by 255.
	**/
	@:native("a8")
	public var a8:Int;

	/**		
		Wrapper for `godot.Color.b` that uses the range 0 to 255 instead of 0 to 1.
		
		Value: Getting is equivalent to multiplying by 255 and rounding. Setting is equivalent to dividing by 255.
	**/
	@:native("b8")
	public var b8:Int;

	/**		
		Wrapper for `godot.Color.g` that uses the range 0 to 255 instead of 0 to 1.
		
		Value: Getting is equivalent to multiplying by 255 and rounding. Setting is equivalent to dividing by 255.
	**/
	@:native("g8")
	public var g8:Int;

	/**		
		Wrapper for `godot.Color.r` that uses the range 0 to 255 instead of 0 to 1.
		
		Value: Getting is equivalent to multiplying by 255 and rounding. Setting is equivalent to dividing by 255.
	**/
	@:native("r8")
	public var r8:Int;

	/**		
		The color's alpha (transparency) component, typically on the range of 0 to 1.
	**/
	@:native("a")
	public var a:Single;

	/**		
		The color's blue component, typically on the range of 0 to 1.
	**/
	@:native("b")
	public var b:Single;

	/**		
		The color's green component, typically on the range of 0 to 1.
	**/
	@:native("g")
	public var g:Single;

	/**		
		The color's red component, typically on the range of 0 to 1.
	**/
	@:native("r")
	public var r:Single;

	#if doc_gen
	/**		
		Returns a color according to the standardized name, with the
		specified alpha value. Supported color names are the same as
		the constants defined in `godot.Colors`.
		
		@param name The name of the color.
		@param alpha The alpha (transparency) component represented on the range of 0 to 1. Default: 1.
		@returns The constructed color.
	**/
	@:native("ColorN")
	public static function colorN(name:std.String, ?alpha:Single):godot.Color;
	#else
	/**		
		Returns a color according to the standardized name, with the
		specified alpha value. Supported color names are the same as
		the constants defined in `godot.Colors`.
		
		@param name The name of the color.
		@param alpha The alpha (transparency) component represented on the range of 0 to 1. Default: 1.
		@returns The constructed color.
	**/
	@:native("ColorN")
	public static overload function colorN(name:std.String):godot.Color;

	/**		
		Returns a color according to the standardized name, with the
		specified alpha value. Supported color names are the same as
		the constants defined in `godot.Colors`.
		
		@param name The name of the color.
		@param alpha The alpha (transparency) component represented on the range of 0 to 1. Default: 1.
		@returns The constructed color.
	**/
	@:native("ColorN")
	public static overload function colorN(name:std.String, alpha:Single):godot.Color;
	#end

	/**		
		Converts a color to HSV values. This is equivalent to using each of
		the `h`/`s`/`v` properties, but much more efficient.
		
		@param hue Output parameter for the HSV hue.
		@param saturation Output parameter for the HSV saturation.
		@param value Output parameter for the HSV value.
	**/
	@:native("ToHsv")
	public function toHsv(hue:cs.Out<Single>, saturation:cs.Out<Single>, value:cs.Out<Single>):Void;

	#if doc_gen
	/**		
		Constructs a color from an HSV profile, with values on the
		range of 0 to 1. This is equivalent to using each of
		the `h`/`s`/`v` properties, but much more efficient.
		
		@param hue The HSV hue, typically on the range of 0 to 1.
		@param saturation The HSV saturation, typically on the range of 0 to 1.
		@param value The HSV value (brightness), typically on the range of 0 to 1.
		@param alpha The alpha (transparency) value, typically on the range of 0 to 1.
		@returns The constructed color.
	**/
	@:native("FromHsv")
	public static function fromHsv(hue:Single, saturation:Single, value:Single, ?alpha:Single):godot.Color;
	#else
	/**		
		Constructs a color from an HSV profile, with values on the
		range of 0 to 1. This is equivalent to using each of
		the `h`/`s`/`v` properties, but much more efficient.
		
		@param hue The HSV hue, typically on the range of 0 to 1.
		@param saturation The HSV saturation, typically on the range of 0 to 1.
		@param value The HSV value (brightness), typically on the range of 0 to 1.
		@param alpha The alpha (transparency) value, typically on the range of 0 to 1.
		@returns The constructed color.
	**/
	@:native("FromHsv")
	public static overload function fromHsv(hue:Single, saturation:Single, value:Single):godot.Color;

	/**		
		Constructs a color from an HSV profile, with values on the
		range of 0 to 1. This is equivalent to using each of
		the `h`/`s`/`v` properties, but much more efficient.
		
		@param hue The HSV hue, typically on the range of 0 to 1.
		@param saturation The HSV saturation, typically on the range of 0 to 1.
		@param value The HSV value (brightness), typically on the range of 0 to 1.
		@param alpha The alpha (transparency) value, typically on the range of 0 to 1.
		@returns The constructed color.
	**/
	@:native("FromHsv")
	public static overload function fromHsv(hue:Single, saturation:Single, value:Single, alpha:Single):godot.Color;
	#end

	/**		
		Returns a new color resulting from blending this color over another.
		If the color is opaque, the result is also opaque.
		The second color may have a range of alpha values.
		
		@param over The color to blend over.
		@returns This color blended over `over`.
	**/
	@:native("Blend")
	public function blend(over:godot.Color):godot.Color;

	/**		
		Returns the most contrasting color.
		
		@returns The most contrasting color
	**/
	@:native("Contrasted")
	public function contrasted():godot.Color;

	/**		
		Returns a new color resulting from making this color darker
		by the specified ratio (on the range of 0 to 1).
		
		@param amount The ratio to darken by.
		@returns The darkened color.
	**/
	@:native("Darkened")
	public function darkened(amount:Single):godot.Color;

	/**		
		Returns the inverted color: `(1 - r, 1 - g, 1 - b, a)`.
		
		@returns The inverted color.
	**/
	@:native("Inverted")
	public function inverted():godot.Color;

	/**		
		Returns a new color resulting from making this color lighter
		by the specified ratio (on the range of 0 to 1).
		
		@param amount The ratio to lighten by.
		@returns The darkened color.
	**/
	@:native("Lightened")
	public function lightened(amount:Single):godot.Color;

	/**		
		Returns the result of the linear interpolation between
		this color and `to` by amount `weight`.
		
		@param to The destination color for interpolation.
		@param weight A value on the range of 0.0 to 1.0, representing the amount of interpolation.
		@returns The resulting color of the interpolation.
	**/
	@:native("LinearInterpolate")
	public overload function linearInterpolate(to:godot.Color, weight:Single):godot.Color;

	/**		
		Returns the result of the linear interpolation between
		this color and `to` by color amount `weight`.
		
		@param to The destination color for interpolation.
		@param weight A color with components on the range of 0.0 to 1.0, representing the amount of interpolation.
		@returns The resulting color of the interpolation.
	**/
	@:native("LinearInterpolate")
	public overload function linearInterpolate(to:godot.Color, weight:godot.Color):godot.Color;

	/**		
		Returns the color converted to a 32-bit integer in ABGR
		format (each byte represents a color channel).
		ABGR is the reversed version of the default format.
		
		@returns An int representing this color in ABGR32 format.
	**/
	@:native("ToAbgr32")
	public function toAbgr32():Int;

	/**		
		Returns the color converted to a 64-bit integer in ABGR
		format (each word represents a color channel).
		ABGR is the reversed version of the default format.
		
		@returns An int representing this color in ABGR64 format.
	**/
	@:native("ToAbgr64")
	public function toAbgr64():haxe.Int64;

	/**		
		Returns the color converted to a 32-bit integer in ARGB
		format (each byte represents a color channel).
		ARGB is more compatible with DirectX, but not used much in Godot.
		
		@returns An int representing this color in ARGB32 format.
	**/
	@:native("ToArgb32")
	public function toArgb32():Int;

	/**		
		Returns the color converted to a 64-bit integer in ARGB
		format (each word represents a color channel).
		ARGB is more compatible with DirectX, but not used much in Godot.
		
		@returns A long representing this color in ARGB64 format.
	**/
	@:native("ToArgb64")
	public function toArgb64():haxe.Int64;

	/**		
		Returns the color converted to a 32-bit integer in RGBA
		format (each byte represents a color channel).
		RGBA is Godot's default and recommended format.
		
		@returns An int representing this color in RGBA32 format.
	**/
	@:native("ToRgba32")
	public function toRgba32():Int;

	/**		
		Returns the color converted to a 64-bit integer in RGBA
		format (each word represents a color channel).
		RGBA is Godot's default and recommended format.
		
		@returns A long representing this color in RGBA64 format.
	**/
	@:native("ToRgba64")
	public function toRgba64():haxe.Int64;

	#if doc_gen
	/**		
		Returns the color's HTML hexadecimal color string in RGBA format.
		
		@param includeAlpha Whether or not to include alpha. If false, the color is RGB instead of RGBA.
		@returns A string for the HTML hexadecimal representation of this color.
	**/
	@:native("ToHtml")
	public function toHtml(?includeAlpha:Bool):std.String;
	#else
	/**		
		Returns the color's HTML hexadecimal color string in RGBA format.
		
		@param includeAlpha Whether or not to include alpha. If false, the color is RGB instead of RGBA.
		@returns A string for the HTML hexadecimal representation of this color.
	**/
	@:native("ToHtml")
	public overload function toHtml():std.String;

	/**		
		Returns the color's HTML hexadecimal color string in RGBA format.
		
		@param includeAlpha Whether or not to include alpha. If false, the color is RGB instead of RGBA.
		@returns A string for the HTML hexadecimal representation of this color.
	**/
	@:native("ToHtml")
	public overload function toHtml(includeAlpha:Bool):std.String;
	#end

	#if doc_gen
	/**		
		Constructs a color from RGBA values, typically on the range of 0 to 1.
		
		@param r The color's red component, typically on the range of 0 to 1.
		@param g The color's green component, typically on the range of 0 to 1.
		@param b The color's blue component, typically on the range of 0 to 1.
		@param a The color's alpha (transparency) value, typically on the range of 0 to 1. Default: 1.
	**/
	@:native("new")
	public overload function new(r:Single, g:Single, b:Single, ?a:Single):Void;
	#else
	/**		
		Constructs a color from RGBA values, typically on the range of 0 to 1.
		
		@param r The color's red component, typically on the range of 0 to 1.
		@param g The color's green component, typically on the range of 0 to 1.
		@param b The color's blue component, typically on the range of 0 to 1.
		@param a The color's alpha (transparency) value, typically on the range of 0 to 1. Default: 1.
	**/
	@:native("new")
	public overload function new(r:Single, g:Single, b:Single):Void;

	/**		
		Constructs a color from RGBA values, typically on the range of 0 to 1.
		
		@param r The color's red component, typically on the range of 0 to 1.
		@param g The color's green component, typically on the range of 0 to 1.
		@param b The color's blue component, typically on the range of 0 to 1.
		@param a The color's alpha (transparency) value, typically on the range of 0 to 1. Default: 1.
	**/
	@:native("new")
	public overload function new(r:Single, g:Single, b:Single, a:Single):Void;
	#end

	#if doc_gen
	/**		
		Constructs a color from an existing color and an alpha value.
		
		@param c The color to construct from. Only its RGB values are used.
		@param a The color's alpha (transparency) value, typically on the range of 0 to 1. Default: 1.
	**/
	@:native("new")
	public overload function new(c:godot.Color, ?a:Single):Void;
	#else
	/**		
		Constructs a color from an existing color and an alpha value.
		
		@param c The color to construct from. Only its RGB values are used.
		@param a The color's alpha (transparency) value, typically on the range of 0 to 1. Default: 1.
	**/
	@:native("new")
	public overload function new(c:godot.Color):Void;

	/**		
		Constructs a color from an existing color and an alpha value.
		
		@param c The color to construct from. Only its RGB values are used.
		@param a The color's alpha (transparency) value, typically on the range of 0 to 1. Default: 1.
	**/
	@:native("new")
	public overload function new(c:godot.Color, a:Single):Void;
	#end

	/**		
		Constructs a color from a 32-bit integer in RGBA format
		(each byte represents a color channel).
		
		@param rgba The int representing the color.
	**/
	@:native("new")
	public overload function new(rgba:Int):Void;

	/**		
		Constructs a color from a 64-bit integer in RGBA format
		(each word represents a color channel).
		
		@param rgba The long representing the color.
	**/
	@:native("new")
	public overload function new(rgba:haxe.Int64):Void;

	#if doc_gen
	/**		
		Returns a color constructed from integer red, green, blue, and alpha channels.
		Each channel should have 8 bits of information ranging from 0 to 255.
		
		@param r8 The red component represented on the range of 0 to 255.
		@param g8 The green component represented on the range of 0 to 255.
		@param b8 The blue component represented on the range of 0 to 255.
		@param a8 The alpha (transparency) component represented on the range of 0 to 255.
		@returns The constructed color.
	**/
	@:native("Color8")
	public static function color8(r8:cs.types.UInt8, g8:cs.types.UInt8, b8:cs.types.UInt8, ?a8:cs.types.UInt8):godot.Color;
	#else
	/**		
		Returns a color constructed from integer red, green, blue, and alpha channels.
		Each channel should have 8 bits of information ranging from 0 to 255.
		
		@param r8 The red component represented on the range of 0 to 255.
		@param g8 The green component represented on the range of 0 to 255.
		@param b8 The blue component represented on the range of 0 to 255.
		@param a8 The alpha (transparency) component represented on the range of 0 to 255.
		@returns The constructed color.
	**/
	@:native("Color8")
	public static overload function color8(r8:cs.types.UInt8, g8:cs.types.UInt8, b8:cs.types.UInt8):godot.Color;

	/**		
		Returns a color constructed from integer red, green, blue, and alpha channels.
		Each channel should have 8 bits of information ranging from 0 to 255.
		
		@param r8 The red component represented on the range of 0 to 255.
		@param g8 The green component represented on the range of 0 to 255.
		@param b8 The blue component represented on the range of 0 to 255.
		@param a8 The alpha (transparency) component represented on the range of 0 to 255.
		@returns The constructed color.
	**/
	@:native("Color8")
	public static overload function color8(r8:cs.types.UInt8, g8:cs.types.UInt8, b8:cs.types.UInt8, a8:cs.types.UInt8):godot.Color;
	#end

	/**		
		Constructs a color from the HTML hexadecimal color string in RGBA format.
		
		@param rgba A string for the HTML hexadecimal representation of this color.
	**/
	@:native("new")
	public overload function new(rgba:std.String):Void;

	/**		
		Returns true if this color and `other` are approximately equal, by running
		`godot.Mathf.isEqualApprox` on each component.
		
		@param other The other color to compare.
		@returns Whether or not the colors are approximately equal.
	**/
	@:native("IsEqualApprox")
	public function isEqualApprox(other:godot.Color):Bool;

	@:native("ToString")
	public overload function toString():std.String;

	@:native("ToString")
	public overload function toString(format:std.String):std.String;
}
