// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
`godot.VisualScriptInputAction` can be used to check if an action is pressed or released.
**/
@:libType
@:csNative
@:native("Godot.VisualScriptInputAction")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualScriptInputAction extends godot.VisualScriptNode {
	/**		
		State of the action to check. See `godot.VisualScriptInputAction_ModeEnum` for options.
	**/
	@:native("Mode")
	public var mode:godot.VisualScriptInputAction_ModeEnum;

	/**		
		Name of the action.
	**/
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
