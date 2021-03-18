// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.SkeletonIK")
@:autoBuild(godot.Godot.buildUserClass())
extern class SkeletonIK extends godot.Node {
	@:native("MaxIterations")
	public var maxIterations:Int;

	@:native("MinDistance")
	public var minDistance:Single;

	@:native("TargetNode")
	public var targetNode:godot.NodePath;

	@:native("Magnet")
	public var magnet:godot.Vector3;

	@:native("UseMagnet")
	public var useMagnet:Bool;

	@:native("OverrideTipBasis")
	public var overrideTipBasis:Bool;

	@:native("Target")
	public var target:godot.Transform;

	@:native("Interpolation")
	public var interpolation:Single;

	@:native("TipBone")
	public var tipBone:std.String;

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

	@:native("GetParentSkeleton")
	public function getParentSkeleton():godot.Skeleton;

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
	@:native("Start")
	public function start(?oneTime:Bool):Void;
	#else
	@:native("Start")
	public overload function start():Void;

	@:native("Start")
	public overload function start(oneTime:Bool):Void;
	#end

	@:native("Stop")
	public function stop():Void;
}
