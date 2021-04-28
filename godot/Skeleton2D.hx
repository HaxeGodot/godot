// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Skeleton2D parents a hierarchy of `godot.Bone2D` objects. It is a requirement of `godot.Bone2D`. Skeleton2D holds a reference to the rest pose of its children and acts as a single point of access to its bones.
**/
@:libType
@:csNative
@:native("Godot.Skeleton2D")
@:autoBuild(godot.Godot.buildUserClass())
extern class Skeleton2D extends godot.Node2D {
	/**
		`bone_setup_changed` signal.
	**/
	public var onBoneSetupChanged(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onBoneSetupChanged():Signal<Void->Void> {
		return new Signal(this, "bone_setup_changed", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	@:native("new")
	public function new():Void;

	/**		
		Returns the number of `godot.Bone2D` nodes in the node hierarchy parented by Skeleton2D.
	**/
	@:native("GetBoneCount")
	public function getBoneCount():Int;

	/**		
		Returns a `godot.Bone2D` from the node hierarchy parented by Skeleton2D. The object to return is identified by the parameter `idx`. Bones are indexed by descending the node hierarchy from top to bottom, adding the children of each branch before moving to the next sibling.
	**/
	@:native("GetBone")
	public function getBone(idx:Int):godot.Bone2D;

	/**		
		Returns the `godot.RID` of a Skeleton2D instance.
	**/
	@:native("GetSkeleton")
	public function getSkeleton():godot.RID;
}
