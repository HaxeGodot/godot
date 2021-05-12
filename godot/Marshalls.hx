// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Provides data transformation and encoding utility functions.
**/
@:libType
@:csNative
@:native("Godot.Marshalls")
@:autoBuild(godot.Godot.buildUserClass())
extern class Marshalls {
	@:native("Singleton")
	public static var SINGLETON(default, never):godot.Object;

	#if doc_gen
	/**		
		Returns a Base64-encoded string of the `Variant` `variant`. If `full_objects` is `true`, encoding objects is allowed (and can potentially include code).
	**/
	@:native("VariantToBase64")
	public static function variantToBase64(variant:Dynamic, ?fullObjects:Bool):std.String;
	#else
	/**		
		Returns a Base64-encoded string of the `Variant` `variant`. If `full_objects` is `true`, encoding objects is allowed (and can potentially include code).
	**/
	@:native("VariantToBase64")
	public static overload function variantToBase64(variant:Dynamic):std.String;

	/**		
		Returns a Base64-encoded string of the `Variant` `variant`. If `full_objects` is `true`, encoding objects is allowed (and can potentially include code).
	**/
	@:native("VariantToBase64")
	public static overload function variantToBase64(variant:Dynamic, fullObjects:Bool):std.String;
	#end

	#if doc_gen
	/**		
		Returns a decoded `Variant` corresponding to the Base64-encoded string `base64_str`. If `allow_objects` is `true`, decoding objects is allowed.
		
		Warning: Deserialized objects can contain code which gets executed. Do not use this option if the serialized object comes from untrusted sources to avoid potential security threats such as remote code execution.
	**/
	@:native("Base64ToVariant")
	public static function base64ToVariant(base64Str:std.String, ?allowObjects:Bool):Dynamic;
	#else
	/**		
		Returns a decoded `Variant` corresponding to the Base64-encoded string `base64_str`. If `allow_objects` is `true`, decoding objects is allowed.
		
		Warning: Deserialized objects can contain code which gets executed. Do not use this option if the serialized object comes from untrusted sources to avoid potential security threats such as remote code execution.
	**/
	@:native("Base64ToVariant")
	public static overload function base64ToVariant(base64Str:std.String):Dynamic;

	/**		
		Returns a decoded `Variant` corresponding to the Base64-encoded string `base64_str`. If `allow_objects` is `true`, decoding objects is allowed.
		
		Warning: Deserialized objects can contain code which gets executed. Do not use this option if the serialized object comes from untrusted sources to avoid potential security threats such as remote code execution.
	**/
	@:native("Base64ToVariant")
	public static overload function base64ToVariant(base64Str:std.String, allowObjects:Bool):Dynamic;
	#end

	/**		
		Returns a Base64-encoded string of a given `cs.UInt8`.
	**/
	@:native("RawToBase64")
	public static function rawToBase64(array:HaxeArray<cs.types.UInt8>):std.String;

	/**		
		Returns a decoded `cs.UInt8` corresponding to the Base64-encoded string `base64_str`.
	**/
	public static extern inline function base64ToRaw(base64Str:std.String):std.Array<cs.types.UInt8> {
		return cs.Lib.array(cs.Syntax.code("Base64ToRaw({0})", base64Str));
	}

	/**		
		Returns a Base64-encoded string of the UTF-8 string `utf8_str`.
	**/
	@:native("Utf8ToBase64")
	public static function utf8ToBase64(utf8Str:std.String):std.String;

	/**		
		Returns a decoded string corresponding to the Base64-encoded string `base64_str`.
	**/
	@:native("Base64ToUtf8")
	public static function base64ToUtf8(base64Str:std.String):std.String;
}
