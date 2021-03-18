// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Joints are used to bind together two physics bodies. They have a solver priority and can define if the bodies of the two attached nodes should be able to collide with each other.
**/
@:libType
@:csNative
@:native("Godot.Joint")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class Joint extends godot.Spatial {
	/**		
		If `true`, the two bodies of the nodes are not able to collide with each other.
	**/
	@:native("Collision__excludeNodes")
	public var collision__excludeNodes:Bool;

	/**		
		The priority used to define which solver is executed first for multiple joints. The lower the value, the higher the priority.
	**/
	@:native("Solver__priority")
	public var solver__priority:Int;

	/**		
		The node attached to the second side (B) of the joint.
	**/
	@:native("Nodes__nodeB")
	public var nodes__nodeB:godot.NodePath;

	/**		
		The node attached to the first side (A) of the joint.
	**/
	@:native("Nodes__nodeA")
	public var nodes__nodeA:godot.NodePath;

	@:native("SetNodeA")
	public function setNodeA(node:godot.NodePath):Void;

	@:native("GetNodeA")
	public function getNodeA():godot.NodePath;

	@:native("SetNodeB")
	public function setNodeB(node:godot.NodePath):Void;

	@:native("GetNodeB")
	public function getNodeB():godot.NodePath;

	@:native("SetSolverPriority")
	public function setSolverPriority(priority:Int):Void;

	@:native("GetSolverPriority")
	public function getSolverPriority():Int;

	@:native("SetExcludeNodesFromCollision")
	public function setExcludeNodesFromCollision(enable:Bool):Void;

	@:native("GetExcludeNodesFromCollision")
	public function getExcludeNodesFromCollision():Bool;
}
