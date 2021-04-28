// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Resource is the base class for all Godot-specific resource types, serving primarily as data containers. Since they inherit from `godot.Reference`, resources are reference-counted and freed when no longer in use. They are also cached once loaded from disk, so that any further attempts to load a resource from a given path will return the same reference (all this in contrast to a `godot.Node`, which is not reference-counted and can be instanced from disk as many times as desired). Resources can be saved externally on disk or bundled into another object, such as a `godot.Node` or another resource.

Note: In C#, resources will not be freed instantly after they are no longer in use. Instead, garbage collection will run periodically and will free resources that are no longer in use. This means that unused resources will linger on for a while before being removed.
**/
@:libType
@:csNative
@:native("Godot.Resource")
@:autoBuild(godot.Godot.buildUserClass())
extern class Resource extends godot.Reference {
	/**
		`changed` signal.
		
		Emitted whenever the resource changes.
		`b`Note:`/b` This signal is not emitted automatically for custom resources, which means that you need to create a setter and emit the signal yourself.
	**/
	public var onChanged(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onChanged():Signal<Void->Void> {
		return new Signal(this, "changed", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**		
		The name of the resource. This is an optional identifier. If `godot.Resource.resourceName` is not empty, its value will be displayed to represent the current resource in the editor inspector. For built-in scripts, the `godot.Resource.resourceName` will be displayed as the tab name in the script editor.
	**/
	@:native("ResourceName")
	public var resourceName:std.String;

	/**		
		The path to the resource. In case it has its own file, it will return its filepath. If it's tied to the scene, it will return the scene's path, followed by the resource's index.
	**/
	@:native("ResourcePath")
	public var resourcePath:std.String;

	/**		
		If `true`, the resource will be made unique in each instance of its local scene. It can thus be modified in a scene instance without impacting other instances of that same scene.
	**/
	@:native("ResourceLocalToScene")
	public var resourceLocalToScene:Bool;

	@:native("new")
	public function new():Void;

	/**		
		Virtual function which can be overridden to customize the behavior value of `godot.Resource.setupLocalToScene`.
	**/
	@:native("_SetupLocalToScene")
	public function _SetupLocalToScene():Void;

	@:native("SetPath")
	public function setPath(path:std.String):Void;

	/**		
		Sets the path of the resource, potentially overriding an existing cache entry for this path. This differs from setting `godot.Resource.resourcePath`, as the latter would error out if another resource was already cached for the given path.
	**/
	@:native("TakeOverPath")
	public function takeOverPath(path:std.String):Void;

	@:native("GetPath")
	public function getPath():std.String;

	@:native("SetName")
	public function setName(name:std.String):Void;

	@:native("GetName")
	public function getName():std.String;

	/**		
		Returns the RID of the resource (or an empty RID). Many resources (such as `godot.Texture`, `godot.Mesh`, etc) are high-level abstractions of resources stored in a server, so this function will return the original RID.
	**/
	@:native("GetRid")
	public function getRid():godot.RID;

	@:native("SetLocalToScene")
	public function setLocalToScene(enable:Bool):Void;

	@:native("IsLocalToScene")
	public function isLocalToScene():Bool;

	/**		
		If `godot.Resource.resourceLocalToScene` is enabled and the resource was loaded from a `godot.PackedScene` instantiation, returns the local scene where this resource's unique copy is in use. Otherwise, returns `null`.
	**/
	@:native("GetLocalScene")
	public function getLocalScene():godot.Node;

	/**		
		This method is called when a resource with `godot.Resource.resourceLocalToScene` enabled is loaded from a `godot.PackedScene` instantiation. Its behavior can be customized by overriding `godot.Resource._SetupLocalToScene` from script.
		
		For most resources, this method performs no base logic. `godot.ViewportTexture` performs custom logic to properly set the proxy texture and flags in the local viewport.
	**/
	@:native("SetupLocalToScene")
	public function setupLocalToScene():Void;

	/**		
		Emits the `changed` signal.
		
		If external objects which depend on this resource should be updated, this method must be called manually whenever the state of this resource has changed (such as modification of properties).
		
		The method is equivalent to:
		
		```
		
		emit_signal("changed")
		
		```
		
		Note: This method is called automatically for built-in resources.
	**/
	@:native("EmitChanged")
	public function emitChanged():Void;

	#if doc_gen
	/**		
		Duplicates the resource, returning a new resource. By default, sub-resources are shared between resource copies for efficiency. This can be changed by passing `true` to the `subresources` argument which will copy the subresources.
		
		Note: If `subresources` is `true`, this method will only perform a shallow copy. Nested resources within subresources will not be duplicated and will still be shared.
	**/
	@:native("Duplicate")
	public function duplicate(?subresources:Bool):godot.Resource;
	#else
	/**		
		Duplicates the resource, returning a new resource. By default, sub-resources are shared between resource copies for efficiency. This can be changed by passing `true` to the `subresources` argument which will copy the subresources.
		
		Note: If `subresources` is `true`, this method will only perform a shallow copy. Nested resources within subresources will not be duplicated and will still be shared.
	**/
	@:native("Duplicate")
	public overload function duplicate():godot.Resource;

	/**		
		Duplicates the resource, returning a new resource. By default, sub-resources are shared between resource copies for efficiency. This can be changed by passing `true` to the `subresources` argument which will copy the subresources.
		
		Note: If `subresources` is `true`, this method will only perform a shallow copy. Nested resources within subresources will not be duplicated and will still be shared.
	**/
	@:native("Duplicate")
	public overload function duplicate(subresources:Bool):godot.Resource;
	#end
}
