// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Contains global variables accessible from everywhere. Use `godot.ProjectSettings.getSetting`, `godot.ProjectSettings.setSetting` or `godot.ProjectSettings.hasSetting` to access them. Variables stored in `project.godot` are also loaded into ProjectSettings, making this object very useful for reading custom game configuration options.

When naming a Project Settings property, use the full path to the setting including the category. For example, `"application/config/name"` for the project name. Category and property names can be viewed in the Project Settings dialog.

Overriding: Any project setting can be overridden by creating a file named `override.cfg` in the project's root directory. This can also be used in exported projects by placing this file in the same directory as the project binary.
**/
@:libType
@:csNative
@:native("Godot.ProjectSettings")
@:autoBuild(godot.Godot.buildUserClass())
extern class ProjectSettings {
	@:native("Singleton")
	public static var SINGLETON(default, never):godot.Object;

	/**		
		Returns `true` if a configuration value is present.
	**/
	@:native("HasSetting")
	public static function hasSetting(name:std.String):Bool;

	/**		
		Sets the value of a setting.
		
		Example:
		
		```
		
		ProjectSettings.set_setting("application/config/name", "Example")
		
		```
	**/
	@:native("SetSetting")
	public static function setSetting(name:std.String, value:Dynamic):Void;

	/**		
		Returns the value of a setting.
		
		Example:
		
		```
		
		print(ProjectSettings.get_setting("application/config/name"))
		
		```
	**/
	@:native("GetSetting")
	public static function getSetting(name:std.String):Dynamic;

	/**		
		Sets the order of a configuration value (influences when saved to the config file).
	**/
	@:native("SetOrder")
	public static function setOrder(name:std.String, position:Int):Void;

	/**		
		Returns the order of a configuration value (influences when saved to the config file).
	**/
	@:native("GetOrder")
	public static function getOrder(name:std.String):Int;

	/**		
		Sets the specified property's initial value. This is the value the property reverts to.
	**/
	@:native("SetInitialValue")
	public static function setInitialValue(name:std.String, value:Dynamic):Void;

	/**		
		Adds a custom property info to a property. The dictionary must contain:
		
		- `name`: `String` (the property's name)
		
		- `type`: `Int` (see `godot.Variant_Type`)
		
		- optionally `hint`: `Int` (see `godot.PropertyHint`) and `hint_string`: `String`
		
		Example:
		
		```
		
		ProjectSettings.set("category/property_name", 0)
		
		var property_info = {
		"name": "category/property_name",
		"type": TYPE_INT,
		"hint": PROPERTY_HINT_ENUM,
		"hint_string": "one,two,three"
		}
		
		ProjectSettings.add_property_info(property_info)
		
		```
	**/
	@:native("AddPropertyInfo")
	public static function addPropertyInfo(hint:godot.collections.Dictionary):Void;

	/**		
		Clears the whole configuration (not recommended, may break things).
	**/
	@:native("Clear")
	public static function clear(name:std.String):Void;

	/**		
		Convert a path to a localized path (`res://` path).
	**/
	@:native("LocalizePath")
	public static function localizePath(path:std.String):std.String;

	/**		
		Converts a localized path (`res://`) to a full native OS path.
	**/
	@:native("GlobalizePath")
	public static function globalizePath(path:std.String):std.String;

	/**		
		Saves the configuration to the `project.godot` file.
	**/
	@:native("Save")
	public static function save():godot.Error;

	#if doc_gen
	/**		
		Loads the contents of the .pck or .zip file specified by `pack` into the resource filesystem (`res://`). Returns `true` on success.
		
		Note: If a file from `pack` shares the same path as a file already in the resource filesystem, any attempts to load that file will use the file from `pack` unless `replace_files` is set to `false`.
	**/
	@:native("LoadResourcePack")
	public static function loadResourcePack(pack:std.String, ?replaceFiles:Bool):Bool;
	#else
	/**		
		Loads the contents of the .pck or .zip file specified by `pack` into the resource filesystem (`res://`). Returns `true` on success.
		
		Note: If a file from `pack` shares the same path as a file already in the resource filesystem, any attempts to load that file will use the file from `pack` unless `replace_files` is set to `false`.
	**/
	@:native("LoadResourcePack")
	public static overload function loadResourcePack(pack:std.String):Bool;

	/**		
		Loads the contents of the .pck or .zip file specified by `pack` into the resource filesystem (`res://`). Returns `true` on success.
		
		Note: If a file from `pack` shares the same path as a file already in the resource filesystem, any attempts to load that file will use the file from `pack` unless `replace_files` is set to `false`.
	**/
	@:native("LoadResourcePack")
	public static overload function loadResourcePack(pack:std.String, replaceFiles:Bool):Bool;
	#end

	/**		
		Returns `true` if the specified property exists and its initial value differs from the current value.
	**/
	@:native("PropertyCanRevert")
	public static function propertyCanRevert(name:std.String):Bool;

	/**		
		Returns the specified property's initial value. Returns `null` if the property does not exist.
	**/
	@:native("PropertyGetRevert")
	public static function propertyGetRevert(name:std.String):Dynamic;

	/**		
		Saves the configuration to a custom file. The file extension must be `.godot` (to save in text-based `godot.ConfigFile` format) or `.binary` (to save in binary format).
	**/
	@:native("SaveCustom")
	public static function saveCustom(file:std.String):godot.Error;
}
