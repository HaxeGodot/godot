// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A GDNative library can implement `godot.NativeScript`s, global functions to call with the `godot.GDNative` class, or low-level engine extensions through interfaces such as `godot.ARVRInterfaceGDNative`. The library must be compiled for each platform and architecture that the project will run on.
**/
@:libType
@:csNative
@:native("Godot.GDNativeLibrary")
@:autoBuild(godot.Godot.buildUserClass())
extern class GDNativeLibrary extends godot.Resource {
	/**		
		If `true`, the editor will temporarily unload the library whenever the user switches away from the editor window, allowing the user to recompile the library without restarting Godot.
		
		Note: If the library defines tool scripts that run inside the editor, `reloadable` must be `false`. Otherwise, the editor will attempt to unload the tool scripts while they're in use and crash.
	**/
	@:native("Reloadable")
	public var reloadable:Bool;

	/**		
		The prefix this library's entry point functions begin with. For example, a GDNativeLibrary would declare its `gdnative_init` function as `godot_gdnative_init` by default.
		
		On platforms that require statically linking libraries (currently only iOS), each library must have a different `symbol_prefix`.
	**/
	@:native("SymbolPrefix")
	public var symbolPrefix:std.String;

	/**		
		If `true`, Godot loads the library at startup rather than the first time a script uses the library, calling `{prefix}gdnative_singleton` after initializing the library (where `{prefix}` is the value of `godot.GDNativeLibrary.symbolPrefix`). The library remains loaded as long as Godot is running.
		
		Note: A singleton library cannot be `godot.GDNativeLibrary.reloadable`.
	**/
	@:native("Singleton")
	public var singleton:Bool;

	/**		
		If `true`, Godot loads only one copy of the library and each script that references the library will share static data like static or global variables.
		
		If `false`, Godot loads a separate copy of the library into memory for each script that references it.
	**/
	@:native("LoadOnce")
	public var loadOnce:Bool;

	/**		
		This resource in INI-style `godot.ConfigFile` format, as in `.gdnlib` files.
	**/
	@:native("ConfigFile")
	public var configFile:godot.ConfigFile;

	@:native("new")
	public function new():Void;

	@:native("GetConfigFile")
	public function getConfigFile():godot.ConfigFile;

	@:native("SetConfigFile")
	public function setConfigFile(configFile:godot.ConfigFile):Void;

	/**		
		Returns the path to the dynamic library file for the current platform and architecture.
	**/
	@:native("GetCurrentLibraryPath")
	public function getCurrentLibraryPath():std.String;

	/**		
		Returns paths to all dependency libraries for the current platform and architecture.
	**/
	public extern inline function getCurrentDependencies():std.Array<std.String> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetCurrentDependencies()", this));
	}

	@:native("ShouldLoadOnce")
	public function shouldLoadOnce():Bool;

	@:native("IsSingleton")
	public function isSingleton():Bool;

	@:native("GetSymbolPrefix")
	public function getSymbolPrefix():std.String;

	@:native("IsReloadable")
	public function isReloadable():Bool;

	@:native("SetLoadOnce")
	public function setLoadOnce(loadOnce:Bool):Void;

	@:native("SetSingleton")
	public function setSingleton(singleton:Bool):Void;

	@:native("SetSymbolPrefix")
	public function setSymbolPrefix(symbolPrefix:std.String):Void;

	@:native("SetReloadable")
	public function setReloadable(reloadable:Bool):Void;
}
