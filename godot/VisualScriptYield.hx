// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.VisualScriptYield")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualScriptYield extends godot.VisualScriptNode {
	@:native("WaitTime")
	public var waitTime:Single;

	@:native("Mode")
	public var mode:godot.VisualScriptYield_YieldMode;

	@:native("new")
	public function new():Void;

	@:native("SetYieldMode")
	public function setYieldMode(mode:godot.VisualScriptYield_YieldMode):Void;

	@:native("GetYieldMode")
	public function getYieldMode():godot.VisualScriptYield_YieldMode;

	@:native("SetWaitTime")
	public function setWaitTime(sec:Single):Void;

	@:native("GetWaitTime")
	public function getWaitTime():Single;
}
