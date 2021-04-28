// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A curve that can be saved and re-used for other objects. By default, it ranges between `0` and `1` on the Y axis and positions points relative to the `0.5` Y position.
**/
@:libType
@:csNative
@:native("Godot.Curve")
@:autoBuild(godot.Godot.buildUserClass())
extern class Curve extends godot.Resource {
	/**
		`range_changed` signal.
		
		Emitted when `maxValue` or `minValue` is changed.
	**/
	public var onRangeChanged(get, never):Signal<Void->Void>;
	@:dox(hide) @:noCompletion inline function get_onRangeChanged():Signal<Void->Void> {
		return new Signal(this, "range_changed", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	@:native("_Data")
	public var _Data:godot.collections.Array;

	/**		
		The number of points to include in the baked (i.e. cached) curve data.
	**/
	@:native("BakeResolution")
	public var bakeResolution:Int;

	/**		
		The maximum value the curve can reach.
	**/
	@:native("MaxValue")
	public var maxValue:Single;

	/**		
		The minimum value the curve can reach.
	**/
	@:native("MinValue")
	public var minValue:Single;

	@:native("new")
	public function new():Void;

	/**		
		Returns the number of points describing the curve.
	**/
	@:native("GetPointCount")
	public function getPointCount():Int;

	#if doc_gen
	/**		
		Adds a point to the curve. For each side, if the `*_mode` is , the `*_tangent` angle (in degrees) uses the slope of the curve halfway to the adjacent point. Allows custom assignments to the `*_tangent` angle if `*_mode` is set to .
	**/
	@:native("AddPoint")
	public function addPoint(position:godot.Vector2, ?leftTangent:Single, ?rightTangent:Single, ?leftMode:godot.Curve_TangentMode, ?rightMode:godot.Curve_TangentMode):Int;
	#else
	/**		
		Adds a point to the curve. For each side, if the `*_mode` is , the `*_tangent` angle (in degrees) uses the slope of the curve halfway to the adjacent point. Allows custom assignments to the `*_tangent` angle if `*_mode` is set to .
	**/
	@:native("AddPoint")
	public overload function addPoint(position:godot.Vector2):Int;

	/**		
		Adds a point to the curve. For each side, if the `*_mode` is , the `*_tangent` angle (in degrees) uses the slope of the curve halfway to the adjacent point. Allows custom assignments to the `*_tangent` angle if `*_mode` is set to .
	**/
	@:native("AddPoint")
	public overload function addPoint(position:godot.Vector2, leftTangent:Single):Int;

	/**		
		Adds a point to the curve. For each side, if the `*_mode` is , the `*_tangent` angle (in degrees) uses the slope of the curve halfway to the adjacent point. Allows custom assignments to the `*_tangent` angle if `*_mode` is set to .
	**/
	@:native("AddPoint")
	public overload function addPoint(position:godot.Vector2, leftTangent:Single, rightTangent:Single):Int;

	/**		
		Adds a point to the curve. For each side, if the `*_mode` is , the `*_tangent` angle (in degrees) uses the slope of the curve halfway to the adjacent point. Allows custom assignments to the `*_tangent` angle if `*_mode` is set to .
	**/
	@:native("AddPoint")
	public overload function addPoint(position:godot.Vector2, leftTangent:Single, rightTangent:Single, leftMode:godot.Curve_TangentMode):Int;

	/**		
		Adds a point to the curve. For each side, if the `*_mode` is , the `*_tangent` angle (in degrees) uses the slope of the curve halfway to the adjacent point. Allows custom assignments to the `*_tangent` angle if `*_mode` is set to .
	**/
	@:native("AddPoint")
	public overload function addPoint(position:godot.Vector2, leftTangent:Single, rightTangent:Single, leftMode:godot.Curve_TangentMode, rightMode:godot.Curve_TangentMode):Int;
	#end

	/**		
		Removes the point at `index` from the curve.
	**/
	@:native("RemovePoint")
	public function removePoint(index:Int):Void;

	/**		
		Removes all points from the curve.
	**/
	@:native("ClearPoints")
	public function clearPoints():Void;

	/**		
		Returns the curve coordinates for the point at `index`.
	**/
	@:native("GetPointPosition")
	public function getPointPosition(index:Int):godot.Vector2;

	/**		
		Assigns the vertical position `y` to the point at `index`.
	**/
	@:native("SetPointValue")
	public function setPointValue(index:Int, y:Single):Void;

	/**		
		Sets the offset from `0.5`.
	**/
	@:native("SetPointOffset")
	public function setPointOffset(index:Int, offset:Single):Int;

	/**		
		Returns the Y value for the point that would exist at the X position `offset` along the curve.
	**/
	@:native("Interpolate")
	public function interpolate(offset:Single):Single;

	/**		
		Returns the Y value for the point that would exist at the X position `offset` along the curve using the baked cache. Bakes the curve's points if not already baked.
	**/
	@:native("InterpolateBaked")
	public function interpolateBaked(offset:Single):Single;

	/**		
		Returns the left tangent angle (in degrees) for the point at `index`.
	**/
	@:native("GetPointLeftTangent")
	public function getPointLeftTangent(index:Int):Single;

	/**		
		Returns the right tangent angle (in degrees) for the point at `index`.
	**/
	@:native("GetPointRightTangent")
	public function getPointRightTangent(index:Int):Single;

	/**		
		Returns the left `godot.Curve_TangentMode` for the point at `index`.
	**/
	@:native("GetPointLeftMode")
	public function getPointLeftMode(index:Int):godot.Curve_TangentMode;

	/**		
		Returns the right `godot.Curve_TangentMode` for the point at `index`.
	**/
	@:native("GetPointRightMode")
	public function getPointRightMode(index:Int):godot.Curve_TangentMode;

	/**		
		Sets the left tangent angle for the point at `index` to `tangent`.
	**/
	@:native("SetPointLeftTangent")
	public function setPointLeftTangent(index:Int, tangent:Single):Void;

	/**		
		Sets the right tangent angle for the point at `index` to `tangent`.
	**/
	@:native("SetPointRightTangent")
	public function setPointRightTangent(index:Int, tangent:Single):Void;

	/**		
		Sets the left `godot.Curve_TangentMode` for the point at `index` to `mode`.
	**/
	@:native("SetPointLeftMode")
	public function setPointLeftMode(index:Int, mode:godot.Curve_TangentMode):Void;

	/**		
		Sets the right `godot.Curve_TangentMode` for the point at `index` to `mode`.
	**/
	@:native("SetPointRightMode")
	public function setPointRightMode(index:Int, mode:godot.Curve_TangentMode):Void;

	@:native("GetMinValue")
	public function getMinValue():Single;

	@:native("SetMinValue")
	public function setMinValue(min:Single):Void;

	@:native("GetMaxValue")
	public function getMaxValue():Single;

	@:native("SetMaxValue")
	public function setMaxValue(max:Single):Void;

	/**		
		Removes points that are closer than `CMP_EPSILON` (0.00001) units to their neighbor on the curve.
	**/
	@:native("CleanDupes")
	public function cleanDupes():Void;

	/**		
		Recomputes the baked cache of points for the curve.
	**/
	@:native("Bake")
	public function bake():Void;

	@:native("GetBakeResolution")
	public function getBakeResolution():Int;

	@:native("SetBakeResolution")
	public function setBakeResolution(resolution:Int):Void;
}
