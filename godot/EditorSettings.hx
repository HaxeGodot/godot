// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Object that holds the project-independent editor settings. These settings are generally visible in the Editor &gt; Editor Settings menu.

Property names use slash delimiters to distinguish sections. Setting values can be of any `Variant` type. It's recommended to use `snake_case` for editor settings to be consistent with the Godot editor itself.

Accessing the settings can be done using the following methods, such as:

```

# `settings.set("some/property", value)` also works as this class overrides `_set()` internally.
settings.set_setting("some/property",value)

# `settings.get("some/property", value)` also works as this class overrides `_get()` internally.
settings.get_setting("some/property")

var list_of_settings = settings.get_property_list()

```

Note: This class shouldn't be instantiated directly. Instead, access the singleton using `godot.EditorInterface.getEditorSettings`.
**/
@:libType
@:csNative
@:native("Godot.EditorSettings")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class EditorSettings extends godot.Resource {
	/**
		`settings_changed` signal.
	**/
	public var onSettingsChanged(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onSettingsChanged():Signal<Void->Void> {
		return new Signal(this, "settings_changed", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**		
		Emitted after any editor setting has changed. It's used by various editor plugins to update their visuals on theme changes or logic on configuration changes.
	**/
	@:native("NotificationEditorSettingsChanged")
	public static var NOTIFICATION_EDITOR_SETTINGS_CHANGED(default, never):Int;

	/**		
		Returns `true` if the setting specified by `name` exists, `false` otherwise.
	**/
	@:native("HasSetting")
	public function hasSetting(name:std.String):Bool;

	/**		
		Sets the `value` of the setting specified by `name`. This is equivalent to using `godot.Object.set` on the EditorSettings instance.
	**/
	@:native("SetSetting")
	public function setSetting(name:std.String, value:Dynamic):Void;

	/**		
		Returns the value of the setting specified by `name`. This is equivalent to using `godot.Object.get` on the EditorSettings instance.
	**/
	@:native("GetSetting")
	public function getSetting(name:std.String):Dynamic;

	/**		
		Erases the setting whose name is specified by `property`.
	**/
	@:native("Erase")
	public function erase(property:std.String):Void;

	/**		
		Sets the initial value of the setting specified by `name` to `value`. This is used to provide a value for the Revert button in the Editor Settings. If `update_current` is true, the current value of the setting will be set to `value` as well.
	**/
	@:native("SetInitialValue")
	public function setInitialValue(name:std.String, value:Dynamic, updateCurrent:Bool):Void;

	/**		
		Returns `true` if the setting specified by `name` can have its value reverted to the default value, `false` otherwise. When this method returns `true`, a Revert button will display next to the setting in the Editor Settings.
	**/
	@:native("PropertyCanRevert")
	public function propertyCanRevert(name:std.String):Bool;

	/**		
		Returns the default value of the setting specified by `name`. This is the value that would be applied when clicking the Revert button in the Editor Settings.
	**/
	@:native("PropertyGetRevert")
	public function propertyGetRevert(name:std.String):Dynamic;

	/**		
		Adds a custom property info to a property. The dictionary must contain:
		
		- `name`: `String` (the name of the property)
		
		- `type`: `Int` (see `godot.Variant_Type`)
		
		- optionally `hint`: `Int` (see `godot.PropertyHint`) and `hint_string`: `String`
		
		Example:
		
		```
		
		editor_settings.set("category/property_name", 0)
		
		var property_info = {
		"name": "category/property_name",
		"type": TYPE_INT,
		"hint": PROPERTY_HINT_ENUM,
		"hint_string": "one,two,three"
		}
		
		editor_settings.add_property_info(property_info)
		
		```
	**/
	@:native("AddPropertyInfo")
	public function addPropertyInfo(info:godot.collections.Dictionary):Void;

	/**		
		Gets the global settings path for the engine. Inside this path, you can find some standard paths such as:
		
		`settings/tmp` - Used for temporary storage of files
		
		`settings/templates` - Where export templates are located
	**/
	@:native("GetSettingsDir")
	public function getSettingsDir():std.String;

	/**		
		Returns the project-specific settings path. Projects all have a unique subdirectory inside the settings path where project-specific settings are saved.
	**/
	@:native("GetProjectSettingsDir")
	public function getProjectSettingsDir():std.String;

	/**		
		Sets project-specific metadata with the `section`, `key` and `data` specified. This metadata is stored outside the project folder and therefore won't be checked into version control. See also `godot.EditorSettings.getProjectMetadata`.
	**/
	@:native("SetProjectMetadata")
	public function setProjectMetadata(section:std.String, key:std.String, data:Dynamic):Void;

	#if doc_gen
	/**		
		Returns project-specific metadata for the `section` and `key` specified. If the metadata doesn't exist, `default` will be returned instead. See also `godot.EditorSettings.setProjectMetadata`.
	**/
	@:native("GetProjectMetadata")
	public function getProjectMetadata(section:std.String, key:std.String, ?default_:Dynamic):Dynamic;
	#else
	/**		
		Returns project-specific metadata for the `section` and `key` specified. If the metadata doesn't exist, `default` will be returned instead. See also `godot.EditorSettings.setProjectMetadata`.
	**/
	@:native("GetProjectMetadata")
	public overload function getProjectMetadata(section:std.String, key:std.String):Dynamic;

	/**		
		Returns project-specific metadata for the `section` and `key` specified. If the metadata doesn't exist, `default` will be returned instead. See also `godot.EditorSettings.setProjectMetadata`.
	**/
	@:native("GetProjectMetadata")
	public overload function getProjectMetadata(section:std.String, key:std.String, default_:Dynamic):Dynamic;
	#end

	/**		
		Sets the list of favorite files and directories for this project.
	**/
	@:native("SetFavorites")
	public function setFavorites(dirs:HaxeArray<std.String>):Void;

	/**		
		Returns the list of favorite files and directories for this project.
	**/
	public extern inline function getFavorites():std.Array<std.String> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetFavorites()", this));
	}

	/**		
		Sets the list of recently visited folders in the file dialog for this project.
	**/
	@:native("SetRecentDirs")
	public function setRecentDirs(dirs:HaxeArray<std.String>):Void;

	/**		
		Returns the list of recently visited folders in the file dialog for this project.
	**/
	public extern inline function getRecentDirs():std.Array<std.String> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetRecentDirs()", this));
	}
}
