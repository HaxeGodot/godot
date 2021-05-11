// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
The engine can save resources when you do it from the editor, or when you use the `godot.ResourceSaver` singleton. This is accomplished thanks to multiple `godot.ResourceFormatSaver`s, each handling its own format and called automatically by the engine.

By default, Godot saves resources as `.tres` (text-based), `.res` (binary) or another built-in format, but you can choose to create your own format by extending this class. Be sure to respect the documented return types and values. You should give it a global class name with `class_name` for it to be registered. Like built-in ResourceFormatSavers, it will be called automatically when saving resources of its recognized type(s). You may also implement a `godot.ResourceFormatLoader`.
**/
@:libType
@:csNative
@:native("Godot.ResourceFormatSaver")
@:autoBuild(godot.Godot.buildUserClass())
extern class ResourceFormatSaver extends godot.Reference {
	@:native("new")
	public function new():Void;

	/**		
		Returns the list of extensions available for saving the resource object, provided it is recognized (see `godot.ResourceFormatSaver.recognize`).
	**/
	public extern inline function getRecognizedExtensions(resource:godot.Resource):std.Array<std.String> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetRecognizedExtensions({1})", this, resource));
	}

	/**		
		Returns whether the given resource object can be saved by this saver.
	**/
	@:native("Recognize")
	public function recognize(resource:godot.Resource):Bool;

	/**		
		Saves the given resource object to a file at the target `path`. `flags` is a bitmask composed with `godot.ResourceSaver_SaverFlags` constants.
		
		Returns  on success, or an `godot.Error` constant in case of failure.
	**/
	@:native("Save")
	public function save(path:std.String, resource:godot.Resource, flags:Int):Int;
}
