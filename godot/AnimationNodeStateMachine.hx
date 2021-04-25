// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Contains multiple nodes representing animation states, connected in a graph. Node transitions can be configured to happen automatically or via code, using a shortest-path algorithm. Retrieve the `godot.AnimationNodeStateMachinePlayback` object from the `godot.AnimationTree` node to control it programmatically.

Example:

```

var state_machine = $AnimationTree.get("parameters/playback")
state_machine.travel("some_state")

```
**/
@:libType
@:csNative
@:native("Godot.AnimationNodeStateMachine")
@:autoBuild(godot.Godot.buildUserClass())
extern class AnimationNodeStateMachine extends godot.AnimationRootNode {
	@:native("new")
	public function new():Void;

	#if doc_gen
	/**		
		Adds a new node to the graph. The `position` is used for display in the editor.
		
		@param position If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("AddNode")
	public function addNode(name:std.String, node:godot.AnimationNode, ?position:Null<godot.Vector2>):Void;
	#else
	/**		
		Adds a new node to the graph. The `position` is used for display in the editor.
		
		@param position If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("AddNode")
	public overload function addNode(name:std.String, node:godot.AnimationNode):Void;

	/**		
		Adds a new node to the graph. The `position` is used for display in the editor.
		
		@param position If the parameter is null, then the default value is new Vector2(0, 0)
	**/
	@:native("AddNode")
	public overload function addNode(name:std.String, node:godot.AnimationNode, position:Nullable1<godot.Vector2>):Void;
	#end

	/**		
		Replaces the node and keeps its transitions unchanged.
	**/
	@:native("ReplaceNode")
	public function replaceNode(name:std.String, node:godot.AnimationNode):Void;

	/**		
		Returns the animation node with the given name.
	**/
	@:native("GetNode")
	public function getNode(name:std.String):godot.AnimationNode;

	/**		
		Deletes the given node from the graph.
	**/
	@:native("RemoveNode")
	public function removeNode(name:std.String):Void;

	/**		
		Renames the given node.
	**/
	@:native("RenameNode")
	public function renameNode(name:std.String, newName:std.String):Void;

	/**		
		Returns `true` if the graph contains the given node.
	**/
	@:native("HasNode")
	public function hasNode(name:std.String):Bool;

	/**		
		Returns the given animation node's name.
	**/
	@:native("GetNodeName")
	public function getNodeName(node:godot.AnimationNode):std.String;

	/**		
		Sets the node's coordinates. Used for display in the editor.
	**/
	@:native("SetNodePosition")
	public function setNodePosition(name:std.String, position:godot.Vector2):Void;

	/**		
		Returns the given node's coordinates. Used for display in the editor.
	**/
	@:native("GetNodePosition")
	public function getNodePosition(name:std.String):godot.Vector2;

	/**		
		Returns `true` if there is a transition between the given nodes.
	**/
	@:native("HasTransition")
	public function hasTransition(from:std.String, to:std.String):Bool;

	/**		
		Adds a transition between the given nodes.
	**/
	@:native("AddTransition")
	public function addTransition(from:std.String, to:std.String, transition:godot.AnimationNodeStateMachineTransition):Void;

	/**		
		Returns the given transition.
	**/
	@:native("GetTransition")
	public function getTransition(idx:Int):godot.AnimationNodeStateMachineTransition;

	/**		
		Returns the given transition's start node.
	**/
	@:native("GetTransitionFrom")
	public function getTransitionFrom(idx:Int):std.String;

	/**		
		Returns the given transition's end node.
	**/
	@:native("GetTransitionTo")
	public function getTransitionTo(idx:Int):std.String;

	/**		
		Returns the number of connections in the graph.
	**/
	@:native("GetTransitionCount")
	public function getTransitionCount():Int;

	/**		
		Deletes the given transition by index.
	**/
	@:native("RemoveTransitionByIndex")
	public function removeTransitionByIndex(idx:Int):Void;

	/**		
		Deletes the transition between the two specified nodes.
	**/
	@:native("RemoveTransition")
	public function removeTransition(from:std.String, to:std.String):Void;

	/**		
		Sets the given node as the graph start point.
	**/
	@:native("SetStartNode")
	public function setStartNode(name:std.String):Void;

	/**		
		Returns the graph's end node.
	**/
	@:native("GetStartNode")
	public function getStartNode():std.String;

	/**		
		Sets the given node as the graph end point.
	**/
	@:native("SetEndNode")
	public function setEndNode(name:std.String):Void;

	/**		
		Returns the graph's end node.
	**/
	@:native("GetEndNode")
	public function getEndNode():std.String;

	/**		
		Sets the draw offset of the graph. Used for display in the editor.
	**/
	@:native("SetGraphOffset")
	public function setGraphOffset(offset:godot.Vector2):Void;

	/**		
		Returns the draw offset of the graph. Used for display in the editor.
	**/
	@:native("GetGraphOffset")
	public function getGraphOffset():godot.Vector2;
}
