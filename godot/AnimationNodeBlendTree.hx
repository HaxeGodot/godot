// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This node may contain a sub-tree of any other blend type nodes, such as mix, blend2, blend3, one shot, etc. This is one of the most commonly used roots.
**/
@:libType
@:csNative
@:native("Godot.AnimationNodeBlendTree")
@:autoBuild(godot.Godot.buildUserClass())
extern class AnimationNodeBlendTree extends godot.AnimationRootNode {
	/**		
		The global offset of all sub-nodes.
	**/
	@:native("GraphOffset")
	public var graphOffset:godot.Vector2;

	/**		
		The specified connection already exists.
	**/
	@:native("ConnectionErrorConnectionExists")
	public static var CONNECTION_ERROR_CONNECTION_EXISTS(default, never):Int;

	/**		
		Input and output nodes are the same.
	**/
	@:native("ConnectionErrorSameNode")
	public static var CONNECTION_ERROR_SAME_NODE(default, never):Int;

	/**		
		The output node is `null`.
	**/
	@:native("ConnectionErrorNoOutput")
	public static var CONNECTION_ERROR_NO_OUTPUT(default, never):Int;

	/**		
		The specified input port is out of range.
	**/
	@:native("ConnectionErrorNoInputIndex")
	public static var CONNECTION_ERROR_NO_INPUT_INDEX(default, never):Int;

	/**		
		The input node is `null`.
	**/
	@:native("ConnectionErrorNoInput")
	public static var CONNECTION_ERROR_NO_INPUT(default, never):Int;

	/**		
		The connection was successful.
	**/
	@:native("ConnectionOk")
	public static var CONNECTION_OK(default, never):Int;

	@:native("new")
	public function new():Void;

	#if doc_gen
	/**		
		Adds an `godot.AnimationNode` at the given `position`. The `name` is used to identify the created sub-node later.
		
		@param position If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("AddNode")
	public function addNode(name:std.String, node:godot.AnimationNode, ?position:Nullable1<godot.Vector2>):Void;
	#else
	/**		
		Adds an `godot.AnimationNode` at the given `position`. The `name` is used to identify the created sub-node later.
		
		@param position If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("AddNode")
	public overload function addNode(name:std.String, node:godot.AnimationNode):Void;

	/**		
		Adds an `godot.AnimationNode` at the given `position`. The `name` is used to identify the created sub-node later.
		
		@param position If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("AddNode")
	public overload function addNode(name:std.String, node:godot.AnimationNode, position:Nullable1<godot.Vector2>):Void;
	#end

	/**		
		Returns the sub-node with the specified `name`.
	**/
	@:native("GetNode")
	public function getNode(name:std.String):godot.AnimationNode;

	/**		
		Removes a sub-node.
	**/
	@:native("RemoveNode")
	public function removeNode(name:std.String):Void;

	/**		
		Changes the name of a sub-node.
	**/
	@:native("RenameNode")
	public function renameNode(name:std.String, newName:std.String):Void;

	/**		
		Returns `true` if a sub-node with specified `name` exists.
	**/
	@:native("HasNode")
	public function hasNode(name:std.String):Bool;

	/**		
		Connects the output of an `godot.AnimationNode` as input for another `godot.AnimationNode`, at the input port specified by `input_index`.
	**/
	@:native("ConnectNode")
	public function connectNode(inputNode:std.String, inputIndex:Int, outputNode:std.String):Void;

	/**		
		Disconnects the node connected to the specified input.
	**/
	@:native("DisconnectNode")
	public function disconnectNode(inputNode:std.String, inputIndex:Int):Void;

	/**		
		Modifies the position of a sub-node.
	**/
	@:native("SetNodePosition")
	public function setNodePosition(name:std.String, position:godot.Vector2):Void;

	/**		
		Returns the position of the sub-node with the specified `name`.
	**/
	@:native("GetNodePosition")
	public function getNodePosition(name:std.String):godot.Vector2;

	@:native("SetGraphOffset")
	public function setGraphOffset(offset:godot.Vector2):Void;

	@:native("GetGraphOffset")
	public function getGraphOffset():godot.Vector2;
}
