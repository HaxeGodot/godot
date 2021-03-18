// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This node takes its parent `godot.Path2D`, and returns the coordinates of a point within it, given a distance from the first vertex.

It is useful for making other nodes follow a path, without coding the movement pattern. For that, the nodes must be children of this node. The descendant nodes will then move accordingly when setting an offset in this node.
**/
@:libType
@:csNative
@:native("Godot.PathFollow2D")
@:autoBuild(godot.Godot.buildUserClass())
extern class PathFollow2D extends godot.Node2D {
	/**		
		How far to look ahead of the curve to calculate the tangent if the node is rotating. E.g. shorter lookaheads will lead to faster rotations.
	**/
	@:native("Lookahead")
	public var lookahead:Single;

	/**		
		If `true`, any offset outside the path's length will wrap around, instead of stopping at the ends. Use it for cyclic paths.
	**/
	@:native("Loop")
	public var loop:Bool;

	/**		
		If `true`, the position between two cached points is interpolated cubically, and linearly otherwise.
		
		The points along the `godot.Curve2D` of the `godot.Path2D` are precomputed before use, for faster calculations. The point at the requested offset is then calculated interpolating between two adjacent cached points. This may present a problem if the curve makes sharp turns, as the cached points may not follow the curve closely enough.
		
		There are two answers to this problem: either increase the number of cached points and increase memory consumption, or make a cubic interpolation between two points at the cost of (slightly) slower calculations.
	**/
	@:native("CubicInterp")
	public var cubicInterp:Bool;

	/**		
		If `true`, this node rotates to follow the path, making its descendants rotate.
	**/
	@:native("Rotate")
	public var rotate:Bool;

	/**		
		The node's offset perpendicular to the curve.
	**/
	@:native("VOffset")
	public var vOffset:Single;

	/**		
		The node's offset along the curve.
	**/
	@:native("HOffset")
	public var hOffset:Single;

	/**		
		The distance along the path as a number in the range 0.0 (for the first vertex) to 1.0 (for the last). This is just another way of expressing the offset within the path, as the offset supplied is multiplied internally by the path's length.
	**/
	@:native("UnitOffset")
	public var unitOffset:Single;

	/**		
		The distance along the path in pixels.
	**/
	@:native("Offset")
	public var offset:Single;

	@:native("new")
	public function new():Void;

	@:native("SetOffset")
	public function setOffset(offset:Single):Void;

	@:native("GetOffset")
	public function getOffset():Single;

	@:native("SetHOffset")
	public function setHOffset(hOffset:Single):Void;

	@:native("GetHOffset")
	public function getHOffset():Single;

	@:native("SetVOffset")
	public function setVOffset(vOffset:Single):Void;

	@:native("GetVOffset")
	public function getVOffset():Single;

	@:native("SetUnitOffset")
	public function setUnitOffset(unitOffset:Single):Void;

	@:native("GetUnitOffset")
	public function getUnitOffset():Single;

	@:native("SetRotate")
	public function setRotate(enable:Bool):Void;

	@:native("IsRotating")
	public function isRotating():Bool;

	@:native("SetCubicInterpolation")
	public function setCubicInterpolation(enable:Bool):Void;

	@:native("GetCubicInterpolation")
	public function getCubicInterpolation():Bool;

	@:native("SetLoop")
	public function setLoop(loop:Bool):Void;

	@:native("HasLoop")
	public function hasLoop():Bool;

	@:native("SetLookahead")
	public function setLookahead(lookahead:Single):Void;

	@:native("GetLookahead")
	public function getLookahead():Single;
}
