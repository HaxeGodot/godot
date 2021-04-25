// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.StringExtensions")
@:autoBuild(godot.Godot.buildUserClass())
extern class StringExtensions {
	@:native("BaseName")
	public static function baseName(instance:std.String):std.String;

	@:native("BeginsWith")
	public static function beginsWith(instance:std.String, text:std.String):Bool;

	@:native("Bigrams")
	public static function bigrams(instance:std.String):cs.NativeArray<std.String>;

	/**		
		Converts a string containing a binary number into an integer.
		Binary strings can either be prefixed with `0b` or not,
		and they can also start with a `-` before the optional prefix.
		
		@param instance The string to convert.
		@returns The converted string.
	**/
	@:native("BinToInt")
	public static function binToInt(instance:std.String):Int;

	#if doc_gen
	@:native("Count")
	public static function count(instance:std.String, what:std.String, ?caseSensitive:Bool, ?from:Int, ?to:Int):Int;
	#else
	@:native("Count")
	public static overload function count(instance:std.String, what:std.String):Int;

	@:native("Count")
	public static overload function count(instance:std.String, what:std.String, caseSensitive:Bool):Int;

	@:native("Count")
	public static overload function count(instance:std.String, what:std.String, caseSensitive:Bool, from:Int):Int;

	@:native("Count")
	public static overload function count(instance:std.String, what:std.String, caseSensitive:Bool, from:Int, to:Int):Int;
	#end

	@:native("CEscape")
	public static function cEscape(instance:std.String):std.String;

	@:native("CUnescape")
	public static function cUnescape(instance:std.String):std.String;

	@:native("Capitalize")
	public static function capitalize(instance:std.String):std.String;

	@:native("CasecmpTo")
	public static function casecmpTo(instance:std.String, to:std.String):Int;

	#if doc_gen
	@:native("CompareTo")
	public static function compareTo(instance:std.String, to:std.String, ?caseSensitive:Bool):Int;
	#else
	@:native("CompareTo")
	public static overload function compareTo(instance:std.String, to:std.String):Int;

	@:native("CompareTo")
	public static overload function compareTo(instance:std.String, to:std.String, caseSensitive:Bool):Int;
	#end

	@:native("Empty")
	public static function empty(instance:std.String):Bool;

	@:native("EndsWith")
	public static function endsWith(instance:std.String, text:std.String):Bool;

	@:native("Erase")
	public static function erase(instance:cs.system.text.StringBuilder, pos:Int, chars:Int):Void;

	@:native("Extension")
	public static function extension(instance:std.String):std.String;

	#if doc_gen
	/**		Find the first occurrence of a substring. Optionally, the search starting position can be passed.
		@returns The starting position of the substring, or -1 if not found.
	**/
	@:native("Find")
	public static overload function find(instance:std.String, what:std.String, ?from:Int, ?caseSensitive:Bool):Int;
	#else
	/**		Find the first occurrence of a substring. Optionally, the search starting position can be passed.
		@returns The starting position of the substring, or -1 if not found.
	**/
	@:native("Find")
	public static overload function find(instance:std.String, what:std.String):Int;

	/**		Find the first occurrence of a substring. Optionally, the search starting position can be passed.
		@returns The starting position of the substring, or -1 if not found.
	**/
	@:native("Find")
	public static overload function find(instance:std.String, what:std.String, from:Int):Int;

	/**		Find the first occurrence of a substring. Optionally, the search starting position can be passed.
		@returns The starting position of the substring, or -1 if not found.
	**/
	@:native("Find")
	public static overload function find(instance:std.String, what:std.String, from:Int, caseSensitive:Bool):Int;
	#end

	#if doc_gen
	@:native("Find")
	public static overload function find(instance:std.String, what:cs.types.Char16, ?from:Int, ?caseSensitive:Bool):Int;
	#else
	@:native("Find")
	public static overload function find(instance:std.String, what:cs.types.Char16):Int;

	@:native("Find")
	public static overload function find(instance:std.String, what:cs.types.Char16, from:Int):Int;

	@:native("Find")
	public static overload function find(instance:std.String, what:cs.types.Char16, from:Int, caseSensitive:Bool):Int;
	#end

	#if doc_gen
	/**		Find the last occurrence of a substring.
		@returns The starting position of the substring, or -1 if not found.
	**/
	@:native("FindLast")
	public static overload function findLast(instance:std.String, what:std.String, ?caseSensitive:Bool):Int;
	#else
	/**		Find the last occurrence of a substring.
		@returns The starting position of the substring, or -1 if not found.
	**/
	@:native("FindLast")
	public static overload function findLast(instance:std.String, what:std.String):Int;

	/**		Find the last occurrence of a substring.
		@returns The starting position of the substring, or -1 if not found.
	**/
	@:native("FindLast")
	public static overload function findLast(instance:std.String, what:std.String, caseSensitive:Bool):Int;
	#end

	#if doc_gen
	/**		Find the last occurrence of a substring specifying the search starting position.
		@returns The starting position of the substring, or -1 if not found.
	**/
	@:native("FindLast")
	public static overload function findLast(instance:std.String, what:std.String, from:Int, ?caseSensitive:Bool):Int;
	#else
	/**		Find the last occurrence of a substring specifying the search starting position.
		@returns The starting position of the substring, or -1 if not found.
	**/
	@:native("FindLast")
	public static overload function findLast(instance:std.String, what:std.String, from:Int):Int;

	/**		Find the last occurrence of a substring specifying the search starting position.
		@returns The starting position of the substring, or -1 if not found.
	**/
	@:native("FindLast")
	public static overload function findLast(instance:std.String, what:std.String, from:Int, caseSensitive:Bool):Int;
	#end

	#if doc_gen
	/**		Find the first occurrence of a substring but search as case-insensitive. Optionally, the search starting position can be passed.
		@returns The starting position of the substring, or -1 if not found.
	**/
	@:native("FindN")
	public static function findN(instance:std.String, what:std.String, ?from:Int):Int;
	#else
	/**		Find the first occurrence of a substring but search as case-insensitive. Optionally, the search starting position can be passed.
		@returns The starting position of the substring, or -1 if not found.
	**/
	@:native("FindN")
	public static overload function findN(instance:std.String, what:std.String):Int;

	/**		Find the first occurrence of a substring but search as case-insensitive. Optionally, the search starting position can be passed.
		@returns The starting position of the substring, or -1 if not found.
	**/
	@:native("FindN")
	public static overload function findN(instance:std.String, what:std.String, from:Int):Int;
	#end

	@:native("GetBaseDir")
	public static function getBaseDir(instance:std.String):std.String;

	@:native("GetFile")
	public static function getFile(instance:std.String):std.String;

	/**		
		Converts the given byte array of ASCII encoded text to a string.
		Faster alternative to `godot.StringExtensions.getStringFromUTF8` if the
		content is ASCII-only. Unlike the UTF-8 function this function
		maps every byte to a character in the array. Multibyte sequences
		will not be interpreted correctly. For parsing user input always
		use `godot.StringExtensions.getStringFromUTF8`.
		
		@param bytes A byte array of ASCII characters (on the range of 0-127).
		@returns A string created from the bytes.
	**/
	@:native("GetStringFromASCII")
	public static function getStringFromASCII(bytes:haxe.Rest<cs.types.UInt8>):std.String;

	/**		
		Converts the given byte array of UTF-8 encoded text to a string.
		Slower than `godot.StringExtensions.getStringFromASCII` but supports UTF-8
		encoded data. Use this function if you are unsure about the
		source of the data. For user input this function
		should always be preferred.
		
		@param bytes A byte array of UTF-8 characters (a character may take up multiple bytes).
		@returns A string created from the bytes.
	**/
	@:native("GetStringFromUTF8")
	public static function getStringFromUTF8(bytes:haxe.Rest<cs.types.UInt8>):std.String;

	@:native("Hash")
	public static function hash(instance:std.String):UInt;

	/**		
		Returns a hexadecimal representation of this byte array as a string.
		
		@param bytes The byte array to encode.
		@returns The hexadecimal representation of this byte array.
	**/
	@:native("HexEncode")
	public static function hexEncode(bytes:haxe.Rest<cs.types.UInt8>):std.String;

	/**		
		Converts a string containing a hexadecimal number into an integer.
		Hexadecimal strings can either be prefixed with `0x` or not,
		and they can also start with a `-` before the optional prefix.
		
		@param instance The string to convert.
		@returns The converted string.
	**/
	@:native("HexToInt")
	public static function hexToInt(instance:std.String):Int;

	@:native("Insert")
	public static function insert(instance:std.String, pos:Int, what:std.String):std.String;

	@:native("IsAbsPath")
	public static function isAbsPath(instance:std.String):Bool;

	@:native("IsRelPath")
	public static function isRelPath(instance:std.String):Bool;

	#if doc_gen
	@:native("IsSubsequenceOf")
	public static function isSubsequenceOf(instance:std.String, text:std.String, ?caseSensitive:Bool):Bool;
	#else
	@:native("IsSubsequenceOf")
	public static overload function isSubsequenceOf(instance:std.String, text:std.String):Bool;

	@:native("IsSubsequenceOf")
	public static overload function isSubsequenceOf(instance:std.String, text:std.String, caseSensitive:Bool):Bool;
	#end

	@:native("IsSubsequenceOfI")
	public static function isSubsequenceOfI(instance:std.String, text:std.String):Bool;

	@:native("IsValidFloat")
	public static function isValidFloat(instance:std.String):Bool;

	@:native("IsValidHtmlColor")
	public static function isValidHtmlColor(instance:std.String):Bool;

	@:native("IsValidIdentifier")
	public static function isValidIdentifier(instance:std.String):Bool;

	@:native("IsValidInteger")
	public static function isValidInteger(instance:std.String):Bool;

	@:native("IsValidIPAddress")
	public static function isValidIPAddress(instance:std.String):Bool;

	@:native("JSONEscape")
	public static function jSONEscape(instance:std.String):std.String;

	@:native("Left")
	public static function left(instance:std.String, pos:Int):std.String;

	/**		
		Return the length of the string in characters.
	**/
	@:native("Length")
	public static function length(instance:std.String):Int;

	/**		
		Returns a copy of the string with characters removed from the left.
		
		@param instance The string to remove characters from.
		@param chars The characters to be removed.
		@returns A copy of the string with characters removed from the left.
	**/
	@:native("LStrip")
	public static function lStrip(instance:std.String, chars:std.String):std.String;

	#if doc_gen
	/**		
		Do a simple case sensitive expression match, using ? and * wildcards (see [method expr_match]).
	**/
	@:native("Match")
	public static function match(instance:std.String, expr:std.String, ?caseSensitive:Bool):Bool;
	#else
	/**		
		Do a simple case sensitive expression match, using ? and * wildcards (see [method expr_match]).
	**/
	@:native("Match")
	public static overload function match(instance:std.String, expr:std.String):Bool;

	/**		
		Do a simple case sensitive expression match, using ? and * wildcards (see [method expr_match]).
	**/
	@:native("Match")
	public static overload function match(instance:std.String, expr:std.String, caseSensitive:Bool):Bool;
	#end

	/**		
		Do a simple case insensitive expression match, using ? and * wildcards (see [method expr_match]).
	**/
	@:native("MatchN")
	public static function matchN(instance:std.String, expr:std.String):Bool;

	@:native("MD5Buffer")
	public static function mD5Buffer(instance:std.String):cs.NativeArray<cs.types.UInt8>;

	@:native("MD5Text")
	public static function mD5Text(instance:std.String):std.String;

	@:native("NocasecmpTo")
	public static function nocasecmpTo(instance:std.String, to:std.String):Int;

	@:native("OrdAt")
	public static function ordAt(instance:std.String, at:Int):Int;

	@:native("PadDecimals")
	public static function padDecimals(instance:std.String, digits:Int):std.String;

	@:native("PadZeros")
	public static function padZeros(instance:std.String, digits:Int):std.String;

	@:native("PercentDecode")
	public static function percentDecode(instance:std.String):std.String;

	@:native("PercentEncode")
	public static function percentEncode(instance:std.String):std.String;

	@:native("PlusFile")
	public static function plusFile(instance:std.String, file:std.String):std.String;

	@:native("Replace")
	public static function replace(instance:std.String, what:std.String, forwhat:std.String):std.String;

	@:native("ReplaceN")
	public static function replaceN(instance:std.String, what:std.String, forwhat:std.String):std.String;

	#if doc_gen
	@:native("RFind")
	public static function rFind(instance:std.String, what:std.String, ?from:Int):Int;
	#else
	@:native("RFind")
	public static overload function rFind(instance:std.String, what:std.String):Int;

	@:native("RFind")
	public static overload function rFind(instance:std.String, what:std.String, from:Int):Int;
	#end

	#if doc_gen
	@:native("RFindN")
	public static function rFindN(instance:std.String, what:std.String, ?from:Int):Int;
	#else
	@:native("RFindN")
	public static overload function rFindN(instance:std.String, what:std.String):Int;

	@:native("RFindN")
	public static overload function rFindN(instance:std.String, what:std.String, from:Int):Int;
	#end

	@:native("Right")
	public static function right(instance:std.String, pos:Int):std.String;

	/**		
		Returns a copy of the string with characters removed from the right.
		
		@param instance The string to remove characters from.
		@param chars The characters to be removed.
		@returns A copy of the string with characters removed from the right.
	**/
	@:native("RStrip")
	public static function rStrip(instance:std.String, chars:std.String):std.String;

	@:native("SHA256Buffer")
	public static function sHA256Buffer(instance:std.String):cs.NativeArray<cs.types.UInt8>;

	@:native("SHA256Text")
	public static function sHA256Text(instance:std.String):std.String;

	@:native("Similarity")
	public static function similarity(instance:std.String, text:std.String):Single;

	#if doc_gen
	@:native("Split")
	public static function split(instance:std.String, divisor:std.String, ?allowEmpty:Bool):cs.NativeArray<std.String>;
	#else
	@:native("Split")
	public static overload function split(instance:std.String, divisor:std.String):cs.NativeArray<std.String>;

	@:native("Split")
	public static overload function split(instance:std.String, divisor:std.String, allowEmpty:Bool):cs.NativeArray<std.String>;
	#end

	#if doc_gen
	@:native("SplitFloats")
	public static function splitFloats(instance:std.String, divisor:std.String, ?allowEmpty:Bool):cs.NativeArray<Single>;
	#else
	@:native("SplitFloats")
	public static overload function splitFloats(instance:std.String, divisor:std.String):cs.NativeArray<Single>;

	@:native("SplitFloats")
	public static overload function splitFloats(instance:std.String, divisor:std.String, allowEmpty:Bool):cs.NativeArray<Single>;
	#end

	#if doc_gen
	@:native("StripEdges")
	public static function stripEdges(instance:std.String, ?left:Bool, ?right:Bool):std.String;
	#else
	@:native("StripEdges")
	public static overload function stripEdges(instance:std.String):std.String;

	@:native("StripEdges")
	public static overload function stripEdges(instance:std.String, left:Bool):std.String;

	@:native("StripEdges")
	public static overload function stripEdges(instance:std.String, left:Bool, right:Bool):std.String;
	#end

	@:native("Substr")
	public static function substr(instance:std.String, from:Int, len:Int):std.String;

	@:native("ToAscii")
	public static function toAscii(instance:std.String):cs.NativeArray<cs.types.UInt8>;

	@:native("ToFloat")
	public static function toFloat(instance:std.String):Single;

	@:native("ToInt")
	public static function toInt(instance:std.String):Int;

	@:native("ToLower")
	public static function toLower(instance:std.String):std.String;

	@:native("ToUpper")
	public static function toUpper(instance:std.String):std.String;

	@:native("ToUTF8")
	public static function toUTF8(instance:std.String):cs.NativeArray<cs.types.UInt8>;

	@:native("XMLEscape")
	public static function xMLEscape(instance:std.String):std.String;

	@:native("XMLUnescape")
	public static function xMLUnescape(instance:std.String):std.String;
}
