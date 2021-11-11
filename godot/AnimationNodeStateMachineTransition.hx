// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.AnimationNodeStateMachineTransition")
@:autoBuild(godot.Godot.buildUserClass())
extern class AnimationNodeStateMachineTransition extends godot.Resource {
	/**
		`advance_condition_changed` signal.
		
		Emitted when `advanceCondition` is changed.
	**/
	public var onAdvanceConditionChanged(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onAdvanceConditionChanged():Signal<Void->Void> {
		return new Signal(this, "advance_condition_changed", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**		
		Don't use this transition during `godot.AnimationNodeStateMachinePlayback.travel` or `godot.AnimationNodeStateMachineTransition.autoAdvance`.
	**/
	@:native("Disabled")
	public var disabled:Bool;

	/**		
		Lower priority transitions are preferred when travelling through the tree via `godot.AnimationNodeStateMachinePlayback.travel` or `godot.AnimationNodeStateMachineTransition.autoAdvance`.
	**/
	@:native("Priority")
	public var priority:Int;

	/**		
		The time to cross-fade between this state and the next.
	**/
	@:native("XfadeTime")
	public var xfadeTime:Single;

	/**		
		Turn on auto advance when this condition is set. The provided name will become a boolean parameter on the `godot.AnimationTree` that can be controlled from code (see [https://docs.godotengine.org/en/3.4/tutorials/animation/animation_tree.html#controlling-from-code]()). For example, if `godot.AnimationTree.treeRoot` is an `godot.AnimationNodeStateMachine` and `godot.AnimationNodeStateMachineTransition.advanceCondition` is set to `"idle"`:
		
		```
		
		$animation_tree["parameters/conditions/idle"] = is_on_floor and (linear_velocity.x == 0)
		
		```
	**/
	@:native("AdvanceCondition")
	public var advanceCondition:std.String;

	/**		
		Turn on the transition automatically when this state is reached. This works best with `godot.AnimationNodeStateMachineTransition_SwitchModeEnum.atEnd`.
	**/
	@:native("AutoAdvance")
	public var autoAdvance:Bool;

	/**		
		The transition type.
	**/
	@:native("SwitchMode")
	public var switchMode:godot.AnimationNodeStateMachineTransition_SwitchModeEnum;

	@:native("new")
	public function new():Void;

	@:native("SetSwitchMode")
	public function setSwitchMode(mode:godot.AnimationNodeStateMachineTransition_SwitchModeEnum):Void;

	@:native("GetSwitchMode")
	public function getSwitchMode():godot.AnimationNodeStateMachineTransition_SwitchModeEnum;

	@:native("SetAutoAdvance")
	public function setAutoAdvance(autoAdvance:Bool):Void;

	@:native("HasAutoAdvance")
	public function hasAutoAdvance():Bool;

	@:native("SetAdvanceCondition")
	public function setAdvanceCondition(name:std.String):Void;

	@:native("GetAdvanceCondition")
	public function getAdvanceCondition():std.String;

	@:native("SetXfadeTime")
	public function setXfadeTime(secs:Single):Void;

	@:native("GetXfadeTime")
	public function getXfadeTime():Single;

	@:native("SetDisabled")
	public function setDisabled(disabled:Bool):Void;

	@:native("IsDisabled")
	public function isDisabled():Bool;

	@:native("SetPriority")
	public function setPriority(priority:Int):Void;

	@:native("GetPriority")
	public function getPriority():Int;
}
