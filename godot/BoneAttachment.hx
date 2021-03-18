// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This node must be the child of a `godot.Skeleton` node. You can then select a bone for this node to attach to. The BoneAttachment node will copy the transform of the selected bone.
**/
@:libType
@:csNative
@:native("Godot.BoneAttachment")
@:autoBuild(godot.Godot.buildUserClass())
extern class BoneAttachment extends godot.Spatial {
	/**		
		The name of the attached bone.
	**/
	@:native("BoneName")
	public var boneName:std.String;

	@:native("new")
	public function new():Void;

	@:native("SetBoneName")
	public function setBoneName(boneName:std.String):Void;

	@:native("GetBoneName")
	public function getBoneName():std.String;
}
