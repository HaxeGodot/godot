// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Singleton for saving Godot-specific resource types to the filesystem.

It uses the many `godot.ResourceFormatSaver` classes registered in the engine (either built-in or from a plugin) to save engine-specific resource data to text-based (e.g. `.tres` or `.tscn`) or binary files (e.g. `.res` or `.scn`).
**/
@:libType
@:csNative
@:native("Godot.ResourceSaver")
@:autoBuild(godot.Godot.buildUserClass())
extern class ResourceSaver {
	@:native("Singleton") @:readOnly
	public static var SINGLETON(default, never):godot.Object;

	#if doc_gen
	/**		
		Saves a resource to disk to the given path, using a `godot.ResourceFormatSaver` that recognizes the resource object.
		
		The `flags` bitmask can be specified to customize the save behavior.
		
		Returns `OK` on success.
	**/
	@:native("Save")
	public static function save(path:std.String, resource:godot.Resource, ?flags:godot.ResourceSaver_SaverFlags):godot.Error;
	#else
	/**		
		Saves a resource to disk to the given path, using a `godot.ResourceFormatSaver` that recognizes the resource object.
		
		The `flags` bitmask can be specified to customize the save behavior.
		
		Returns `OK` on success.
	**/
	@:native("Save")
	public static overload function save(path:std.String, resource:godot.Resource):godot.Error;

	/**		
		Saves a resource to disk to the given path, using a `godot.ResourceFormatSaver` that recognizes the resource object.
		
		The `flags` bitmask can be specified to customize the save behavior.
		
		Returns `OK` on success.
	**/
	@:native("Save")
	public static overload function save(path:std.String, resource:godot.Resource, flags:godot.ResourceSaver_SaverFlags):godot.Error;
	#end

	/**		
		Returns the list of extensions available for saving a resource of a given type.
	**/
	public static extern inline function getRecognizedExtensions(type:godot.Resource):std.Array<std.String> {
		return cs.Lib.array(cs.Syntax.code("GetRecognizedExtensions({0})", type));
	}
}
