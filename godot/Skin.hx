// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.Skin")
@:autoBuild(godot.Godot.buildUserClass())
extern class Skin extends godot.Resource {
	@:native("new")
	public function new():Void;

	@:native("SetBindCount")
	public function setBindCount(bindCount:Int):Void;

	@:native("GetBindCount")
	public function getBindCount():Int;

	@:native("AddBind")
	public function addBind(bone:Int, pose:godot.Transform):Void;

	@:native("SetBindPose")
	public function setBindPose(bindIndex:Int, pose:godot.Transform):Void;

	@:native("GetBindPose")
	public function getBindPose(bindIndex:Int):godot.Transform;

	@:native("SetBindName")
	public function setBindName(bindIndex:Int, name:std.String):Void;

	@:native("GetBindName")
	public function getBindName(bindIndex:Int):std.String;

	@:native("SetBindBone")
	public function setBindBone(bindIndex:Int, bone:Int):Void;

	@:native("GetBindBone")
	public function getBindBone(bindIndex:Int):Int;

	@:native("ClearBinds")
	public function clearBinds():Void;
}
