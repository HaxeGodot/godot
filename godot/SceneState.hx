// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Maintains a list of resources, nodes, exported, and overridden properties, and built-in scripts associated with a scene.

This class cannot be instantiated directly, it is retrieved for a given scene as the result of `godot.PackedScene.getState`.
**/
@:libType
@:csNative
@:native("Godot.SceneState")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class SceneState extends godot.Reference {
	/**		
		Returns the number of nodes in the scene.
		
		The `idx` argument used to query node data in other `get_node_*` methods in the interval `[0, get_node_count() - 1]`.
	**/
	@:native("GetNodeCount")
	public function getNodeCount():Int;

	/**		
		Returns the type of the node at `idx`.
	**/
	@:native("GetNodeType")
	public function getNodeType(idx:Int):std.String;

	/**		
		Returns the name of the node at `idx`.
	**/
	@:native("GetNodeName")
	public function getNodeName(idx:Int):std.String;

	#if doc_gen
	/**		
		Returns the path to the node at `idx`.
		
		If `for_parent` is `true`, returns the path of the `idx` node's parent instead.
	**/
	@:native("GetNodePath")
	public function getNodePath(idx:Int, ?forParent:Bool):godot.NodePath;
	#else
	/**		
		Returns the path to the node at `idx`.
		
		If `for_parent` is `true`, returns the path of the `idx` node's parent instead.
	**/
	@:native("GetNodePath")
	public overload function getNodePath(idx:Int):godot.NodePath;

	/**		
		Returns the path to the node at `idx`.
		
		If `for_parent` is `true`, returns the path of the `idx` node's parent instead.
	**/
	@:native("GetNodePath")
	public overload function getNodePath(idx:Int, forParent:Bool):godot.NodePath;
	#end

	/**		
		Returns the path to the owner of the node at `idx`, relative to the root node.
	**/
	@:native("GetNodeOwnerPath")
	public function getNodeOwnerPath(idx:Int):godot.NodePath;

	/**		
		Returns `true` if the node at `idx` is an `godot.InstancePlaceholder`.
	**/
	@:native("IsNodeInstancePlaceholder")
	public function isNodeInstancePlaceholder(idx:Int):Bool;

	/**		
		Returns the path to the represented scene file if the node at `idx` is an `godot.InstancePlaceholder`.
	**/
	@:native("GetNodeInstancePlaceholder")
	public function getNodeInstancePlaceholder(idx:Int):std.String;

	/**		
		Returns a `godot.PackedScene` for the node at `idx` (i.e. the whole branch starting at this node, with its child nodes and resources), or `null` if the node is not an instance.
	**/
	@:native("GetNodeInstance")
	public function getNodeInstance(idx:Int):godot.PackedScene;

	/**		
		Returns the list of group names associated with the node at `idx`.
	**/
	@:native("GetNodeGroups")
	public function getNodeGroups(idx:Int):cs.NativeArray<std.String>;

	/**		
		Returns the node's index, which is its position relative to its siblings. This is only relevant and saved in scenes for cases where new nodes are added to an instanced or inherited scene among siblings from the base scene. Despite the name, this index is not related to the `idx` argument used here and in other methods.
	**/
	@:native("GetNodeIndex")
	public function getNodeIndex(idx:Int):Int;

	/**		
		Returns the number of exported or overridden properties for the node at `idx`.
		
		The `prop_idx` argument used to query node property data in other `get_node_property_*` methods in the interval `[0, get_node_property_count() - 1]`.
	**/
	@:native("GetNodePropertyCount")
	public function getNodePropertyCount(idx:Int):Int;

	/**		
		Returns the name of the property at `prop_idx` for the node at `idx`.
	**/
	@:native("GetNodePropertyName")
	public function getNodePropertyName(idx:Int, propIdx:Int):std.String;

	/**		
		Returns the value of the property at `prop_idx` for the node at `idx`.
	**/
	@:native("GetNodePropertyValue")
	public function getNodePropertyValue(idx:Int, propIdx:Int):Dynamic;

	/**		
		Returns the number of signal connections in the scene.
		
		The `idx` argument used to query connection metadata in other `get_connection_*` methods in the interval `[0, get_connection_count() - 1]`.
	**/
	@:native("GetConnectionCount")
	public function getConnectionCount():Int;

	/**		
		Returns the path to the node that owns the signal at `idx`, relative to the root node.
	**/
	@:native("GetConnectionSource")
	public function getConnectionSource(idx:Int):godot.NodePath;

	/**		
		Returns the name of the signal at `idx`.
	**/
	@:native("GetConnectionSignal")
	public function getConnectionSignal(idx:Int):std.String;

	/**		
		Returns the path to the node that owns the method connected to the signal at `idx`, relative to the root node.
	**/
	@:native("GetConnectionTarget")
	public function getConnectionTarget(idx:Int):godot.NodePath;

	/**		
		Returns the method connected to the signal at `idx`.
	**/
	@:native("GetConnectionMethod")
	public function getConnectionMethod(idx:Int):std.String;

	/**		
		Returns the connection flags for the signal at `idx`. See `godot.Object_ConnectFlags` constants.
	**/
	@:native("GetConnectionFlags")
	public function getConnectionFlags(idx:Int):Int;

	/**		
		Returns the list of bound parameters for the signal at `idx`.
	**/
	@:native("GetConnectionBinds")
	public function getConnectionBinds(idx:Int):godot.collections.Array;
}
