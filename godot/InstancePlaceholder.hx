// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Turning on the option Load As Placeholder for an instanced scene in the editor causes it to be replaced by an InstancePlaceholder when running the game. This makes it possible to delay actually loading the scene until calling `godot.InstancePlaceholder.replaceByInstance`. This is useful to avoid loading large scenes all at once by loading parts of it selectively.

The InstancePlaceholder does not have a transform. This causes any child nodes to be positioned relatively to the Viewport from point (0,0), rather than their parent as displayed in the editor. Replacing the placeholder with a scene with a transform will transform children relatively to their parent again.
**/
@:libType
@:csNative
@:native("Godot.InstancePlaceholder")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class InstancePlaceholder extends godot.Node {
	#if doc_gen
	@:native("GetStoredValues")
	public function getStoredValues(?withOrder:Bool):godot.collections.Dictionary;
	#else
	@:native("GetStoredValues")
	public overload function getStoredValues():godot.collections.Dictionary;

	@:native("GetStoredValues")
	public overload function getStoredValues(withOrder:Bool):godot.collections.Dictionary;
	#end

	#if doc_gen
	/**		
		Not thread-safe. Use `godot.Object.callDeferred` if calling from a thread.
	**/
	@:native("CreateInstance")
	public function createInstance(?replace:Bool, ?customScene:godot.PackedScene):godot.Node;
	#else
	/**		
		Not thread-safe. Use `godot.Object.callDeferred` if calling from a thread.
	**/
	@:native("CreateInstance")
	public overload function createInstance():godot.Node;

	/**		
		Not thread-safe. Use `godot.Object.callDeferred` if calling from a thread.
	**/
	@:native("CreateInstance")
	public overload function createInstance(replace:Bool):godot.Node;

	/**		
		Not thread-safe. Use `godot.Object.callDeferred` if calling from a thread.
	**/
	@:native("CreateInstance")
	public overload function createInstance(replace:Bool, customScene:godot.PackedScene):godot.Node;
	#end

	#if doc_gen
	/**		
		Replaces this placeholder by the scene handed as an argument, or the original scene if no argument is given. As for all resources, the scene is loaded only if it's not loaded already. By manually loading the scene beforehand, delays caused by this function can be avoided.
	**/
	@:native("ReplaceByInstance")
	public function replaceByInstance(?customScene:godot.PackedScene):Void;
	#else
	/**		
		Replaces this placeholder by the scene handed as an argument, or the original scene if no argument is given. As for all resources, the scene is loaded only if it's not loaded already. By manually loading the scene beforehand, delays caused by this function can be avoided.
	**/
	@:native("ReplaceByInstance")
	public overload function replaceByInstance():Void;

	/**		
		Replaces this placeholder by the scene handed as an argument, or the original scene if no argument is given. As for all resources, the scene is loaded only if it's not loaded already. By manually loading the scene beforehand, delays caused by this function can be avoided.
	**/
	@:native("ReplaceByInstance")
	public overload function replaceByInstance(customScene:godot.PackedScene):Void;
	#end

	/**		
		Gets the path to the `godot.PackedScene` resource file that is loaded by default when calling `godot.InstancePlaceholder.replaceByInstance`. Not thread-safe. Use `godot.Object.callDeferred` if calling from a thread.
	**/
	@:native("GetInstancePath")
	public function getInstancePath():std.String;
}
