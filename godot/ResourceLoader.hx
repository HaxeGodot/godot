// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Singleton used to load resource files from the filesystem.

It uses the many `godot.ResourceFormatLoader` classes registered in the engine (either built-in or from a plugin) to load files into memory and convert them to a format that can be used by the engine.
**/
@:libType
@:csNative
@:native("Godot.ResourceLoader")
@:autoBuild(godot.Godot.buildUserClass())
extern class ResourceLoader {
	@:native("Singleton") @:readOnly
	public static var SINGLETON(default, never):godot.Object;

	#if doc_gen
	/**		
		Starts loading a resource interactively. The returned `godot.ResourceInteractiveLoader` object allows to load with high granularity, calling its `godot.ResourceInteractiveLoader.poll` method successively to load chunks.
		
		An optional `type_hint` can be used to further specify the `godot.Resource` type that should be handled by the `godot.ResourceFormatLoader`. Anything that inherits from `godot.Resource` can be used as a type hint, for example `godot.Image`.
	**/
	@:native("LoadInteractive")
	public static function loadInteractive(path:std.String, ?typeHint:std.String):godot.ResourceInteractiveLoader;
	#else
	/**		
		Starts loading a resource interactively. The returned `godot.ResourceInteractiveLoader` object allows to load with high granularity, calling its `godot.ResourceInteractiveLoader.poll` method successively to load chunks.
		
		An optional `type_hint` can be used to further specify the `godot.Resource` type that should be handled by the `godot.ResourceFormatLoader`. Anything that inherits from `godot.Resource` can be used as a type hint, for example `godot.Image`.
	**/
	@:native("LoadInteractive")
	public static overload function loadInteractive(path:std.String):godot.ResourceInteractiveLoader;

	/**		
		Starts loading a resource interactively. The returned `godot.ResourceInteractiveLoader` object allows to load with high granularity, calling its `godot.ResourceInteractiveLoader.poll` method successively to load chunks.
		
		An optional `type_hint` can be used to further specify the `godot.Resource` type that should be handled by the `godot.ResourceFormatLoader`. Anything that inherits from `godot.Resource` can be used as a type hint, for example `godot.Image`.
	**/
	@:native("LoadInteractive")
	public static overload function loadInteractive(path:std.String, typeHint:std.String):godot.ResourceInteractiveLoader;
	#end

	#if doc_gen
	/**		
		Loads a resource at the given `path`, caching the result for further access.
		
		The registered `godot.ResourceFormatLoader`s are queried sequentially to find the first one which can handle the file's extension, and then attempt loading. If loading fails, the remaining ResourceFormatLoaders are also attempted.
		
		An optional `type_hint` can be used to further specify the `godot.Resource` type that should be handled by the `godot.ResourceFormatLoader`. Anything that inherits from `godot.Resource` can be used as a type hint, for example `godot.Image`.
		
		If `no_cache` is `true`, the resource cache will be bypassed and the resource will be loaded anew. Otherwise, the cached resource will be returned if it exists.
		
		Returns an empty resource if no `godot.ResourceFormatLoader` could handle the file.
		
		GDScript has a simplified `@GDScript.load` built-in method which can be used in most situations, leaving the use of `godot.ResourceLoader` for more advanced scenarios.
	**/
	@:native("Load")
	public static function load(path:std.String, ?typeHint:std.String, ?noCache:Bool):godot.Resource;
	#else
	/**		
		Loads a resource at the given `path`, caching the result for further access.
		
		The registered `godot.ResourceFormatLoader`s are queried sequentially to find the first one which can handle the file's extension, and then attempt loading. If loading fails, the remaining ResourceFormatLoaders are also attempted.
		
		An optional `type_hint` can be used to further specify the `godot.Resource` type that should be handled by the `godot.ResourceFormatLoader`. Anything that inherits from `godot.Resource` can be used as a type hint, for example `godot.Image`.
		
		If `no_cache` is `true`, the resource cache will be bypassed and the resource will be loaded anew. Otherwise, the cached resource will be returned if it exists.
		
		Returns an empty resource if no `godot.ResourceFormatLoader` could handle the file.
		
		GDScript has a simplified `@GDScript.load` built-in method which can be used in most situations, leaving the use of `godot.ResourceLoader` for more advanced scenarios.
	**/
	@:native("Load")
	public static overload function load(path:std.String):godot.Resource;

	/**		
		Loads a resource at the given `path`, caching the result for further access.
		
		The registered `godot.ResourceFormatLoader`s are queried sequentially to find the first one which can handle the file's extension, and then attempt loading. If loading fails, the remaining ResourceFormatLoaders are also attempted.
		
		An optional `type_hint` can be used to further specify the `godot.Resource` type that should be handled by the `godot.ResourceFormatLoader`. Anything that inherits from `godot.Resource` can be used as a type hint, for example `godot.Image`.
		
		If `no_cache` is `true`, the resource cache will be bypassed and the resource will be loaded anew. Otherwise, the cached resource will be returned if it exists.
		
		Returns an empty resource if no `godot.ResourceFormatLoader` could handle the file.
		
		GDScript has a simplified `@GDScript.load` built-in method which can be used in most situations, leaving the use of `godot.ResourceLoader` for more advanced scenarios.
	**/
	@:native("Load")
	public static overload function load(path:std.String, typeHint:std.String):godot.Resource;

	/**		
		Loads a resource at the given `path`, caching the result for further access.
		
		The registered `godot.ResourceFormatLoader`s are queried sequentially to find the first one which can handle the file's extension, and then attempt loading. If loading fails, the remaining ResourceFormatLoaders are also attempted.
		
		An optional `type_hint` can be used to further specify the `godot.Resource` type that should be handled by the `godot.ResourceFormatLoader`. Anything that inherits from `godot.Resource` can be used as a type hint, for example `godot.Image`.
		
		If `no_cache` is `true`, the resource cache will be bypassed and the resource will be loaded anew. Otherwise, the cached resource will be returned if it exists.
		
		Returns an empty resource if no `godot.ResourceFormatLoader` could handle the file.
		
		GDScript has a simplified `@GDScript.load` built-in method which can be used in most situations, leaving the use of `godot.ResourceLoader` for more advanced scenarios.
	**/
	@:native("Load")
	public static overload function load(path:std.String, typeHint:std.String, noCache:Bool):godot.Resource;
	#end

	/**		
		Returns the list of recognized extensions for a resource type.
	**/
	public static extern inline function getRecognizedExtensionsForType(type:std.String):std.Array<std.String> {
		return cs.Lib.array(cs.Syntax.code("GetRecognizedExtensionsForType({0})", type));
	}

	/**		
		Changes the behavior on missing sub-resources. The default behavior is to abort loading.
	**/
	@:native("SetAbortOnMissingResources")
	public static function setAbortOnMissingResources(abort:Bool):Void;

	/**		
		Returns the dependencies for the resource at the given `path`.
	**/
	public static extern inline function getDependencies(path:std.String):std.Array<std.String> {
		return cs.Lib.array(cs.Syntax.code("GetDependencies({0})", path));
	}

	/**		
		Returns whether a cached resource is available for the given `path`.
		
		Once a resource has been loaded by the engine, it is cached in memory for faster access, and future calls to the `godot.ResourceLoader.load` or `godot.ResourceLoader.loadInteractive` methods will use the cached version. The cached resource can be overridden by using `godot.Resource.takeOverPath` on a new resource for that same path.
	**/
	@:native("HasCached")
	public static function hasCached(path:std.String):Bool;

	#if doc_gen
	/**		
		Returns whether a recognized resource exists for the given `path`.
		
		An optional `type_hint` can be used to further specify the `godot.Resource` type that should be handled by the `godot.ResourceFormatLoader`.
	**/
	@:native("Exists")
	public static function exists(path:std.String, ?typeHint:std.String):Bool;
	#else
	/**		
		Returns whether a recognized resource exists for the given `path`.
		
		An optional `type_hint` can be used to further specify the `godot.Resource` type that should be handled by the `godot.ResourceFormatLoader`.
	**/
	@:native("Exists")
	public static overload function exists(path:std.String):Bool;

	/**		
		Returns whether a recognized resource exists for the given `path`.
		
		An optional `type_hint` can be used to further specify the `godot.Resource` type that should be handled by the `godot.ResourceFormatLoader`.
	**/
	@:native("Exists")
	public static overload function exists(path:std.String, typeHint:std.String):Bool;
	#end

	/**		
		Deprecated method. Use `godot.ResourceLoader.hasCached` or `godot.ResourceLoader.exists` instead.
	**/
	@:native("Has")
	public static function has(path:std.String):Bool;
}
