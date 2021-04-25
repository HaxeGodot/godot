// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Resource is the base class for all Godot-specific resource types, serving primarily as data containers. Unlike `godot.Object`s, they are reference-counted and freed when no longer in use. They are also cached once loaded from disk, so that any further attempts to load a resource from a given path will return the same reference (all this in contrast to a `godot.Node`, which is not reference-counted and can be instanced from disk as many times as desired). Resources can be saved externally on disk or bundled into another object, such as a `godot.Node` or another resource.
**/
@:libType
@:csNative
@:native("Godot.Resource")
@:autoBuild(godot.Godot.buildUserClass())
extern class Resource extends godot.Reference {
	/**
		`changed` signal.
		
		Emitted whenever the resource changes.
	**/
	public var onChanged(get, never):Signal<Void->Void>;
	@:dox(hide) inline function get_onChanged():Signal<Void->Void> {
		return new Signal(this, "changed", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**		
		The name of the resource. This is an optional identifier.
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
