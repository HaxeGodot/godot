// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
SkeletonIK is used to place the end bone of a `godot.Skeleton` bone chain at a certain point in 3D by rotating all bones in the chain accordingly. A typical scenario for IK in games is to place a characters feet on the ground or a characters hands on a currently hold object. SkeletonIK uses FabrikInverseKinematic internally to solve the bone chain and applies the results to the `godot.Skeleton` `bones_global_pose_override` property for all affected bones in the chain. If fully applied this overwrites any bone transform from `godot.Animation`s or bone custom poses set by users. The applied amount can be controlled with the `interpolation` property.

```

# Apply IK effect automatically on every new frame (not the current)
skeleton_ik_node.start()

# Apply IK effect only on the current frame
skeleton_ik_node.start(true)

# Stop IK effect and reset bones_global_pose_override on Skeleton
skeleton_ik_node.stop()

# Apply full IK effect
skeleton_ik_node.set_interpolation(1.0)

# Apply half IK effect
skeleton_ik_node.set_interpolation(0.5)

# Apply zero IK effect (a value at or below 0.01 also removes bones_global_pose_override on Skeleton)
skeleton_ik_node.set_interpolation(0.0)

```
**/
@:libType
@:csNative
@:native("Godot.SkeletonIK")
@:autoBuild(godot.Godot.buildUserClass())
extern class SkeletonIK extends godot.Node {
	/**		
		Number of iteration loops used by the IK solver to produce more accurate (and elegant) bone chain results.
	**/
	@:native("MaxIterations")
	public var maxIterations:Int;

	/**		
		The minimum distance between bone and goal target. If the distance is below this value, the IK solver stops further iterations.
	**/
	@:native("MinDistance")
	public var minDistance:Single;

	/**		
		Target node `godot.NodePath` for the IK chain. If available, the node's current `godot.Transform` is used instead of the `godot.SkeletonIK.target` property.
	**/
	@:native("TargetNode")
	public var targetNode:godot.NodePath;

	/**		
		Secondary target position (first is `godot.SkeletonIK.target` property or `godot.SkeletonIK.targetNode`) for the IK chain. Use magnet position (pole target) to control the bending of the IK chain. Only works if the bone chain has more than 2 bones. The middle chain bone position will be linearly interpolated with the magnet position.
	**/
	@:native("Magnet")
	public var magnet:godot.Vector3;

	/**		
		If `true`, instructs the IK solver to consider the secondary magnet target (pole target) when calculating the bone chain. Use the magnet position (pole target) to control the bending of the IK chain.
	**/
	@:native("UseMagnet")
	public var useMagnet:Bool;

	/**		
		If `true` overwrites the rotation of the tip bone with the rotation of the `godot.SkeletonIK.target` (or `godot.SkeletonIK.targetNode` if defined).
	**/
	@:native("OverrideTipBasis")
	public var overrideTipBasis:Bool;

	/**		
		First target of the IK chain where the tip bone is placed and, if `godot.SkeletonIK.overrideTipBasis` is `true`, how the tip bone is rotated. If a `godot.SkeletonIK.targetNode` path is available the nodes transform is used instead and this property is ignored.
	**/
	@:native("Target")
	public var target:godot.Transform;

	/**		
		Interpolation value for how much the IK results are applied to the current skeleton bone chain. A value of `1.0` will overwrite all skeleton bone transforms completely while a value of `0.0` will visually disable the SkeletonIK. A value at or below `0.01` also calls `godot.Skeleton.clearBonesGlobalPoseOverride`.
	**/
	@:native("Interpolation")
	public var interpolation:Single;

	/**		
		The name of the current tip bone, the last bone in the IK chain placed at the `godot.SkeletonIK.target` transform (or `godot.SkeletonIK.targetNode` if defined).
	**/
	@:native("TipBone")
	public var tipBone:std.String;

	/**		
		The name of the current root bone, the first bone in the IK chain.
	**/
	@:native("RootBone")
	public var rootBone:std.String;

	@:native("new")
	public function new():Void;

	@:native("SetRootBone")
	public function setRootBone(rootBone:std.String):Void;

	@:native("GetRootBone")
	public function getRootBone():std.String;

	@:native("SetTipBone")
	public function setTipBone(tipBone:std.String):Void;

	@:native("GetTipBone")
	public function getTipBone():std.String;

	@:native("SetInterpolation")
	public function setInterpolation(interpolation:Single):Void;

	@:native("GetInterpolation")
	public function getInterpolation():Single;

	@:native("SetTargetTransform")
	public function setTargetTransform(target:godot.Transform):Void;

	@:native("GetTargetTransform")
	public function getTargetTransform():godot.Transform;

	@:native("SetTargetNode")
	public function setTargetNode(node:godot.NodePath):Void;

	@:native("GetTargetNode")
	public function getTargetNode():godot.NodePath;

	@:native("SetOverrideTipBasis")
	public function setOverrideTipBasis(override_:Bool):Void;

	@:native("IsOverrideTipBasis")
	public function isOverrideTipBasis():Bool;

	@:native("SetUseMagnet")
	public function setUseMagnet(use:Bool):Void;

	@:native("IsUsingMagnet")
	public function isUsingMagnet():Bool;

	@:native("SetMagnetPosition")
	public function setMagnetPosition(localPosition:godot.Vector3):Void;

	@:native("GetMagnetPosition")
	public function getMagnetPosition():godot.Vector3;

	/**		
		Returns the parent `godot.Skeleton` Node that was present when SkeletonIK entered the `godot.SceneTree`. Returns null if the parent node was not a `godot.Skeleton` Node when SkeletonIK entered the `godot.SceneTree`.
	**/
	@:native("GetParentSkeleton")
	public function getParentSkeleton():godot.Skeleton;

	/**		
		Returns `true` if SkeletonIK is applying IK effects on continues frames to the `godot.Skeleton` bones. Returns `false` if SkeletonIK is stopped or `godot.SkeletonIK.start` was used with the `one_time` parameter set to `true`.
	**/
	@:native("IsRunning")
	public function isRunning():Bool;

	@:native("SetMinDistance")
	public function setMinDistance(minDistance:Single):Void;

	@:native("GetMinDistance")
	public function getMinDistance():Single;

	@:native("SetMaxIterations")
	public function setMaxIterations(iterations:Int):Void;

	@:native("GetMaxIterations")
	public function getMaxIterations():Int;

	#if doc_gen
	/**		
		Starts applying IK effects on each frame to the `godot.Skeleton` bones but will only take effect starting on the next frame. If `one_time` is `true`, this will take effect immediately but also reset on the next frame.
	**/
	@:native("Start")
	public function start(?oneTime:Bool):Void;
	#else
	/**		
		Starts applying IK effects on each frame to the `godot.Skeleton` bones but will only take effect starting on the next frame. If `one_time` is `true`, this will take effect immediately but also reset on the next frame.
	**/
	@:native("Start")
	public overload function start():Void;

	/**		
		Starts applying IK effects on each frame to the `godot.Skeleton` bones but will only take effect starting on the next frame. If `one_time` is `true`, this will take effect immediately but also reset on the next frame.
	**/
	@:native("Start")
	public overload function start(oneTime:Bool):Void;
	#end

	/**		
		Stops applying IK effects on each frame to the `godot.Skeleton` bones and also calls `godot.Skeleton.clearBonesGlobalPoseOverride` to remove existing overrides on all bones.
	**/
	@:native("Stop")
	public function stop():Void;
}
