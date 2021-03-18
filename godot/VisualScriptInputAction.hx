// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.VisualScriptInputAction")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualScriptInputAction extends godot.VisualScriptNode {
	@:native("Mode")
	public var mode:godot.VisualScriptInputAction_ModeEnum;

	@:native("Action")
	public var action:std.String;

	@:native("new")
	public function new():Void;

	@:native("SetActionName")
	public function setActionName(name:std.String):Void;

	@:native("GetActionName")
	public function getActionName():std.String;

	@:native("SetActionMode")
	public function setActionMode(mode:godot.VisualScriptInputAction_ModeEnum):Void;

	@:native("GetActionMode")
	public function getActionMode():godot.VisualScriptInputAction_ModeEnum;
}
