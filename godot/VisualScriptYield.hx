// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
`godot.VisualScriptYield` will pause the function call and return `godot.VisualScriptFunctionState`, which can be used to resume the function.
**/
@:libType
@:csNative
@:native("Godot.VisualScriptYield")
@:autoBuild(godot.Godot.buildUserClass())
extern class VisualScriptYield extends godot.VisualScriptNode {
	/**		
		The time to wait when `godot.VisualScriptYield.mode` is set to `godot.VisualScriptYield_YieldMode.wait`.
	**/
	@:native("WaitTime")
	public var waitTime:Single;

	/**		
		The mode to use for yielding. See `godot.VisualScriptYield_YieldMode` for available options.
	**/
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
