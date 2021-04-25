// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A simplified interface to a scene file. Provides access to operations and checks that can be performed on the scene resource itself.

Can be used to save a node to a file. When saving, the node as well as all the nodes it owns get saved (see `owner` property on `godot.Node`).

Note: The node doesn't need to own itself.

Example of loading a saved scene:

```

# Use `load()` instead of `preload()` if the path isn't known at compile-time.
var scene = preload("res://scene.tscn").instance()
# Add the node as a child of the node the script is attached to.
add_child(scene)

```

Example of saving a node with different owners: The following example creates 3 objects: `Node2D` (`node`), `RigidBody2D` (`rigid`) and `CollisionObject2D` (`collision`). `collision` is a child of `rigid` which is a child of `node`. Only `rigid` is owned by `node` and `pack` will therefore only save those two nodes, but not `collision`.

```

# Create the objects.
var node = Node2D.new()
var rigid = RigidBody2D.new()
var collision = CollisionShape2D.new()

# Create the object hierarchy.
rigid.add_child(collision)
node.add_child(rigid)

# Change owner of `rigid`, but not of `collision`.
rigid.owner = node

var scene = PackedScene.new()
# Only `node` and `rigid` are now packed.
var result = scene.pack(node)
if result == OK:
var error = ResourceSaver.save("res://path/name.scn", scene)  # Or "user://..."
if error != OK:
push_error("An error occurred while saving the scene to disk.")

```
**/
@:libType
@:csNative
@:native("Godot.PackedScene")
@:autoBuild(godot.Godot.buildUserClass())
extern class PackedScene extends godot.Resource {
	/**		
		A dictionary representation of the scene contents.
		
		Available keys include "rnames" and "variants" for resources, "node_count", "nodes", "node_paths" for nodes, "editable_instances" for base scene children overrides, "conn_count" and "conns" for signal connections, and "version" for the format style of the PackedScene.
	**/
	@:native("_Bundled")
	public var _Bundled:godot.collections.Dictionary;

	#if doc_gen
	@:native("InstanceOrNull")
	public function instanceOrNull<M0>(?editState:godot.PackedScene_GenEditState):M0;
	#else
	@:native("InstanceOrNull")
	public overload function instanceOrNull<M0>():M0;

	@:native("InstanceOrNull")
	public overload function instanceOrNull<M0>(editState:godot.PackedScene_GenEditState):M0;
	#end

	@:native("new")
	public function new():Void;

	/**		
		Pack will ignore any sub-nodes not owned by given node. See `godot.Node.owner`.
	**/
	@:native("Pack")
	public function pack(path:godot.Node):godot.Error;

	#if doc_gen
	/**		
		Instantiates the scene's node hierarchy. Triggers child scene instantiation(s). Triggers a  notification on the root node.
	**/
	@:native("Instance")
	public function instance(?editState:godot.PackedScene_GenEditState):godot.Node;
	#else
	/**		
		Instantiates the scene's node hierarchy. Triggers child scene instantiation(s). Triggers a  notification on the root node.
	**/
	@:native("Instance")
	public overload function instance():godot.Node;

	/**		
		Instantiates the scene's node hierarchy. Triggers child scene instantiation(s). Triggers a  notification on the root node.
	**/
	@:native("Instance")
	public overload function instance(editState:godot.PackedScene_GenEditState):godot.Node;
	#end

	/**		
		Returns `true` if the scene file has nodes.
	**/
	@:native("CanInstance")
	public function canInstance():Bool;

	/**		
		Returns the `SceneState` representing the scene file contents.
	**/
	@:native("GetState")
	public function getState():godot.SceneState;
}
