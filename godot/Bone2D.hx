// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Use a hierarchy of `Bone2D` bound to a `godot.Skeleton2D` to control, and animate other `godot.Node2D` nodes.

You can use `Bone2D` and `Skeleton2D` nodes to animate 2D meshes created with the Polygon 2D UV editor.

Each bone has a `godot.Bone2D.rest` transform that you can reset to with `godot.Bone2D.applyRest`. These rest poses are relative to the bone's parent.

If in the editor, you can set the rest pose of an entire skeleton using a menu option, from the code, you need to iterate over the bones to set their individual rest poses.
**/
@:libType
@:csNative
@:native("Godot.Bone2D")
@:autoBuild(godot.Godot.buildUserClass())
extern class Bone2D extends godot.Node2D {
	/**		
		Length of the bone's representation drawn in the editor's viewport in pixels.
	**/
	@:native("DefaultLength")
	public var defaultLength:Single;

	/**		
		Rest transform of the bone. You can reset the node's transforms to this value using `godot.Bone2D.applyRest`.
	**/
	@:native("Rest")
	public var rest:godot.Transform2D;

	@:native("new")
	public function new():Void;

	@:native("SetRest")
	public function setRest(rest:godot.Transform2D):Void;

	@:native("GetRest")
	public function getRest():godot.Transform2D;

	/**		
		Stores the node's current transforms in `godot.Bone2D.rest`.
	**/
	@:native("ApplyRest")
	public function applyRest():Void;

	/**		
		Returns the node's `godot.Bone2D.rest` `Transform2D` if it doesn't have a parent, or its rest pose relative to its parent.
	**/
	@:native("GetSkeletonRest")
	public function getSkeletonRest():godot.Transform2D;

	/**		
		Returns the node's index as part of the entire skeleton. See `godot.Skeleton2D`.
	**/
	@:native("GetIndexInSkeleton")
	public function getIndexInSkeleton():Int;

	@:native("SetDefaultLength")
	public function setDefaultLength(defaultLength:Single):Void;

	@:native("GetDefaultLength")
	public function getDefaultLength():Single;
}
