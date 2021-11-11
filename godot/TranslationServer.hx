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
		Sets the locale of the project. The `locale` string will be standardized to match known locales (e.g. `en-US` would be matched to `en_US`).
		
		If translations have been loaded beforehand for the new locale, they will be applied.
	**/
	@:native("SetLocale")
	public static function setLocale(locale:std.String):Void;

	/**		
		Returns the current locale of the project.
		
		See also `godot.OS.getLocale` and `godot.OS.getLocaleLanguage` to query the locale of the user system.
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
		Returns an array of all loaded locales of the project.
	**/
	@:native("GetLoadedLocales")
	public static function getLoadedLocales():godot.collections.Array;
}
