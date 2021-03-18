// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Note: When linked with an `godot.AnimationPlayer`, several properties and methods of the corresponding `godot.AnimationPlayer` will not function as expected. Playback and transitions should be handled using only the `godot.AnimationTree` and its constituent `godot.AnimationNode`(s). The `godot.AnimationPlayer` node should be used solely for adding, deleting, and editing animations.
**/
@:libType
@:csNative
@:native("Godot.AnimationTree")
@:autoBuild(godot.Godot.buildUserClass())
extern class AnimationTree extends godot.Node {
	/**		
		The path to the Animation track used for root motion. Paths must be valid scene-tree paths to a node, and must be specified starting from the parent node of the node that will reproduce the animation. To specify a track that controls properties or bones, append its name after the path, separated by `":"`. For example, `"character/skeleton:ankle"` or `"character/mesh:transform/local"`.
		
		If the track has type , the transformation will be cancelled visually, and the animation will appear to stay in place.
	**/
	@:native("RootMotionTrack")
	public var rootMotionTrack:godot.NodePath;

	/**		
		The process mode of this `godot.AnimationTree`. See `godot.AnimationTree_AnimationProcessMode` for available modes.
	**/
	@:native("ProcessMode")
	public var processMode:godot.AnimationTree_AnimationProcessMode;

	/**		
		If `true`, the `godot.AnimationTree` will be processing.
	**/
	@:native("Active")
	public var active:Bool;

	/**		
		The path to the `godot.AnimationPlayer` used for animating.
	**/
	@:native("AnimPlayer")
	public var animPlayer:godot.NodePath;

	/**		
		The root animation node of this `godot.AnimationTree`. See `godot.AnimationNode`.
	**/
	@:native("TreeRoot")
	public var treeRoot:godot.AnimationNode;

	@:native("new")
	public function new():Void;

	@:native("SetActive")
	public function setActive(active:Bool):Void;

	@:native("IsActive")
	public function isActive():Bool;

	@:native("SetTreeRoot")
	public function setTreeRoot(root:godot.AnimationNode):Void;

	@:native("GetTreeRoot")
	public function getTreeRoot():godot.AnimationNode;

	@:native("SetProcessMode")
	public function setProcessMode(mode:godot.AnimationTree_AnimationProcessMode):Void;

	@:native("GetProcessMode")
	public function getProcessMode():godot.AnimationTree_AnimationProcessMode;

	@:native("SetAnimationPlayer")
	public function setAnimationPlayer(root:godot.NodePath):Void;

	@:native("GetAnimationPlayer")
	public function getAnimationPlayer():godot.NodePath;

	@:native("SetRootMotionTrack")
	public function setRootMotionTrack(path:godot.NodePath):Void;

	@:native("GetRootMotionTrack")
	public function getRootMotionTrack():godot.NodePath;

	/**		
		Retrieve the motion of the `godot.AnimationTree.rootMotionTrack` as a `godot.Transform` that can be used elsewhere. If `godot.AnimationTree.rootMotionTrack` is not a path to a track of type , returns an identity transformation.
	**/
	@:native("GetRootMotionTransform")
	public function getRootMotionTransform():godot.Transform;

	@:native("RenameParameter")
	public function renameParameter(oldName:std.String, newName:std.String):Void;

	/**		
		Manually advance the animations by the specified time (in seconds).
	**/
	@:native("Advance")
	public function advance(delta:Single):Void;
}
