// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Skeleton provides a hierarchical interface for managing bones, including pose, rest and animation (see `godot.Animation`). It can also use ragdoll physics.

The overall transform of a bone with respect to the skeleton is determined by the following hierarchical order: rest pose, custom pose and pose.

Note that "global pose" below refers to the overall transform of the bone with respect to skeleton, so it not the actual global/world transform of the bone.
**/
@:libType
@:csNative
@:native("Godot.Skeleton")
@:autoBuild(godot.Godot.buildUserClass())
extern class Skeleton extends godot.Spatial {
	/**
		`skeleton_updated` signal.
	**/
	public var onSkeletonUpdated(get, never):Signal<Void->Void>;
	@:dox(hide) inline function get_onSkeletonUpdated():Signal<Void->Void> {
		return new Signal(this, "skeleton_updated", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	@:native("NotificationUpdateSkeleton")
	public static var NOTIFICATION_UPDATE_SKELETON(default, never):Int;

	@:native("new")
	public function new():Void;

	/**		
		Adds a bone, with name `name`. `godot.Skeleton.getBoneCount` will become the bone index.
	**/
	@:native("AddBone")
	public function addBone(name:std.String):Void;

	/**		
		Returns the bone index that matches `name` as its name.
	**/
	@:native("FindBone")
	public function findBone(name:std.String):Int;

	/**		
		Returns the name of the bone at index `index`.
	**/
	@:native("GetBoneName")
	public function getBoneName(boneIdx:Int):std.String;

	/**		
		Returns the bone index which is the parent of the bone at `bone_idx`. If -1, then bone has no parent.
		
		Note: The parent bone returned will always be less than `bone_idx`.
	**/
	@:native("GetBoneParent")
	public function getBoneParent(boneIdx:Int):Int;

	/**		
		Sets the bone index `parent_idx` as the parent of the bone at `bone_idx`. If -1, then bone has no parent.
		
		Note: `parent_idx` must be less than `bone_idx`.
	**/
	@:native("SetBoneParent")
	public function setBoneParent(boneIdx:Int, parentIdx:Int):Void;

	/**		
		Returns the amount of bones in the skeleton.
	**/
	@:native("GetBoneCount")
	public function getBoneCount():Int;

	@:native("UnparentBoneAndRest")
	public function unparentBoneAndRest(boneIdx:Int):Void;

	/**		
		Returns the rest transform for a bone `bone_idx`.
	**/
	@:native("GetBoneRest")
	public function getBoneRest(boneIdx:Int):godot.Transform;

	/**		
		Sets the rest transform for bone `bone_idx`.
	**/
	@:native("SetBoneRest")
	public function setBoneRest(boneIdx:Int, rest:godot.Transform):Void;

	@:native("RegisterSkin")
	public function registerSkin(skin:godot.Skin):godot.SkinReference;

	@:native("LocalizeRests")
	public function localizeRests():Void;

	@:native("SetBoneDisableRest")
	public function setBoneDisableRest(boneIdx:Int, disable:Bool):Void;

	@:native("IsBoneRestDisabled")
	public function isBoneRestDisabled(boneIdx:Int):Bool;

	/**		
		Deprecated soon.
	**/
	@:native("BindChildNodeToBone")
	public function bindChildNodeToBone(boneIdx:Int, node:godot.Node):Void;

	/**		
		Deprecated soon.
	**/
	@:native("UnbindChildNodeFromBone")
	public function unbindChildNodeFromBone(boneIdx:Int, node:godot.Node):Void;

	/**		
		Deprecated soon.
	**/
	@:native("GetBoundChildNodesToBone")
	public function getBoundChildNodesToBone(boneIdx:Int):godot.collections.Array;

	/**		
		Clear all the bones in this skeleton.
	**/
	@:native("ClearBones")
	public function clearBones():Void;

	/**		
		Returns the pose transform of the specified bone. Pose is applied on top of the custom pose, which is applied on top the rest pose.
	**/
	@:native("GetBonePose")
	public function getBonePose(boneIdx:Int):godot.Transform;

	/**		
		Sets the pose transform for bone `bone_idx`.
	**/
	@:native("SetBonePose")
	public function setBonePose(boneIdx:Int, pose:godot.Transform):Void;

	@:native("ClearBonesGlobalPoseOverride")
	public function clearBonesGlobalPoseOverride():Void;

	#if doc_gen
	@:native("SetBoneGlobalPoseOverride")
	public function setBoneGlobalPoseOverride(boneIdx:Int, pose:godot.Transform, amount:Single, ?persistent:Bool):Void;
	#else
	@:native("SetBoneGlobalPoseOverride")
	public overload function setBoneGlobalPoseOverride(boneIdx:Int, pose:godot.Transform, amount:Single):Void;

	@:native("SetBoneGlobalPoseOverride")
	public overload function setBoneGlobalPoseOverride(boneIdx:Int, pose:godot.Transform, amount:Single, persistent:Bool):Void;
	#end

	/**		
		Returns the overall transform of the specified bone, with respect to the skeleton. Being relative to the skeleton frame, this is not the actual "global" transform of the bone.
	**/
	@:native("GetBoneGlobalPose")
	public function getBoneGlobalPose(boneIdx:Int):godot.Transform;

	/**		
		Returns the custom pose of the specified bone. Custom pose is applied on top of the rest pose.
	**/
	@:native("GetBoneCustomPose")
	public function getBoneCustomPose(boneIdx:Int):godot.Transform;

	@:native("SetBoneCustomPose")
	public function setBoneCustomPose(boneIdx:Int, customPose:godot.Transform):Void;

	@:native("PhysicalBonesStopSimulation")
	public function physicalBonesStopSimulation():Void;

	#if doc_gen
	/**		
		@param bones If the parameter is null, then the default value is new Godot.Collections.Array {}
	**/
	@:native("PhysicalBonesStartSimulation")
	public function physicalBonesStartSimulation(?bones:godot.collections.Array):Void;
	#else
	/**		
		@param bones If the parameter is null, then the default value is new Godot.Collections.Array {}
	**/
	@:native("PhysicalBonesStartSimulation")
	public overload function physicalBonesStartSimulation():Void;

	/**		
		@param bones If the parameter is null, then the default value is new Godot.Collections.Array {}
	**/
	@:native("PhysicalBonesStartSimulation")
	public overload function physicalBonesStartSimulation(bones:godot.collections.Array):Void;
	#end

	@:native("PhysicalBonesAddCollisionException")
	public function physicalBonesAddCollisionException(exception:godot.RID):Void;

	@:native("PhysicalBonesRemoveCollisionException")
	public function physicalBonesRemoveCollisionException(exception:godot.RID):Void;
}
