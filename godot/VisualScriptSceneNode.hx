// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A direct reference to a node.

Input Ports:

none

Output Ports:

- Data: `node` (obj)
**/
@:libType
@:csNative
@:native("Godot.VisualScriptSceneNode")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualScriptSceneNode extends godot.VisualScriptNode {
	/**		
		The node's path in the scene tree.
	**/
	@:native("NodePath")
	public var nodePath:godot.NodePath;

	@:native("new")
	public function new():Void;

	@:native("SetNodePath")
	public function setNodePath(path:godot.NodePath):Void;

	@:native("GetNodePath")
	public function getNodePath():godot.NodePath;
}
