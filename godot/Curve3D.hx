// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This class describes a Bézier curve in 3D space. It is mainly used to give a shape to a `godot.Path`, but can be manually sampled for other purposes.

It keeps a cache of precalculated points along the curve, to speed up further calculations.
**/
@:libType
@:csNative
@:native("Godot.Curve3D")
@:autoBuild(godot.Godot.buildUserClass())
extern class Curve3D extends godot.Resource {
	/**		
		If `true`, the curve will bake up vectors used for orientation. This is used when `godot.PathFollow.rotationMode` is set to . Changing it forces the cache to be recomputed.
	**/
	@:native("UpVectorEnabled")
	public var upVectorEnabled:Bool;

	@:native("_Data")
	public var _Data:godot.collections.Dictionary;

	/**		
		The distance in meters between two adjacent cached points. Changing it forces the cache to be recomputed the next time the `godot.Curve3D.getBakedPoints` or `godot.Curve3D.getBakedLength` function is called. The smaller the distance, the more points in the cache and the more memory it will consume, so use with care.
	**/
	@:native("BakeInterval")
	public var bakeInterval:Single;

	@:native("new")
	public function new():Void;

	/**		
		Returns the number of points describing the curve.
	**/
	@:native("GetPointCount")
	public function getPointCount():Int;

	#if doc_gen
	/**		
		Adds a point to a curve at `position`, with control points `in` and `out`.
		
		If `at_position` is given, the point is inserted before the point number `at_position`, moving that point (and every point after) after the inserted point. If `at_position` is not given, or is an illegal value (`at_position &lt;0` or `at_position &gt;= [method get_point_count]`), the point will be appended at the end of the point list.
		
		@param in If the parameter is null, then the default value is new Vector3(0, 0, 0)
		@param out If the parameter is null, then the default value is new Vector3(0, 0, 0)
	**/
	@:native("AddPoint")
	public function addPoint(position:godot.Vector3, ?in_:Nullable1<godot.Vector3>, ?out:Nullable1<godot.Vector3>, ?atPosition:Int):Void;
	#else
	/**		
		Adds a point to a curve at `position`, with control points `in` and `out`.
		
		If `at_position` is given, the point is inserted before the point number `at_position`, moving that point (and every point after) after the inserted point. If `at_position` is not given, or is an illegal value (`at_position &lt;0` or `at_position &gt;= [method get_point_count]`), the point will be appended at the end of the point list.
		
		@param in If the parameter is null, then the default value is new Vector3(0, 0, 0)
		@param out If the parameter is null, then the default value is new Vector3(0, 0, 0)
	**/
	@:native("AddPoint")
	public overload function addPoint(position:godot.Vector3):Void;

	/**		
		Adds a point to a curve at `position`, with control points `in` and `out`.
		
		If `at_position` is given, the point is inserted before the point number `at_position`, moving that point (and every point after) after the inserted point. If `at_position` is not given, or is an illegal value (`at_position &lt;0` or `at_position &gt;= [method get_point_count]`), the point will be appended at the end of the point list.
		
		@param in If the parameter is null, then the default value is new Vector3(0, 0, 0)
		@param out If the parameter is null, then the default value is new Vector3(0, 0, 0)
	**/
	@:native("AddPoint")
	public overload function addPoint(position:godot.Vector3, in_:Nullable1<godot.Vector3>):Void;

	/**		
		Adds a point to a curve at `position`, with control points `in` and `out`.
		
		If `at_position` is given, the point is inserted before the point number `at_position`, moving that point (and every point after) after the inserted point. If `at_position` is not given, or is an illegal value (`at_position &lt;0` or `at_position &gt;= [method get_point_count]`), the point will be appended at the end of the point list.
		
		@param in If the parameter is null, then the default value is new Vector3(0, 0, 0)
		@param out If the parameter is null, then the default value is new Vector3(0, 0, 0)
	**/
	@:native("AddPoint")
	public overload function addPoint(position:godot.Vector3, in_:Nullable1<godot.Vector3>, out:Nullable1<godot.Vector3>):Void;

	/**		
		Adds a point to a curve at `position`, with control points `in` and `out`.
		
		If `at_position` is given, the point is inserted before the point number `at_position`, moving that point (and every point after) after the inserted point. If `at_position` is not given, or is an illegal value (`at_position &lt;0` or `at_position &gt;= [method get_point_count]`), the point will be appended at the end of the point list.
		
		@param in If the parameter is null, then the default value is new Vector3(0, 0, 0)
		@param out If the parameter is null, then the default value is new Vector3(0, 0, 0)
	**/
	@:native("AddPoint")
	public overload function addPoint(position:godot.Vector3, in_:Nullable1<godot.Vector3>, out:Nullable1<godot.Vector3>, atPosition:Int):Void;
	#end

	/**		
		Sets the position for the vertex `idx`. If the index is out of bounds, the function sends an error to the console.
	**/
	@:native("SetPointPosition")
	public function setPointPosition(idx:Int, position:godot.Vector3):Void;

	/**		
		Returns the position of the vertex `idx`. If the index is out of bounds, the function sends an error to the console, and returns `(0, 0, 0)`.
	**/
	@:native("GetPointPosition")
	public function getPointPosition(idx:Int):godot.Vector3;

	/**		
		Sets the tilt angle in radians for the point `idx`. If the index is out of bounds, the function sends an error to the console.
		
		The tilt controls the rotation along the look-at axis an object traveling the path would have. In the case of a curve controlling a `godot.PathFollow`, this tilt is an offset over the natural tilt the `godot.PathFollow` calculates.
	**/
	@:native("SetPointTilt")
	public function setPointTilt(idx:Int, tilt:Single):Void;

	/**		
		Returns the tilt angle in radians for the point `idx`. If the index is out of bounds, the function sends an error to the console, and returns `0`.
	**/
	@:native("GetPointTilt")
	public function getPointTilt(idx:Int):Single;

	/**		
		Sets the position of the control point leading to the vertex `idx`. If the index is out of bounds, the function sends an error to the console.
	**/
	@:native("SetPointIn")
	public function setPointIn(idx:Int, position:godot.Vector3):Void;

	/**		
		Returns the position of the control point leading to the vertex `idx`. If the index is out of bounds, the function sends an error to the console, and returns `(0, 0, 0)`.
	**/
	@:native("GetPointIn")
	public function getPointIn(idx:Int):godot.Vector3;

	/**		
		Sets the position of the control point leading out of the vertex `idx`. If the index is out of bounds, the function sends an error to the console.
	**/
	@:native("SetPointOut")
	public function setPointOut(idx:Int, position:godot.Vector3):Void;

	/**		
		Returns the position of the control point leading out of the vertex `idx`. If the index is out of bounds, the function sends an error to the console, and returns `(0, 0, 0)`.
	**/
	@:native("GetPointOut")
	public function getPointOut(idx:Int):godot.Vector3;

	/**		
		Deletes the point `idx` from the curve. Sends an error to the console if `idx` is out of bounds.
	**/
	@:native("RemovePoint")
	public function removePoint(idx:Int):Void;

	/**		
		Removes all points from the curve.
	**/
	@:native("ClearPoints")
	public function clearPoints():Void;

	/**		
		Returns the position between the vertex `idx` and the vertex `idx + 1`, where `t` controls if the point is the first vertex (`t = 0.0`), the last vertex (`t = 1.0`), or in between. Values of `t` outside the range (`0.0 &gt;= t &lt;=1`) give strange, but predictable results.
		
		If `idx` is out of bounds it is truncated to the first or last vertex, and `t` is ignored. If the curve has no points, the function sends an error to the console, and returns `(0, 0, 0)`.
	**/
	@:native("Interpolate")
	public function interpolate(idx:Int, t:Single):godot.Vector3;

	/**		
		Returns the position at the vertex `fofs`. It calls `godot.Curve3D.interpolate` using the integer part of `fofs` as `idx`, and its fractional part as `t`.
	**/
	@:native("Interpolatef")
	public function interpolatef(fofs:Single):godot.Vector3;

	@:native("SetBakeInterval")
	public function setBakeInterval(distance:Single):Void;

	@:native("GetBakeInterval")
	public function getBakeInterval():Single;

	@:native("SetUpVectorEnabled")
	public function setUpVectorEnabled(enable:Bool):Void;

	@:native("IsUpVectorEnabled")
	public function isUpVectorEnabled():Bool;

	/**		
		Returns the total length of the curve, based on the cached points. Given enough density (see `godot.Curve3D.bakeInterval`), it should be approximate enough.
	**/
	@:native("GetBakedLength")
	public function getBakedLength():Single;

	#if doc_gen
	/**		
		Returns a point within the curve at position `offset`, where `offset` is measured as a pixel distance along the curve.
		
		To do that, it finds the two cached points where the `offset` lies between, then interpolates the values. This interpolation is cubic if `cubic` is set to `true`, or linear if set to `false`.
		
		Cubic interpolation tends to follow the curves better, but linear is faster (and often, precise enough).
	**/
	@:native("InterpolateBaked")
	public function interpolateBaked(offset:Single, ?cubic:Bool):godot.Vector3;
	#else
	/**		
		Returns a point within the curve at position `offset`, where `offset` is measured as a pixel distance along the curve.
		
		To do that, it finds the two cached points where the `offset` lies between, then interpolates the values. This interpolation is cubic if `cubic` is set to `true`, or linear if set to `false`.
		
		Cubic interpolation tends to follow the curves better, but linear is faster (and often, precise enough).
	**/
	@:native("InterpolateBaked")
	public overload function interpolateBaked(offset:Single):godot.Vector3;

	/**		
		Returns a point within the curve at position `offset`, where `offset` is measured as a pixel distance along the curve.
		
		To do that, it finds the two cached points where the `offset` lies between, then interpolates the values. This interpolation is cubic if `cubic` is set to `true`, or linear if set to `false`.
		
		Cubic interpolation tends to follow the curves better, but linear is faster (and often, precise enough).
	**/
	@:native("InterpolateBaked")
	public overload function interpolateBaked(offset:Single, cubic:Bool):godot.Vector3;
	#end

	#if doc_gen
	/**		
		Returns an up vector within the curve at position `offset`, where `offset` is measured as a distance in 3D units along the curve.
		
		To do that, it finds the two cached up vectors where the `offset` lies between, then interpolates the values. If `apply_tilt` is `true`, an interpolated tilt is applied to the interpolated up vector.
		
		If the curve has no up vectors, the function sends an error to the console, and returns `(0, 1, 0)`.
	**/
	@:native("InterpolateBakedUpVector")
	public function interpolateBakedUpVector(offset:Single, ?applyTilt:Bool):godot.Vector3;
	#else
	/**		
		Returns an up vector within the curve at position `offset`, where `offset` is measured as a distance in 3D units along the curve.
		
		To do that, it finds the two cached up vectors where the `offset` lies between, then interpolates the values. If `apply_tilt` is `true`, an interpolated tilt is applied to the interpolated up vector.
		
		If the curve has no up vectors, the function sends an error to the console, and returns `(0, 1, 0)`.
	**/
	@:native("InterpolateBakedUpVector")
	public overload function interpolateBakedUpVector(offset:Single):godot.Vector3;

	/**		
		Returns an up vector within the curve at position `offset`, where `offset` is measured as a distance in 3D units along the curve.
		
		To do that, it finds the two cached up vectors where the `offset` lies between, then interpolates the values. If `apply_tilt` is `true`, an interpolated tilt is applied to the interpolated up vector.
		
		If the curve has no up vectors, the function sends an error to the console, and returns `(0, 1, 0)`.
	**/
	@:native("InterpolateBakedUpVector")
	public overload function interpolateBakedUpVector(offset:Single, applyTilt:Bool):godot.Vector3;
	#end

	/**		
		Returns the cache of points as a `godot.Vector3`.
	**/
	@:native("GetBakedPoints")
	public function getBakedPoints():cs.NativeArray<godot.Vector3>;

	/**		
		Returns the cache of tilts as a `Single`.
	**/
	@:native("GetBakedTilts")
	public function getBakedTilts():cs.NativeArray<Single>;

	/**		
		Returns the cache of up vectors as a `godot.Vector3`.
		
		If `godot.Curve3D.upVectorEnabled` is `false`, the cache will be empty.
	**/
	@:native("GetBakedUpVectors")
	public function getBakedUpVectors():cs.NativeArray<godot.Vector3>;

	/**		
		Returns the closest point (in curve's local space) to `to_point`.
		
		`to_point` must be in this curve's local space.
	**/
	@:native("GetClosestPoint")
	public function getClosestPoint(toPoint:godot.Vector3):godot.Vector3;

	/**		
		Returns the closest offset to `to_point`. This offset is meant to be used in `godot.Curve3D.interpolateBaked` or `godot.Curve3D.interpolateBakedUpVector`.
		
		`to_point` must be in this curve's local space.
	**/
	@:native("GetClosestOffset")
	public function getClosestOffset(toPoint:godot.Vector3):Single;

	#if doc_gen
	/**		
		Returns a list of points along the curve, with a curvature controlled point density. That is, the curvier parts will have more points than the straighter parts.
		
		This approximation makes straight segments between each point, then subdivides those segments until the resulting shape is similar enough.
		
		`max_stages` controls how many subdivisions a curve segment may face before it is considered approximate enough. Each subdivision splits the segment in half, so the default 5 stages may mean up to 32 subdivisions per curve segment. Increase with care!
		
		`tolerance_degrees` controls how many degrees the midpoint of a segment may deviate from the real curve, before the segment has to be subdivided.
	**/
	@:native("Tessellate")
	public function tessellate(?maxStages:Int, ?toleranceDegrees:Single):cs.NativeArray<godot.Vector3>;
	#else
	/**		
		Returns a list of points along the curve, with a curvature controlled point density. That is, the curvier parts will have more points than the straighter parts.
		
		This approximation makes straight segments between each point, then subdivides those segments until the resulting shape is similar enough.
		
		`max_stages` controls how many subdivisions a curve segment may face before it is considered approximate enough. Each subdivision splits the segment in half, so the default 5 stages may mean up to 32 subdivisions per curve segment. Increase with care!
		
		`tolerance_degrees` controls how many degrees the midpoint of a segment may deviate from the real curve, before the segment has to be subdivided.
	**/
	@:native("Tessellate")
	public overload function tessellate():cs.NativeArray<godot.Vector3>;

	/**		
		Returns a list of points along the curve, with a curvature controlled point density. That is, the curvier parts will have more points than the straighter parts.
		
		This approximation makes straight segments between each point, then subdivides those segments until the resulting shape is similar enough.
		
		`max_stages` controls how many subdivisions a curve segment may face before it is considered approximate enough. Each subdivision splits the segment in half, so the default 5 stages may mean up to 32 subdivisions per curve segment. Increase with care!
		
		`tolerance_degrees` controls how many degrees the midpoint of a segment may deviate from the real curve, before the segment has to be subdivided.
	**/
	@:native("Tessellate")
	public overload function tessellate(maxStages:Int):cs.NativeArray<godot.Vector3>;

	/**		
		Returns a list of points along the curve, with a curvature controlled point density. That is, the curvier parts will have more points than the straighter parts.
		
		This approximation makes straight segments between each point, then subdivides those segments until the resulting shape is similar enough.
		
		`max_stages` controls how many subdivisions a curve segment may face before it is considered approximate enough. Each subdivision splits the segment in half, so the default 5 stages may mean up to 32 subdivisions per curve segment. Increase with care!
		
		`tolerance_degrees` controls how many degrees the midpoint of a segment may deviate from the real curve, before the segment has to be subdivided.
	**/
	@:native("Tessellate")
	public overload function tessellate(maxStages:Int, toleranceDegrees:Single):cs.NativeArray<godot.Vector3>;
	#end
}
