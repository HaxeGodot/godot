// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This class allows you to define a custom shader program that can be used for various materials to render objects.

The visual shader editor creates the shader.
**/
@:libType
@:csNative
@:native("Godot.VisualShader")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualShader extends godot.Shader {
	/**		
		The offset vector of the whole graph.
	**/
	@:native("GraphOffset")
	public var graphOffset:godot.Vector2;

	@:native("NodeIdOutput")
	public static var NODE_ID_OUTPUT(default, never):Int;

	@:native("NodeIdInvalid")
	public static var NODE_ID_INVALID(default, never):Int;

	@:native("new")
	public function new():Void;

	/**		
		Sets the mode of this shader.
	**/
	@:native("SetMode")
	public function setMode(mode:godot.Shader_Mode):Void;

	/**		
		Adds the specified node to the shader.
	**/
	@:native("AddNode")
	public function addNode(type:godot.VisualShader_Type, node:godot.VisualShaderNode, position:godot.Vector2, id:Int):Void;

	/**		
		Returns the shader node instance with specified `type` and `id`.
	**/
	@:native("GetNode")
	public function getNode(type:godot.VisualShader_Type, id:Int):godot.VisualShaderNode;

	/**		
		Sets the position of the specified node.
	**/
	@:native("SetNodePosition")
	public function setNodePosition(type:godot.VisualShader_Type, id:Int, position:godot.Vector2):Void;

	/**		
		Returns the position of the specified node within the shader graph.
	**/
	@:native("GetNodePosition")
	public function getNodePosition(type:godot.VisualShader_Type, id:Int):godot.Vector2;

	/**		
		Returns the list of all nodes in the shader with the specified type.
	**/
	public extern inline function getNodeList(type:godot.VisualShader_Type):std.Array<Int> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetNodeList({1})", this, type));
	}

	@:native("GetValidNodeId")
	public function getValidNodeId(type:godot.VisualShader_Type):Int;

	/**		
		Removes the specified node from the shader.
	**/
	@:native("RemoveNode")
	public function removeNode(type:godot.VisualShader_Type, id:Int):Void;

	/**		
		Returns `true` if the specified node and port connection exist.
	**/
	@:native("IsNodeConnection")
	public function isNodeConnection(type:godot.VisualShader_Type, fromNode:Int, fromPort:Int, toNode:Int, toPort:Int):Bool;

	/**		
		Returns `true` if the specified nodes and ports can be connected together.
	**/
	@:native("CanConnectNodes")
	public function canConnectNodes(type:godot.VisualShader_Type, fromNode:Int, fromPort:Int, toNode:Int, toPort:Int):Bool;

	/**		
		Connects the specified nodes and ports.
	**/
	@:native("ConnectNodes")
	public function connectNodes(type:godot.VisualShader_Type, fromNode:Int, fromPort:Int, toNode:Int, toPort:Int):godot.Error;

	/**		
		Connects the specified nodes and ports.
	**/
	@:native("DisconnectNodes")
	public function disconnectNodes(type:godot.VisualShader_Type, fromNode:Int, fromPort:Int, toNode:Int, toPort:Int):Void;

	/**		
		Connects the specified nodes and ports, even if they can't be connected. Such connection is invalid and will not function properly.
	**/
	@:native("ConnectNodesForced")
	public function connectNodesForced(type:godot.VisualShader_Type, fromNode:Int, fromPort:Int, toNode:Int, toPort:Int):Void;

	/**		
		Returns the list of connected nodes with the specified type.
	**/
	@:native("GetNodeConnections")
	public function getNodeConnections(type:godot.VisualShader_Type):godot.collections.Array;

	@:native("SetGraphOffset")
	public function setGraphOffset(offset:godot.Vector2):Void;

	@:native("GetGraphOffset")
	public function getGraphOffset():godot.Vector2;
}
