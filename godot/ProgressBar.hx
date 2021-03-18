// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
General-purpose progress bar. Shows fill percentage from right to left.
**/
@:libType
@:csNative
@:native("Godot.ProgressBar")
@:autoBuild(godot.Godot.buildUserClass())
extern class ProgressBar extends godot.Range {
	/**		
		If `true`, the fill percentage is displayed on the bar.
	**/
	@:native("PercentVisible")
	public var percentVisible:Bool;

	@:native("new")
	public function new():Void;

	@:native("SetPercentVisible")
	public function setPercentVisible(visible:Bool):Void;

	@:native("IsPercentVisible")
	public function isPercentVisible():Bool;
}
