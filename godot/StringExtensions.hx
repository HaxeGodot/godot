// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Extension methods to manipulate strings.
**/
@:libType
@:csNative
@:native("Godot.StringExtensions")
@:autoBuild(godot.Godot.buildUserClass())
extern class StringExtensions {
	/**		
		If the string is a path to a file, return the path to the file without the extension.
		@see `godot.StringExtensions.extension`@see `godot.StringExtensions.getBaseDir`@see `godot.StringExtensions.getFile`
		@param instance The path to a file.
		@returns The path to the file without the extension.
	**/
	@:native("BaseName")
	public static function baseName(instance:std.String):std.String;

	/**		
		Returns `true` if the strings begins
		with the given string `text`.
		
		@param instance The string to check.
		@param text The beginning string.
		@returns If the string begins with the given string.
	**/
	@:native("BeginsWith")
	public static function beginsWith(instance:std.String, text:std.String):Bool;

	/**		
		Returns the bigrams (pairs of consecutive letters) of this string.
		
		@param instance The string that will be used.
		@returns The bigrams of this string.
	**/
	public static extern inline function bigrams(instance:std.String):std.Array<std.String> {
		return cs.Lib.array(cs.Syntax.code("Bigrams({0})", instance));
	}

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
	/**		
		Returns the amount of substrings `what` in the string.
		
		@param instance The string where the substring will be searched.
		@param what The substring that will be counted.
		@param caseSensitive If the search is case sensitive.
		@param from Index to start searching from.
		@param to Index to stop searching at.
		@returns Amount of substrings in the string.
	**/
	@:native("Count")
	public static function count(instance:std.String, what:std.String, ?caseSensitive:Bool, ?from:Int, ?to:Int):Int;
	#else
	/**		
		Returns the amount of substrings `what` in the string.
		
		@param instance The string where the substring will be searched.
		@param what The substring that will be counted.
		@param caseSensitive If the search is case sensitive.
		@param from Index to start searching from.
		@param to Index to stop searching at.
		@returns Amount of substrings in the string.
	**/
	@:native("Count")
	public static overload function count(instance:std.String, what:std.String):Int;

	/**		
		Returns the amount of substrings `what` in the string.
		
		@param instance The string where the substring will be searched.
		@param what The substring that will be counted.
		@param caseSensitive If the search is case sensitive.
		@param from Index to start searching from.
		@param to Index to stop searching at.
		@returns Amount of substrings in the string.
	**/
	@:native("Count")
	public static overload function count(instance:std.String, what:std.String, caseSensitive:Bool):Int;

	/**		
		Returns the amount of substrings `what` in the string.
		
		@param instance The string where the substring will be searched.
		@param what The substring that will be counted.
		@param caseSensitive If the search is case sensitive.
		@param from Index to start searching from.
		@param to Index to stop searching at.
		@returns Amount of substrings in the string.
	**/
	@:native("Count")
	public static overload function count(instance:std.String, what:std.String, caseSensitive:Bool, from:Int):Int;

	/**		
		Returns the amount of substrings `what` in the string.
		
		@param instance The string where the substring will be searched.
		@param what The substring that will be counted.
		@param caseSensitive If the search is case sensitive.
		@param from Index to start searching from.
		@param to Index to stop searching at.
		@returns Amount of substrings in the string.
	**/
	@:native("Count")
	public static overload function count(instance:std.String, what:std.String, caseSensitive:Bool, from:Int, to:Int):Int;
	#end

	/**		
		Returns a copy of the string with special characters escaped using the C language standard.
		
		@param instance The string to escape.
		@returns The escaped string.
	**/
	@:native("CEscape")
	public static function cEscape(instance:std.String):std.String;

	/**		
		Returns a copy of the string with escaped characters replaced by their meanings
		according to the C language standard.
		
		@param instance The string to unescape.
		@returns The unescaped string.
	**/
	@:native("CUnescape")
	public static function cUnescape(instance:std.String):std.String;

	/**		
		Changes the case of some letters. Replace underscores with spaces, convert all letters
		to lowercase then capitalize first and every letter following the space character.
		For `capitalize camelCase mixed_with_underscores` it will return
		`Capitalize Camelcase Mixed With Underscores`.
		
		@param instance The string to capitalize.
		@returns The capitalized string.
	**/
	@:native("Capitalize")
	public static function capitalize(instance:std.String):std.String;

	/**		
		Performs a case-sensitive comparison to another string, return -1 if less, 0 if equal and +1 if greater.
		@see `godot.StringExtensions.nocasecmpTo`@see `godot.StringExtensions.compareTo`
		@param instance The string to compare.
		@param to The other string to compare.
		@returns -1 if less, 0 if equal and +1 if greater.
	**/
	@:native("CasecmpTo")
	public static function casecmpTo(instance:std.String, to:std.String):Int;

	#if doc_gen
	/**		
		Performs a comparison to another string, return -1 if less, 0 if equal and +1 if greater.
		
		@param instance The string to compare.
		@param to The other string to compare.
		@param caseSensitive
		If `true`, the comparison will be case sensitive.
		
		@returns -1 if less, 0 if equal and +1 if greater.
	**/
	@:native("CompareTo")
	public static function compareTo(instance:std.String, to:std.String, ?caseSensitive:Bool):Int;
	#else
	/**		
		Performs a comparison to another string, return -1 if less, 0 if equal and +1 if greater.
		
		@param instance The string to compare.
		@param to The other string to compare.
		@param caseSensitive
		If `true`, the comparison will be case sensitive.
		
		@returns -1 if less, 0 if equal and +1 if greater.
	**/
	@:native("CompareTo")
	public static overload function compareTo(instance:std.String, to:std.String):Int;

	/**		
		Performs a comparison to another string, return -1 if less, 0 if equal and +1 if greater.
		
		@param instance The string to compare.
		@param to The other string to compare.
		@param caseSensitive
		If `true`, the comparison will be case sensitive.
		
		@returns -1 if less, 0 if equal and +1 if greater.
	**/
	@:native("CompareTo")
	public static overload function compareTo(instance:std.String, to:std.String, caseSensitive:Bool):Int;
	#end

	/**		
		Returns `true` if the string is empty.
	**/
	@:native("Empty")
	public static function empty(instance:std.String):Bool;

	/**		
		Returns `true` if the strings ends
		with the given string `text`.
		
		@param instance The string to check.
		@param text The ending string.
		@returns If the string ends with the given string.
	**/
	@:native("EndsWith")
	public static function endsWith(instance:std.String, text:std.String):Bool;

	@:native("Erase")
	public static function erase(instance:cs.system.text.StringBuilder, pos:Int, chars:Int):Void;

	/**		
		Returns the extension without the leading period character (`.`)
		if the string is a valid file name or path. If the string does not contain
		an extension, returns an empty string instead.
		
		```
		
		GD.Print("/path/to/file.txt".GetExtension())  // "txt"
		GD.Print("file.txt".GetExtension())  // "txt"
		GD.Print("file.sample.txt".GetExtension())  // "txt"
		GD.Print(".txt".GetExtension())  // "txt"
		GD.Print("file.txt.".GetExtension())  // "" (empty string)
		GD.Print("file.txt..".GetExtension())  // "" (empty string)
		GD.Print("txt".GetExtension())  // "" (empty string)
		GD.Print("".GetExtension())  // "" (empty string)
		
		```
		@see `godot.StringExtensions.baseName`@see `godot.StringExtensions.getBaseDir`@see `godot.StringExtensions.getFile`
		@param instance The path to a file.
		@returns The extension of the file or an empty string.
	**/
	@:native("Extension")
	public static function extension(instance:std.String):std.String;

	#if doc_gen
	/**		
		Find the first occurrence of a substring. Optionally, the search starting position can be passed.
		
		@param instance The string that will be searched.
		@param what The substring to find.
		@param from The search starting position.
		@param caseSensitive If `true`, the search is case sensitive.
		@returns The starting position of the substring, or -1 if not found.
	**/
	@:native("Find")
	public static overload function find(instance:std.String, what:std.String, ?from:Int, ?caseSensitive:Bool):Int;
	#else
	/**		
		Find the first occurrence of a substring. Optionally, the search starting position can be passed.
		
		@param instance The string that will be searched.
		@param what The substring to find.
		@param from The search starting position.
		@param caseSensitive If `true`, the search is case sensitive.
		@returns The starting position of the substring, or -1 if not found.
	**/
	@:native("Find")
	public static overload function find(instance:std.String, what:std.String):Int;

	/**		
		Find the first occurrence of a substring. Optionally, the search starting position can be passed.
		
		@param instance The string that will be searched.
		@param what The substring to find.
		@param from The search starting position.
		@param caseSensitive If `true`, the search is case sensitive.
		@returns The starting position of the substring, or -1 if not found.
	**/
	@:native("Find")
	public static overload function find(instance:std.String, what:std.String, from:Int):Int;

	/**		
		Find the first occurrence of a substring. Optionally, the search starting position can be passed.
		
		@param instance The string that will be searched.
		@param what The substring to find.
		@param from The search starting position.
		@param caseSensitive If `true`, the search is case sensitive.
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
	/**		Find the last occurrence of a substring.@see `godot.StringExtensions.find`@see `godot.StringExtensions.find`@see `godot.StringExtensions.findLast`@see `godot.StringExtensions.findN`
		@param instance The string that will be searched.
		@param what The substring to find.
		@param caseSensitive If `true`, the search is case sensitive.
		@returns The starting position of the substring, or -1 if not found.
	**/
	@:native("FindLast")
	public static overload function findLast(instance:std.String, what:std.String, ?caseSensitive:Bool):Int;
	#else
	/**		Find the last occurrence of a substring.@see `godot.StringExtensions.find`@see `godot.StringExtensions.find`@see `godot.StringExtensions.findLast`@see `godot.StringExtensions.findN`
		@param instance The string that will be searched.
		@param what The substring to find.
		@param caseSensitive If `true`, the search is case sensitive.
		@returns The starting position of the substring, or -1 if not found.
	**/
	@:native("FindLast")
	public static overload function findLast(instance:std.String, what:std.String):Int;

	/**		Find the last occurrence of a substring.@see `godot.StringExtensions.find`@see `godot.StringExtensions.find`@see `godot.StringExtensions.findLast`@see `godot.StringExtensions.findN`
		@param instance The string that will be searched.
		@param what The substring to find.
		@param caseSensitive If `true`, the search is case sensitive.
		@returns The starting position of the substring, or -1 if not found.
	**/
	@:native("FindLast")
	public static overload function findLast(instance:std.String, what:std.String, caseSensitive:Bool):Int;
	#end

	#if doc_gen
	/**		Find the last occurrence of a substring specifying the search starting position.@see `godot.StringExtensions.find`@see `godot.StringExtensions.find`@see `godot.StringExtensions.findLast`@see `godot.StringExtensions.findN`
		@param instance The string that will be searched.
		@param what The substring to find.
		@param from The search starting position.
		@param caseSensitive If `true`, the search is case sensitive.
		@returns The starting position of the substring, or -1 if not found.
	**/
	@:native("FindLast")
	public static overload function findLast(instance:std.String, what:std.String, from:Int, ?caseSensitive:Bool):Int;
	#else
	/**		Find the last occurrence of a substring specifying the search starting position.@see `godot.StringExtensions.find`@see `godot.StringExtensions.find`@see `godot.StringExtensions.findLast`@see `godot.StringExtensions.findN`
		@param instance The string that will be searched.
		@param what The substring to find.
		@param from The search starting position.
		@param caseSensitive If `true`, the search is case sensitive.
		@returns The starting position of the substring, or -1 if not found.
	**/
	@:native("FindLast")
	public static overload function findLast(instance:std.String, what:std.String, from:Int):Int;

	/**		Find the last occurrence of a substring specifying the search starting position.@see `godot.StringExtensions.find`@see `godot.StringExtensions.find`@see `godot.StringExtensions.findLast`@see `godot.StringExtensions.findN`
		@param instance The string that will be searched.
		@param what The substring to find.
		@param from The search starting position.
		@param caseSensitive If `true`, the search is case sensitive.
		@returns The starting position of the substring, or -1 if not found.
	**/
	@:native("FindLast")
	public static overload function findLast(instance:std.String, what:std.String, from:Int, caseSensitive:Bool):Int;
	#end

	#if doc_gen
	/**		
		Find the first occurrence of a substring but search as case-insensitive.
		Optionally, the search starting position can be passed.
		@see `godot.StringExtensions.find`@see `godot.StringExtensions.find`@see `godot.StringExtensions.findLast`@see `godot.StringExtensions.findLast`
		@param instance The string that will be searched.
		@param what The substring to find.
		@param from The search starting position.
		@returns The starting position of the substring, or -1 if not found.
	**/
	@:native("FindN")
	public static function findN(instance:std.String, what:std.String, ?from:Int):Int;
	#else
	/**		
		Find the first occurrence of a substring but search as case-insensitive.
		Optionally, the search starting position can be passed.
		@see `godot.StringExtensions.find`@see `godot.StringExtensions.find`@see `godot.StringExtensions.findLast`@see `godot.StringExtensions.findLast`
		@param instance The string that will be searched.
		@param what The substring to find.
		@param from The search starting position.
		@returns The starting position of the substring, or -1 if not found.
	**/
	@:native("FindN")
	public static overload function findN(instance:std.String, what:std.String):Int;

	/**		
		Find the first occurrence of a substring but search as case-insensitive.
		Optionally, the search starting position can be passed.
		@see `godot.StringExtensions.find`@see `godot.StringExtensions.find`@see `godot.StringExtensions.findLast`@see `godot.StringExtensions.findLast`
		@param instance The string that will be searched.
		@param what The substring to find.
		@param from The search starting position.
		@returns The starting position of the substring, or -1 if not found.
	**/
	@:native("FindN")
	public static overload function findN(instance:std.String, what:std.String, from:Int):Int;
	#end

	/**		
		If the string is a path to a file, return the base directory.
		@see `godot.StringExtensions.baseName`@see `godot.StringExtensions.extension`@see `godot.StringExtensions.getFile`
		@param instance The path to a file.
		@returns The base directory.
	**/
	@:native("GetBaseDir")
	public static function getBaseDir(instance:std.String):std.String;

	/**		
		If the string is a path to a file, return the file and ignore the base directory.
		@see `godot.StringExtensions.baseName`@see `godot.StringExtensions.extension`@see `godot.StringExtensions.getBaseDir`
		@param instance The path to a file.
		@returns The file name.
	**/
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
	public static function getStringFromASCII(bytes:HaxeArray<cs.types.UInt8>):std.String;

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
	public static function getStringFromUTF8(bytes:HaxeArray<cs.types.UInt8>):std.String;

	/**		
		Hash the string and return a 32 bits unsigned integer.
		
		@param instance The string to hash.
		@returns The calculated hash of the string.
	**/
	@:native("Hash")
	public static function hash(instance:std.String):UInt;

	/**		
		Returns a hexadecimal representation of this byte array as a string.
		
		@param bytes The byte array to encode.
		@returns The hexadecimal representation of this byte array.
	**/
	@:native("HexEncode")
	public static function hexEncode(bytes:HaxeArray<cs.types.UInt8>):std.String;

	/**		
		Converts a string containing a hexadecimal number into an integer.
		Hexadecimal strings can either be prefixed with `0x` or not,
		and they can also start with a `-` before the optional prefix.
		
		@param instance The string to convert.
		@returns The converted string.
	**/
	@:native("HexToInt")
	public static function hexToInt(instance:std.String):Int;

	/**		
		Inserts a substring at a given position.
		
		@param instance The string to modify.
		@param pos Position at which to insert the substring.
		@param what Substring to insert.
		@returns
		The string with `what` inserted at the given
		position `pos`.
	**/
	@:native("Insert")
	public static function insert(instance:std.String, pos:Int, what:std.String):std.String;

	/**		
		Returns `true` if the string is a path to a file or
		directory and its startign point is explicitly defined. This includes
		`res://`, `user://`, `C:\`, `/`, etc.
		@see `godot.StringExtensions.isRelPath`
		@param instance The string to check.
		@returns If the string is an absolute path.
	**/
	@:native("IsAbsPath")
	public static function isAbsPath(instance:std.String):Bool;

	/**		
		Returns `true` if the string is a path to a file or
		directory and its starting point is implicitly defined within the
		context it is being used. The starting point may refer to the current
		directory (`./`), or the current `godot.Node`.
		@see `godot.StringExtensions.isAbsPath`
		@param instance The string to check.
		@returns If the string is a relative path.
	**/
	@:native("IsRelPath")
	public static function isRelPath(instance:std.String):Bool;

	#if doc_gen
	/**		
		Check whether this string is a subsequence of the given string.
		@see `godot.StringExtensions.isSubsequenceOfI`
		@param instance The subsequence to search.
		@param text The string that contains the subsequence.
		@param caseSensitive If `true`, the check is case sensitive.
		@returns If the string is a subsequence of the given string.
	**/
	@:native("IsSubsequenceOf")
	public static function isSubsequenceOf(instance:std.String, text:std.String, ?caseSensitive:Bool):Bool;
	#else
	/**		
		Check whether this string is a subsequence of the given string.
		@see `godot.StringExtensions.isSubsequenceOfI`
		@param instance The subsequence to search.
		@param text The string that contains the subsequence.
		@param caseSensitive If `true`, the check is case sensitive.
		@returns If the string is a subsequence of the given string.
	**/
	@:native("IsSubsequenceOf")
	public static overload function isSubsequenceOf(instance:std.String, text:std.String):Bool;

	/**		
		Check whether this string is a subsequence of the given string.
		@see `godot.StringExtensions.isSubsequenceOfI`
		@param instance The subsequence to search.
		@param text The string that contains the subsequence.
		@param caseSensitive If `true`, the check is case sensitive.
		@returns If the string is a subsequence of the given string.
	**/
	@:native("IsSubsequenceOf")
	public static overload function isSubsequenceOf(instance:std.String, text:std.String, caseSensitive:Bool):Bool;
	#end

	/**		
		Check whether this string is a subsequence of the given string, ignoring case differences.
		@see `godot.StringExtensions.isSubsequenceOf`
		@param instance The subsequence to search.
		@param text The string that contains the subsequence.
		@returns If the string is a subsequence of the given string.
	**/
	@:native("IsSubsequenceOfI")
	public static function isSubsequenceOfI(instance:std.String, text:std.String):Bool;

	/**		
		Check whether the string contains a valid `float`.
		
		@param instance The string to check.
		@returns If the string contains a valid floating point number.
	**/
	@:native("IsValidFloat")
	public static function isValidFloat(instance:std.String):Bool;

	/**		
		Check whether the string contains a valid color in HTML notation.
		
		@param instance The string to check.
		@returns If the string contains a valid HTML color.
	**/
	@:native("IsValidHtmlColor")
	public static function isValidHtmlColor(instance:std.String):Bool;

	/**		
		Check whether the string is a valid identifier. As is common in
		programming languages, a valid identifier may contain only letters,
		digits and underscores (_) and the first character may not be a digit.
		
		@param instance The string to check.
		@returns If the string contains a valid identifier.
	**/
	@:native("IsValidIdentifier")
	public static function isValidIdentifier(instance:std.String):Bool;

	/**		
		Check whether the string contains a valid integer.
		
		@param instance The string to check.
		@returns If the string contains a valid integer.
	**/
	@:native("IsValidInteger")
	public static function isValidInteger(instance:std.String):Bool;

	/**		
		Check whether the string contains a valid IP address.
		
		@param instance The string to check.
		@returns If the string contains a valid IP address.
	**/
	@:native("IsValidIPAddress")
	public static function isValidIPAddress(instance:std.String):Bool;

	/**		
		Returns a copy of the string with special characters escaped using the JSON standard.
		
		@param instance The string to escape.
		@returns The escaped string.
	**/
	@:native("JSONEscape")
	public static function jSONEscape(instance:std.String):std.String;

	/**		
		Returns an amount of characters from the left of the string.
		@see `godot.StringExtensions.right`
		@param instance The original string.
		@param pos The position in the string where the left side ends.
		@returns The left side of the string from the given position.
	**/
	@:native("Left")
	public static function left(instance:std.String, pos:Int):std.String;

	/**		
		Returns the length of the string in characters.
		
		@param instance The string to check.
		@returns The length of the string.
	**/
	@:native("Length")
	public static function length(instance:std.String):Int;

	/**		
		Returns a copy of the string with characters removed from the left.
		@see `godot.StringExtensions.rStrip`
		@param instance The string to remove characters from.
		@param chars The characters to be removed.
		@returns A copy of the string with characters removed from the left.
	**/
	@:native("LStrip")
	public static function lStrip(instance:std.String, chars:std.String):std.String;

	#if doc_gen
	/**		
		Do a simple case sensitive expression match, using ? and * wildcards
		(see `godot.StringExtensions.exprMatch`).
		@see `godot.StringExtensions.matchN`
		@param instance The string to check.
		@param expr Expression to check.
		@param caseSensitive
		If `true`, the check will be case sensitive.
		
		@returns If the expression has any matches.
	**/
	@:native("Match")
	public static function match(instance:std.String, expr:std.String, ?caseSensitive:Bool):Bool;
	#else
	/**		
		Do a simple case sensitive expression match, using ? and * wildcards
		(see `godot.StringExtensions.exprMatch`).
		@see `godot.StringExtensions.matchN`
		@param instance The string to check.
		@param expr Expression to check.
		@param caseSensitive
		If `true`, the check will be case sensitive.
		
		@returns If the expression has any matches.
	**/
	@:native("Match")
	public static overload function match(instance:std.String, expr:std.String):Bool;

	/**		
		Do a simple case sensitive expression match, using ? and * wildcards
		(see `godot.StringExtensions.exprMatch`).
		@see `godot.StringExtensions.matchN`
		@param instance The string to check.
		@param expr Expression to check.
		@param caseSensitive
		If `true`, the check will be case sensitive.
		
		@returns If the expression has any matches.
	**/
	@:native("Match")
	public static overload function match(instance:std.String, expr:std.String, caseSensitive:Bool):Bool;
	#end

	/**		
		Do a simple case insensitive expression match, using ? and * wildcards
		(see `godot.StringExtensions.exprMatch`).
		@see `godot.StringExtensions.match`
		@param instance The string to check.
		@param expr Expression to check.
		@returns If the expression has any matches.
	**/
	@:native("MatchN")
	public static function matchN(instance:std.String, expr:std.String):Bool;

	/**		
		Returns the MD5 hash of the string as an array of bytes.
		@see `godot.StringExtensions.mD5Text`
		@param instance The string to hash.
		@returns The MD5 hash of the string.
	**/
	public static extern inline function mD5Buffer(instance:std.String):std.Array<cs.types.UInt8> {
		return cs.Lib.array(cs.Syntax.code("MD5Buffer({0})", instance));
	}

	/**		
		Returns the MD5 hash of the string as a string.
		@see `godot.StringExtensions.mD5Buffer`
		@param instance The string to hash.
		@returns The MD5 hash of the string.
	**/
	@:native("MD5Text")
	public static function mD5Text(instance:std.String):std.String;

	/**		
		Perform a case-insensitive comparison to another string, return -1 if less, 0 if equal and +1 if greater.
		@see `godot.StringExtensions.casecmpTo`@see `godot.StringExtensions.compareTo`
		@param instance The string to compare.
		@param to The other string to compare.
		@returns -1 if less, 0 if equal and +1 if greater.
	**/
	@:native("NocasecmpTo")
	public static function nocasecmpTo(instance:std.String, to:std.String):Int;

	/**		
		Returns the character code at position `at`.
		
		@param instance The string to check.
		@param at The position int the string for the character to check.
		@returns The character code.
	**/
	@:native("OrdAt")
	public static function ordAt(instance:std.String, at:Int):Int;

	/**		
		Format a number to have an exact number of `digits`
		after the decimal point.
		@see `godot.StringExtensions.padZeros`
		@param instance The string to pad.
		@param digits Amount of digits after the decimal point.
		@returns The string padded with zeroes.
	**/
	@:native("PadDecimals")
	public static function padDecimals(instance:std.String, digits:Int):std.String;

	/**		
		Format a number to have an exact number of `digits`
		before the decimal point.
		@see `godot.StringExtensions.padDecimals`
		@param instance The string to pad.
		@param digits Amount of digits before the decimal point.
		@returns The string padded with zeroes.
	**/
	@:native("PadZeros")
	public static function padZeros(instance:std.String, digits:Int):std.String;

	/**		
		Decode a percent-encoded string. See `godot.StringExtensions.percentEncode`.
	**/
	@:native("PercentDecode")
	public static function percentDecode(instance:std.String):std.String;

	/**		
		Percent-encode a string. This is meant to encode parameters in a URL
		when sending a HTTP GET request and bodies of form-urlencoded POST request.
		@see `godot.StringExtensions.percentDecode`
	**/
	@:native("PercentEncode")
	public static function percentEncode(instance:std.String):std.String;

	/**		
		If the string is a path, this concatenates `file`
		at the end of the string as a subpath.
		E.g. `"this/is".PlusFile("path") == "this/is/path"`.
		
		@param instance The path that will be concatenated.
		@param file File name to concatenate with the path.
		@returns The concatenated path with the given file name.
	**/
	@:native("PlusFile")
	public static function plusFile(instance:std.String, file:std.String):std.String;

	/**		
		Replace occurrences of a substring for different ones inside the string.
		@see `godot.StringExtensions.replaceN`
		@param instance The string to modify.
		@param what The substring to be replaced in the string.
		@param forwhat The substring that replaces `what`.
		@returns The string with the substring occurrences replaced.
	**/
	@:native("Replace")
	public static function replace(instance:std.String, what:std.String, forwhat:std.String):std.String;

	/**		
		Replace occurrences of a substring for different ones inside the string, but search case-insensitive.
		@see `godot.StringExtensions.replace`
		@param instance The string to modify.
		@param what The substring to be replaced in the string.
		@param forwhat The substring that replaces `what`.
		@returns The string with the substring occurrences replaced.
	**/
	@:native("ReplaceN")
	public static function replaceN(instance:std.String, what:std.String, forwhat:std.String):std.String;

	#if doc_gen
	/**		
		Perform a search for a substring, but start from the end of the string instead of the beginning.
		@see `godot.StringExtensions.rFindN`
		@param instance The string that will be searched.
		@param what The substring to search in the string.
		@param from The position at which to start searching.
		@returns The position at which the substring was found, or -1 if not found.
	**/
	@:native("RFind")
	public static function rFind(instance:std.String, what:std.String, ?from:Int):Int;
	#else
	/**		
		Perform a search for a substring, but start from the end of the string instead of the beginning.
		@see `godot.StringExtensions.rFindN`
		@param instance The string that will be searched.
		@param what The substring to search in the string.
		@param from The position at which to start searching.
		@returns The position at which the substring was found, or -1 if not found.
	**/
	@:native("RFind")
	public static overload function rFind(instance:std.String, what:std.String):Int;

	/**		
		Perform a search for a substring, but start from the end of the string instead of the beginning.
		@see `godot.StringExtensions.rFindN`
		@param instance The string that will be searched.
		@param what The substring to search in the string.
		@param from The position at which to start searching.
		@returns The position at which the substring was found, or -1 if not found.
	**/
	@:native("RFind")
	public static overload function rFind(instance:std.String, what:std.String, from:Int):Int;
	#end

	#if doc_gen
	/**		
		Perform a search for a substring, but start from the end of the string instead of the beginning.
		Also search case-insensitive.
		@see `godot.StringExtensions.rFind`
		@param instance The string that will be searched.
		@param what The substring to search in the string.
		@param from The position at which to start searching.
		@returns The position at which the substring was found, or -1 if not found.
	**/
	@:native("RFindN")
	public static function rFindN(instance:std.String, what:std.String, ?from:Int):Int;
	#else
	/**		
		Perform a search for a substring, but start from the end of the string instead of the beginning.
		Also search case-insensitive.
		@see `godot.StringExtensions.rFind`
		@param instance The string that will be searched.
		@param what The substring to search in the string.
		@param from The position at which to start searching.
		@returns The position at which the substring was found, or -1 if not found.
	**/
	@:native("RFindN")
	public static overload function rFindN(instance:std.String, what:std.String):Int;

	/**		
		Perform a search for a substring, but start from the end of the string instead of the beginning.
		Also search case-insensitive.
		@see `godot.StringExtensions.rFind`
		@param instance The string that will be searched.
		@param what The substring to search in the string.
		@param from The position at which to start searching.
		@returns The position at which the substring was found, or -1 if not found.
	**/
	@:native("RFindN")
	public static overload function rFindN(instance:std.String, what:std.String, from:Int):Int;
	#end

	/**		
		Returns the right side of the string from a given position.
		@see `godot.StringExtensions.left`
		@param instance The original string.
		@param pos The position in the string from which the right side starts.
		@returns The right side of the string from the given position.
	**/
	@:native("Right")
	public static function right(instance:std.String, pos:Int):std.String;

	/**		
		Returns a copy of the string with characters removed from the right.
		@see `godot.StringExtensions.lStrip`
		@param instance The string to remove characters from.
		@param chars The characters to be removed.
		@returns A copy of the string with characters removed from the right.
	**/
	@:native("RStrip")
	public static function rStrip(instance:std.String, chars:std.String):std.String;

	/**		
		Returns the SHA-256 hash of the string as an array of bytes.
		@see `godot.StringExtensions.sHA256Text`
		@param instance The string to hash.
		@returns The SHA-256 hash of the string.
	**/
	public static extern inline function sHA256Buffer(instance:std.String):std.Array<cs.types.UInt8> {
		return cs.Lib.array(cs.Syntax.code("SHA256Buffer({0})", instance));
	}

	/**		
		Returns the SHA-256 hash of the string as a string.
		@see `godot.StringExtensions.sHA256Buffer`
		@param instance The string to hash.
		@returns The SHA-256 hash of the string.
	**/
	@:native("SHA256Text")
	public static function sHA256Text(instance:std.String):std.String;

	/**		
		Returns the similarity index of the text compared to this string.
		1 means totally similar and 0 means totally dissimilar.
		
		@param instance The string to compare.
		@param text The other string to compare.
		@returns The similarity index.
	**/
	@:native("Similarity")
	public static function similarity(instance:std.String, text:std.String):Single;

	/**		
		Returns a simplified canonical path.
	**/
	@:native("SimplifyPath")
	public static function simplifyPath(instance:std.String):std.String;

	#if doc_gen
	/**		
		Split the string by a divisor string, return an array of the substrings.
		Example "One,Two,Three" will return ["One","Two","Three"] if split by ",".
		@see `godot.StringExtensions.splitFloats`
		@param instance The string to split.
		@param divisor The divisor string that splits the string.
		@param allowEmpty
		If `true`, the array may include empty strings.
		
		@returns The array of strings split from the string.
	**/
	public static extern inline function split(instance:std.String, divisor:std.String, ?allowEmpty:Bool):std.Array<std.String> {
		return cs.Lib.array(cs.Syntax.code("Split({0}, {1}, {2})", instance, divisor, allowEmpty));
	}
	#else
	/**		
		Split the string by a divisor string, return an array of the substrings.
		Example "One,Two,Three" will return ["One","Two","Three"] if split by ",".
		@see `godot.StringExtensions.splitFloats`
		@param instance The string to split.
		@param divisor The divisor string that splits the string.
		@param allowEmpty
		If `true`, the array may include empty strings.
		
		@returns The array of strings split from the string.
	**/
	public static overload extern inline function split(instance:std.String, divisor:std.String):std.Array<std.String> {
		return cs.Lib.array(cs.Syntax.code("Split({0}, {1})", instance, divisor));
	}

	/**		
		Split the string by a divisor string, return an array of the substrings.
		Example "One,Two,Three" will return ["One","Two","Three"] if split by ",".
		@see `godot.StringExtensions.splitFloats`
		@param instance The string to split.
		@param divisor The divisor string that splits the string.
		@param allowEmpty
		If `true`, the array may include empty strings.
		
		@returns The array of strings split from the string.
	**/
	public static overload extern inline function split(instance:std.String, divisor:std.String, allowEmpty:Bool):std.Array<std.String> {
		return cs.Lib.array(cs.Syntax.code("Split({0}, {1}, {2})", instance, divisor, allowEmpty));
	}
	#end

	#if doc_gen
	/**		
		Split the string in floats by using a divisor string, return an array of the substrings.
		Example "1,2.5,3" will return [1,2.5,3] if split by ",".
		@see `godot.StringExtensions.split`
		@param instance The string to split.
		@param divisor The divisor string that splits the string.
		@param allowEmpty
		If `true`, the array may include empty floats.
		
		@returns The array of floats split from the string.
	**/
	public static extern inline function splitFloats(instance:std.String, divisor:std.String, ?allowEmpty:Bool):std.Array<Single> {
		return cs.Lib.array(cs.Syntax.code("SplitFloats({0}, {1}, {2})", instance, divisor, allowEmpty));
	}
	#else
	/**		
		Split the string in floats by using a divisor string, return an array of the substrings.
		Example "1,2.5,3" will return [1,2.5,3] if split by ",".
		@see `godot.StringExtensions.split`
		@param instance The string to split.
		@param divisor The divisor string that splits the string.
		@param allowEmpty
		If `true`, the array may include empty floats.
		
		@returns The array of floats split from the string.
	**/
	public static overload extern inline function splitFloats(instance:std.String, divisor:std.String):std.Array<Single> {
		return cs.Lib.array(cs.Syntax.code("SplitFloats({0}, {1})", instance, divisor));
	}

	/**		
		Split the string in floats by using a divisor string, return an array of the substrings.
		Example "1,2.5,3" will return [1,2.5,3] if split by ",".
		@see `godot.StringExtensions.split`
		@param instance The string to split.
		@param divisor The divisor string that splits the string.
		@param allowEmpty
		If `true`, the array may include empty floats.
		
		@returns The array of floats split from the string.
	**/
	public static overload extern inline function splitFloats(instance:std.String, divisor:std.String, allowEmpty:Bool):std.Array<Single> {
		return cs.Lib.array(cs.Syntax.code("SplitFloats({0}, {1}, {2})", instance, divisor, allowEmpty));
	}
	#end

	#if doc_gen
	/**		
		Returns a copy of the string stripped of any non-printable character at the beginning and the end.
		The optional arguments are used to toggle stripping on the left and right edges respectively.
		
		@param instance The string to strip.
		@param left If the left side should be stripped.
		@param right If the right side should be stripped.
		@returns The string stripped of any non-printable characters.
	**/
	@:native("StripEdges")
	public static function stripEdges(instance:std.String, ?left:Bool, ?right:Bool):std.String;
	#else
	/**		
		Returns a copy of the string stripped of any non-printable character at the beginning and the end.
		The optional arguments are used to toggle stripping on the left and right edges respectively.
		
		@param instance The string to strip.
		@param left If the left side should be stripped.
		@param right If the right side should be stripped.
		@returns The string stripped of any non-printable characters.
	**/
	@:native("StripEdges")
	public static overload function stripEdges(instance:std.String):std.String;

	/**		
		Returns a copy of the string stripped of any non-printable character at the beginning and the end.
		The optional arguments are used to toggle stripping on the left and right edges respectively.
		
		@param instance The string to strip.
		@param left If the left side should be stripped.
		@param right If the right side should be stripped.
		@returns The string stripped of any non-printable characters.
	**/
	@:native("StripEdges")
	public static overload function stripEdges(instance:std.String, left:Bool):std.String;

	/**		
		Returns a copy of the string stripped of any non-printable character at the beginning and the end.
		The optional arguments are used to toggle stripping on the left and right edges respectively.
		
		@param instance The string to strip.
		@param left If the left side should be stripped.
		@param right If the right side should be stripped.
		@returns The string stripped of any non-printable characters.
	**/
	@:native("StripEdges")
	public static overload function stripEdges(instance:std.String, left:Bool, right:Bool):std.String;
	#end

	/**		
		Returns part of the string from the position `from`, with length `len`.
		
		@param instance The string to slice.
		@param from The position in the string that the part starts from.
		@param len The length of the returned part.
		@returns
		Part of the string from the position `from`, with length `len`.
	**/
	@:native("Substr")
	public static function substr(instance:std.String, from:Int, len:Int):std.String;

	/**		
		Converts the String (which is a character array) to PoolByteArray (which is an array of bytes).
		The conversion is speeded up in comparison to `godot.StringExtensions.toUTF8` with the assumption
		that all the characters the String contains are only ASCII characters.
		@see `godot.StringExtensions.toUTF8`
		@param instance The string to convert.
		@returns The string as ASCII encoded bytes.
	**/
	public static extern inline function toAscii(instance:std.String):std.Array<cs.types.UInt8> {
		return cs.Lib.array(cs.Syntax.code("ToAscii({0})", instance));
	}

	/**		
		Converts a string, containing a decimal number, into a `float`.
		@see `godot.StringExtensions.toInt`
		@param instance The string to convert.
		@returns The number representation of the string.
	**/
	@:native("ToFloat")
	public static function toFloat(instance:std.String):Single;

	/**		
		Converts a string, containing an integer number, into an `int`.
		@see `godot.StringExtensions.toFloat`
		@param instance The string to convert.
		@returns The number representation of the string.
	**/
	@:native("ToInt")
	public static function toInt(instance:std.String):Int;

	/**		
		Returns the string converted to lowercase.
		@see `godot.StringExtensions.toUpper`
		@param instance The string to convert.
		@returns The string converted to lowercase.
	**/
	@:native("ToLower")
	public static function toLower(instance:std.String):std.String;

	/**		
		Returns the string converted to uppercase.
		@see `godot.StringExtensions.toLower`
		@param instance The string to convert.
		@returns The string converted to uppercase.
	**/
	@:native("ToUpper")
	public static function toUpper(instance:std.String):std.String;

	/**		
		Converts the String (which is an array of characters) to PoolByteArray (which is an array of bytes).
		The conversion is a bit slower than `godot.StringExtensions.toAscii`, but supports all UTF-8 characters.
		Therefore, you should prefer this function over `godot.StringExtensions.toAscii`.
		@see `godot.StringExtensions.toAscii`
		@param instance The string to convert.
		@returns The string as UTF-8 encoded bytes.
	**/
	public static extern inline function toUTF8(instance:std.String):std.Array<cs.types.UInt8> {
		return cs.Lib.array(cs.Syntax.code("ToUTF8({0})", instance));
	}

	/**		
		Returns a copy of the string with special characters escaped using the XML standard.
		@see `godot.StringExtensions.xMLUnescape`
		@param instance The string to escape.
		@returns The escaped string.
	**/
	@:native("XMLEscape")
	public static function xMLEscape(instance:std.String):std.String;

	/**		
		Returns a copy of the string with escaped characters replaced by their meanings
		according to the XML standard.
		@see `godot.StringExtensions.xMLEscape`
		@param instance The string to unescape.
		@returns The unescaped string.
	**/
	@:native("XMLUnescape")
	public static function xMLUnescape(instance:std.String):std.String;
}
