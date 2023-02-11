// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Range is a base class for `godot.Control` nodes that change a floating-point value between a minimum and a maximum, using step and page, for example a `godot.ScrollBar`.
**/
@:libType
@:csNative
@:native("Godot.Range")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class Range extends godot.Control {
	/**
		`changed` signal.
	**/
	public var onChanged(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onChanged():Signal<Void->Void> {
		return new Signal(this, "changed", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`value_changed` signal.
	**/
	public var onValueChanged(get, never):Signal<(value:Float)->Void>;
	@:dox(hide) @:noCompletion inline function get_onValueChanged():Signal<(value:Float)->Void> {
		return new Signal(this, "value_changed", Signal.SignalHandlerFloatVoid.connectSignal, Signal.SignalHandlerFloatVoid.disconnectSignal, Signal.SignalHandlerFloatVoid.isSignalConnected);
	}

	/**		
		If `true`, `godot.Range.value` may be less than `godot.Range.minValue`.
	**/
	@:native("AllowLesser")
	public var allowLesser:Bool;

	/**		
		If `true`, `godot.Range.value` may be greater than `godot.Range.maxValue`.
	**/
	@:native("AllowGreater")
	public var allowGreater:Bool;

	/**		
		If `true`, `value` will always be rounded to the nearest integer.
	**/
	@:native("Rounded")
	public var rounded:Bool;

	/**		
		If `true`, and `min_value` is greater than 0, `value` will be represented exponentially rather than linearly.
	**/
	@:native("ExpEdit")
	public var expEdit:Bool;

	/**		
		The value mapped between 0 and 1.
	**/
	@:native("Ratio")
	public var ratio:Float;

	/**		
		Range's current value.
	**/
	@:native("Value")
	public var value:Float;

	/**		
		Page size. Used mainly for `godot.ScrollBar`. ScrollBar's length is its size multiplied by `page` over the difference between `min_value` and `max_value`.
	**/
	@:native("Page")
	public var page:Float;

	/**		
		If greater than 0, `value` will always be rounded to a multiple of `step`. If `rounded` is also `true`, `value` will first be rounded to a multiple of `step` then rounded to the nearest integer.
	**/
	@:native("Step")
	public var step:Float;

	/**		
		Maximum value. Range is clamped if `value` is greater than `max_value`.
	**/
	@:native("MaxValue")
	public var maxValue:Float;

	/**		
		Minimum value. Range is clamped if `value` is less than `min_value`.
	**/
	@:native("MinValue")
	public var minValue:Float;

	@:native("GetValue")
	public function getValue():Float;

	@:native("GetMin")
	public function getMin():Float;

	@:native("GetMax")
	public function getMax():Float;

	@:native("GetStep")
	public function getStep():Float;

	@:native("GetPage")
	public function getPage():Float;

	@:native("GetAsRatio")
	public function getAsRatio():Float;

	@:native("SetValue")
	public function setValue(value:Float):Void;

	@:native("SetMin")
	public function setMin(minimum:Float):Void;

	@:native("SetMax")
	public function setMax(maximum:Float):Void;

	@:native("SetStep")
	public function setStep(step:Float):Void;

	@:native("SetPage")
	public function setPage(pagesize:Float):Void;

	@:native("SetAsRatio")
	public function setAsRatio(value:Float):Void;

	@:native("SetUseRoundedValues")
	public function setUseRoundedValues(enabled:Bool):Void;

	@:native("IsUsingRoundedValues")
	public function isUsingRoundedValues():Bool;

	@:native("SetExpRatio")
	public function setExpRatio(enabled:Bool):Void;

	@:native("IsRatioExp")
	public function isRatioExp():Bool;

	@:native("SetAllowGreater")
	public function setAllowGreater(allow:Bool):Void;

	@:native("IsGreaterAllowed")
	public function isGreaterAllowed():Bool;

	@:native("SetAllowLesser")
	public function setAllowLesser(allow:Bool):Void;

	@:native("IsLesserAllowed")
	public function isLesserAllowed():Bool;

	/**		
		Binds two `godot.Range`s together along with any ranges previously grouped with either of them. When any of range's member variables change, it will share the new value with all other ranges in its group.
	**/
	@:native("Share")
	public function share(with:godot.Node):Void;

	/**		
		Stops the `godot.Range` from sharing its member variables with any other.
	**/
	@:native("Unshare")
	public function unshare():Void;
}
