// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Base node for all joint constraints in 2D physics. Joints take 2 bodies and apply a custom constraint.
**/
@:libType
@:csNative
@:native("Godot.Joint2D")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class Joint2D extends godot.Node2D {
	/**		
		If `true`, `godot.Joint2D.nodeA` and `godot.Joint2D.nodeB` can not collide.
	**/
	@:native("DisableCollision")
	public var disableCollision:Bool;

	/**		
		When `godot.Joint2D.nodeA` and `godot.Joint2D.nodeB` move in different directions the `bias` controls how fast the joint pulls them back to their original position. The lower the `bias` the more the two bodies can pull on the joint.
	**/
	@:native("Bias")
	public var bias:Single;

	/**		
		The second body attached to the joint. Must derive from `godot.PhysicsBody2D`.
	**/
	@:native("NodeB")
	public var nodeB:godot.NodePath;

	/**		
		The first body attached to the joint. Must derive from `godot.PhysicsBody2D`.
	**/
	@:native("NodeA")
	public var nodeA:godot.NodePath;

	@:native("SetNodeA")
	public function setNodeA(node:godot.NodePath):Void;

	@:native("GetNodeA")
	public function getNodeA():godot.NodePath;

	@:native("SetNodeB")
	public function setNodeB(node:godot.NodePath):Void;

	@:native("GetNodeB")
	public function getNodeB():godot.NodePath;

	@:native("SetBias")
	public function setBias(bias:Single):Void;

	@:native("GetBias")
	public function getBias():Single;

	@:native("SetExcludeNodesFromCollision")
	public function setExcludeNodesFromCollision(enable:Bool):Void;

	@:native("GetExcludeNodesFromCollision")
	public function getExcludeNodesFromCollision():Bool;
}
