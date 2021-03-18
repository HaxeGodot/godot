// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Base class for GUI sliders.

Note: The `Range.changed` and `Range.value_changed` signals are part of the `godot.Range` class which this class inherits from.
**/
@:libType
@:csNative
@:native("Godot.Slider")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class Slider extends godot.Range {
	/**		
		If `true`, the slider will display ticks for minimum and maximum values.
	**/
	@:native("TicksOnBorders")
	public var ticksOnBorders:Bool;

	/**		
		Number of ticks displayed on the slider, including border ticks. Ticks are uniformly-distributed value markers.
	**/
	@:native("TickCount")
	public var tickCount:Int;

	/**		
		If `true`, the value can be changed using the mouse wheel.
	**/
	@:native("Scrollable")
	public var scrollable:Bool;

	/**		
		If `true`, the slider can be interacted with. If `false`, the value can be changed only by code.
	**/
	@:native("Editable")
	public var editable:Bool;

	@:native("SetTicks")
	public function setTicks(count:Int):Void;

	@:native("GetTicks")
	public function getTicks():Int;

	@:native("GetTicksOnBorders")
	public function getTicksOnBorders():Bool;

	@:native("SetTicksOnBorders")
	public function setTicksOnBorders(ticksOnBorder:Bool):Void;

	@:native("SetEditable")
	public function setEditable(editable:Bool):Void;

	@:native("IsEditable")
	public function isEditable():Bool;

	@:native("SetScrollable")
	public function setScrollable(scrollable:Bool):Void;

	@:native("IsScrollable")
	public function isScrollable():Bool;
}
