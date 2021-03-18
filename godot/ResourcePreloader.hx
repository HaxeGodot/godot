// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This node is used to preload sub-resources inside a scene, so when the scene is loaded, all the resources are ready to use and can be retrieved from the preloader.

GDScript has a simplified `@GDScript.preload` built-in method which can be used in most situations, leaving the use of `godot.ResourcePreloader` for more advanced scenarios.
**/
@:libType
@:csNative
@:native("Godot.ResourcePreloader")
@:autoBuild(godot.Godot.buildUserClass())
extern class ResourcePreloader extends godot.Node {
	@:native("Resources")
	public var resources:godot.collections.Array;

	@:native("new")
	public function new():Void;

	/**		
		Adds a resource to the preloader with the given `name`. If a resource with the given `name` already exists, the new resource will be renamed to "`name` N" where N is an incrementing number starting from 2.
	**/
	@:native("AddResource")
	public function addResource(name:std.String, resource:godot.Resource):Void;

	/**		
		Removes the resource associated to `name` from the preloader.
	**/
	@:native("RemoveResource")
	public function removeResource(name:std.String):Void;

	/**		
		Renames a resource inside the preloader from `name` to `newname`.
	**/
	@:native("RenameResource")
	public function renameResource(name:std.String, newname:std.String):Void;

	/**		
		Returns `true` if the preloader contains a resource associated to `name`.
	**/
	@:native("HasResource")
	public function hasResource(name:std.String):Bool;

	/**		
		Returns the resource associated to `name`.
	**/
	@:native("GetResource")
	public function getResource(name:std.String):godot.Resource;

	/**		
		Returns the list of resources inside the preloader.
	**/
	@:native("GetResourceList")
	public function getResourceList():cs.NativeArray<std.String>;
}
