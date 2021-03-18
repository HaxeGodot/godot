// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Server that manages all translations. Translations can be set to it and removed from it.
**/
@:libType
@:csNative
@:native("Godot.TranslationServer")
@:autoBuild(godot.Godot.buildUserClass())
extern class TranslationServer {
	@:native("Singleton")
	public static var SINGLETON(default, never):godot.Object;

	/**		
		Sets the locale of the game.
	**/
	@:native("SetLocale")
	public static function setLocale(locale:std.String):Void;

	/**		
		Returns the current locale of the game.
	**/
	@:native("GetLocale")
	public static function getLocale():std.String;

	/**		
		Returns a locale's language and its variant (e.g. `"en_US"` would return `"English (United States)"`).
	**/
	@:native("GetLocaleName")
	public static function getLocaleName(locale:std.String):std.String;

	/**		
		Returns the current locale's translation for the given message (key).
	**/
	@:native("Translate")
	public static function translate(message:std.String):std.String;

	/**		
		Adds a `godot.Translation` resource.
	**/
	@:native("AddTranslation")
	public static function addTranslation(translation:godot.Translation):Void;

	/**		
		Removes the given translation from the server.
	**/
	@:native("RemoveTranslation")
	public static function removeTranslation(translation:godot.Translation):Void;

	/**		
		Clears the server from all translations.
	**/
	@:native("Clear")
	public static function clear():Void;

	/**		
		Returns an Array of all loaded locales of the game.
	**/
	@:native("GetLoadedLocales")
	public static function getLoadedLocales():godot.collections.Array;
}
