// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Godot loads resources in the editor or in exported games using ResourceFormatLoaders. They are queried automatically via the `godot.ResourceLoader` singleton, or when a resource with internal dependencies is loaded. Each file type may load as a different resource type, so multiple ResourceFormatLoaders are registered in the engine.

Extending this class allows you to define your own loader. Be sure to respect the documented return types and values. You should give it a global class name with `class_name` for it to be registered. Like built-in ResourceFormatLoaders, it will be called automatically when loading resources of its handled type(s). You may also implement a `godot.ResourceFormatSaver`.

Note: You can also extend `Godot.EditorImportPlugin` if the resource type you need exists but Godot is unable to load its format. Choosing one way over another depends on if the format is suitable or not for the final exported game. For example, it's better to import `.png` textures as `.stex` (`godot.StreamTexture`) first, so they can be loaded with better efficiency on the graphics card.
**/
@:libType
@:csNative
@:native("Godot.ResourceFormatLoader")
@:autoBuild(godot.Godot.buildUserClass())
extern class ResourceFormatLoader extends godot.Reference {
	@:native("new")
	public function new():Void;

	/**		
		If implemented, gets the dependencies of a given resource. If `add_types` is `true`, paths should be appended `::TypeName`, where `TypeName` is the class name of the dependency.
		
		Note: Custom resource types defined by scripts aren't known by the `godot.ClassDB`, so you might just return `"Resource"` for them.
	**/
	@:native("GetDependencies")
	public function getDependencies(path:std.String, addTypes:std.String):Void;

	/**		
		Gets the list of extensions for files this loader is able to read.
	**/
	public extern inline function getRecognizedExtensions():std.Array<std.String> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetRecognizedExtensions()", this));
	}

	/**		
		Gets the class name of the resource associated with the given path. If the loader cannot handle it, it should return `""`.
		
		Note: Custom resource types defined by scripts aren't known by the `godot.ClassDB`, so you might just return `"Resource"` for them.
	**/
	@:native("GetResourceType")
	public function getResourceType(path:std.String):std.String;

	/**		
		Tells which resource class this loader can load.
		
		Note: Custom resource types defined by scripts aren't known by the `godot.ClassDB`, so you might just handle `"Resource"` for them.
	**/
	@:native("HandlesType")
	public function handlesType(typename:std.String):Bool;

	/**		
		Loads a resource when the engine finds this loader to be compatible. If the loaded resource is the result of an import, `original_path` will target the source file. Returns a `godot.Resource` object on success, or an `godot.Error` constant in case of failure.
	**/
	@:native("Load")
	public function load(path:std.String, originalPath:std.String):Dynamic;

	/**		
		If implemented, renames dependencies within the given resource and saves it. `renames` is a dictionary `{ String =&gt; String }` mapping old dependency paths to new paths.
		
		Returns `OK` on success, or an `godot.Error` constant in case of failure.
	**/
	@:native("RenameDependencies")
	public function renameDependencies(path:std.String, renames:std.String):Int;
}
