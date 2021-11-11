// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A* (A star) is a computer algorithm that is widely used in pathfinding and graph traversal, the process of plotting short paths among vertices (points), passing through a given set of edges (segments). It enjoys widespread use due to its performance and accuracy. Godot's A* implementation uses points in three-dimensional space and Euclidean distances by default.

You must add points manually with `godot.AStar.addPoint` and create segments manually with `godot.AStar.connectPoints`. Then you can test if there is a path between two points with the `godot.AStar.arePointsConnected` function, get a path containing indices by `godot.AStar.getIdPath`, or one containing actual coordinates with `godot.AStar.getPointPath`.

It is also possible to use non-Euclidean distances. To do so, create a class that extends `AStar` and override methods `godot.AStar._ComputeCost` and `godot.AStar._EstimateCost`. Both take two indices and return a length, as is shown in the following example.

```

class MyAStar:
extends AStar

func _compute_cost(u, v):
return abs(u - v)

func _estimate_cost(u, v):
return min(0, abs(u - v) - 1)

```

`godot.AStar._EstimateCost` should return a lower bound of the distance, i.e. `_estimate_cost(u, v) &lt;= _compute_cost(u, v)`. This serves as a hint to the algorithm because the custom `_compute_cost` might be computation-heavy. If this is not the case, make `godot.AStar._EstimateCost` return the same value as `godot.AStar._ComputeCost` to provide the algorithm with the most accurate information.

If the default `godot.AStar._EstimateCost` and `godot.AStar._ComputeCost` methods are used, or if the supplied `godot.AStar._EstimateCost` method returns a lower bound of the cost, then the paths returned by A* will be the lowest-cost paths. Here, the cost of a path equals the sum of the `godot.AStar._ComputeCost` results of all segments in the path multiplied by the `weight_scale`s of the endpoints of the respective segments. If the default methods are used and the `weight_scale`s of all points are set to `1.0`, then this equals the sum of Euclidean distances of all segments in the path.
**/
@:libType
@:csNative
@:native("Godot.AStar")
@:autoBuild(godot.Godot.buildUserClass())
extern class AStar extends godot.Reference {
	@:native("new")
	public function new():Void;

	/**		
		Called when computing the cost between two connected points.
		
		Note that this function is hidden in the default `AStar` class.
	**/
	@:native("_ComputeCost")
	public function _ComputeCost(fromId:Int, toId:Int):Single;

	/**		
		Called when estimating the cost between a point and the path's ending point.
		
		Note that this function is hidden in the default `AStar` class.
	**/
	@:native("_EstimateCost")
	public function _EstimateCost(fromId:Int, toId:Int):Single;

	/**		
		Returns the next available point ID with no point associated to it.
	**/
	@:native("GetAvailablePointId")
	public function getAvailablePointId():Int;

	#if doc_gen
	/**		
		Adds a new point at the given position with the given identifier. The `id` must be 0 or larger, and the `weight_scale` must be 1 or larger.
		
		The `weight_scale` is multiplied by the result of `godot.AStar._ComputeCost` when determining the overall cost of traveling across a segment from a neighboring point to this point. Thus, all else being equal, the algorithm prefers points with lower `weight_scale`s to form a path.
		
		```
		
		var astar = AStar.new()
		astar.add_point(1, Vector3(1, 0, 0), 4) # Adds the point (1, 0, 0) with weight_scale 4 and id 1
		
		```
		
		If there already exists a point for the given `id`, its position and weight scale are updated to the given values.
	**/
	@:native("AddPoint")
	public function addPoint(id:Int, position:godot.Vector3, ?weightScale:Single):Void;
	#else
	/**		
		Adds a new point at the given position with the given identifier. The `id` must be 0 or larger, and the `weight_scale` must be 1 or larger.
		
		The `weight_scale` is multiplied by the result of `godot.AStar._ComputeCost` when determining the overall cost of traveling across a segment from a neighboring point to this point. Thus, all else being equal, the algorithm prefers points with lower `weight_scale`s to form a path.
		
		```
		
		var astar = AStar.new()
		astar.add_point(1, Vector3(1, 0, 0), 4) # Adds the point (1, 0, 0) with weight_scale 4 and id 1
		
		```
		
		If there already exists a point for the given `id`, its position and weight scale are updated to the given values.
	**/
	@:native("AddPoint")
	public overload function addPoint(id:Int, position:godot.Vector3):Void;

	/**		
		Adds a new point at the given position with the given identifier. The `id` must be 0 or larger, and the `weight_scale` must be 1 or larger.
		
		The `weight_scale` is multiplied by the result of `godot.AStar._ComputeCost` when determining the overall cost of traveling across a segment from a neighboring point to this point. Thus, all else being equal, the algorithm prefers points with lower `weight_scale`s to form a path.
		
		```
		
		var astar = AStar.new()
		astar.add_point(1, Vector3(1, 0, 0), 4) # Adds the point (1, 0, 0) with weight_scale 4 and id 1
		
		```
		
		If there already exists a point for the given `id`, its position and weight scale are updated to the given values.
	**/
	@:native("AddPoint")
	public overload function addPoint(id:Int, position:godot.Vector3, weightScale:Single):Void;
	#end

	/**		
		Returns the position of the point associated with the given `id`.
	**/
	@:native("GetPointPosition")
	public function getPointPosition(id:Int):godot.Vector3;

	/**		
		Sets the `position` for the point with the given `id`.
	**/
	@:native("SetPointPosition")
	public function setPointPosition(id:Int, position:godot.Vector3):Void;

	/**		
		Returns the weight scale of the point associated with the given `id`.
	**/
	@:native("GetPointWeightScale")
	public function getPointWeightScale(id:Int):Single;

	/**		
		Sets the `weight_scale` for the point with the given `id`. The `weight_scale` is multiplied by the result of `godot.AStar._ComputeCost` when determining the overall cost of traveling across a segment from a neighboring point to this point.
	**/
	@:native("SetPointWeightScale")
	public function setPointWeightScale(id:Int, weightScale:Single):Void;

	/**		
		Removes the point associated with the given `id` from the points pool.
	**/
	@:native("RemovePoint")
	public function removePoint(id:Int):Void;

	/**		
		Returns whether a point associated with the given `id` exists.
	**/
	@:native("HasPoint")
	public function hasPoint(id:Int):Bool;

	/**		
		Returns an array with the IDs of the points that form the connection with the given point.
		
		```
		
		var astar = AStar.new()
		astar.add_point(1, Vector3(0, 0, 0))
		astar.add_point(2, Vector3(0, 1, 0))
		astar.add_point(3, Vector3(1, 1, 0))
		astar.add_point(4, Vector3(2, 0, 0))
		
		astar.connect_points(1, 2, true)
		astar.connect_points(1, 3, true)
		
		var neighbors = astar.get_point_connections(1) # Returns [2, 3]
		
		```
	**/
	public extern inline function getPointConnections(id:Int):std.Array<Int> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetPointConnections({1})", this, id));
	}

	/**		
		Returns an array of all points.
	**/
	@:native("GetPoints")
	public function getPoints():godot.collections.Array;

	#if doc_gen
	/**		
		Disables or enables the specified point for pathfinding. Useful for making a temporary obstacle.
	**/
	@:native("SetPointDisabled")
	public function setPointDisabled(id:Int, ?disabled:Bool):Void;
	#else
	/**		
		Disables or enables the specified point for pathfinding. Useful for making a temporary obstacle.
	**/
	@:native("SetPointDisabled")
	public overload function setPointDisabled(id:Int):Void;

	/**		
		Disables or enables the specified point for pathfinding. Useful for making a temporary obstacle.
	**/
	@:native("SetPointDisabled")
	public overload function setPointDisabled(id:Int, disabled:Bool):Void;
	#end

	/**		
		Returns whether a point is disabled or not for pathfinding. By default, all points are enabled.
	**/
	@:native("IsPointDisabled")
	public function isPointDisabled(id:Int):Bool;

	#if doc_gen
	/**		
		Creates a segment between the given points. If `bidirectional` is `false`, only movement from `id` to `to_id` is allowed, not the reverse direction.
		
		```
		
		var astar = AStar.new()
		astar.add_point(1, Vector3(1, 1, 0))
		astar.add_point(2, Vector3(0, 5, 0))
		astar.connect_points(1, 2, false)
		
		```
	**/
	@:native("ConnectPoints")
	public function connectPoints(id:Int, toId:Int, ?bidirectional:Bool):Void;
	#else
	/**		
		Creates a segment between the given points. If `bidirectional` is `false`, only movement from `id` to `to_id` is allowed, not the reverse direction.
		
		```
		
		var astar = AStar.new()
		astar.add_point(1, Vector3(1, 1, 0))
		astar.add_point(2, Vector3(0, 5, 0))
		astar.connect_points(1, 2, false)
		
		```
	**/
	@:native("ConnectPoints")
	public overload function connectPoints(id:Int, toId:Int):Void;

	/**		
		Creates a segment between the given points. If `bidirectional` is `false`, only movement from `id` to `to_id` is allowed, not the reverse direction.
		
		```
		
		var astar = AStar.new()
		astar.add_point(1, Vector3(1, 1, 0))
		astar.add_point(2, Vector3(0, 5, 0))
		astar.connect_points(1, 2, false)
		
		```
	**/
	@:native("ConnectPoints")
	public overload function connectPoints(id:Int, toId:Int, bidirectional:Bool):Void;
	#end

	#if doc_gen
	/**		
		Deletes the segment between the given points. If `bidirectional` is `false`, only movement from `id` to `to_id` is prevented, and a unidirectional segment possibly remains.
	**/
	@:native("DisconnectPoints")
	public function disconnectPoints(id:Int, toId:Int, ?bidirectional:Bool):Void;
	#else
	/**		
		Deletes the segment between the given points. If `bidirectional` is `false`, only movement from `id` to `to_id` is prevented, and a unidirectional segment possibly remains.
	**/
	@:native("DisconnectPoints")
	public overload function disconnectPoints(id:Int, toId:Int):Void;

	/**		
		Deletes the segment between the given points. If `bidirectional` is `false`, only movement from `id` to `to_id` is prevented, and a unidirectional segment possibly remains.
	**/
	@:native("DisconnectPoints")
	public overload function disconnectPoints(id:Int, toId:Int, bidirectional:Bool):Void;
	#end

	#if doc_gen
	/**		
		Returns whether the two given points are directly connected by a segment. If `bidirectional` is `false`, returns whether movement from `id` to `to_id` is possible through this segment.
	**/
	@:native("ArePointsConnected")
	public function arePointsConnected(id:Int, toId:Int, ?bidirectional:Bool):Bool;
	#else
	/**		
		Returns whether the two given points are directly connected by a segment. If `bidirectional` is `false`, returns whether movement from `id` to `to_id` is possible through this segment.
	**/
	@:native("ArePointsConnected")
	public overload function arePointsConnected(id:Int, toId:Int):Bool;

	/**		
		Returns whether the two given points are directly connected by a segment. If `bidirectional` is `false`, returns whether movement from `id` to `to_id` is possible through this segment.
	**/
	@:native("ArePointsConnected")
	public overload function arePointsConnected(id:Int, toId:Int, bidirectional:Bool):Bool;
	#end

	/**		
		Returns the number of points currently in the points pool.
	**/
	@:native("GetPointCount")
	public function getPointCount():Int;

	/**		
		Returns the capacity of the structure backing the points, useful in conjunction with `reserve_space`.
	**/
	@:native("GetPointCapacity")
	public function getPointCapacity():Int;

	/**		
		Reserves space internally for `num_nodes` points, useful if you're adding a known large number of points at once, for a grid for instance. New capacity must be greater or equals to old capacity.
	**/
	@:native("ReserveSpace")
	public function reserveSpace(numNodes:Int):Void;

	/**		
		Clears all the points and segments.
	**/
	@:native("Clear")
	public function clear():Void;

	#if doc_gen
	/**		
		Returns the ID of the closest point to `to_position`, optionally taking disabled points into account. Returns `-1` if there are no points in the points pool.
		
		Note: If several points are the closest to `to_position`, the one with the smallest ID will be returned, ensuring a deterministic result.
	**/
	@:native("GetClosestPoint")
	public function getClosestPoint(toPosition:godot.Vector3, ?includeDisabled:Bool):Int;
	#else
	/**		
		Returns the ID of the closest point to `to_position`, optionally taking disabled points into account. Returns `-1` if there are no points in the points pool.
		
		Note: If several points are the closest to `to_position`, the one with the smallest ID will be returned, ensuring a deterministic result.
	**/
	@:native("GetClosestPoint")
	public overload function getClosestPoint(toPosition:godot.Vector3):Int;

	/**		
		Returns the ID of the closest point to `to_position`, optionally taking disabled points into account. Returns `-1` if there are no points in the points pool.
		
		Note: If several points are the closest to `to_position`, the one with the smallest ID will be returned, ensuring a deterministic result.
	**/
	@:native("GetClosestPoint")
	public overload function getClosestPoint(toPosition:godot.Vector3, includeDisabled:Bool):Int;
	#end

	/**		
		Returns the closest position to `to_position` that resides inside a segment between two connected points.
		
		```
		
		var astar = AStar.new()
		astar.add_point(1, Vector3(0, 0, 0))
		astar.add_point(2, Vector3(0, 5, 0))
		astar.connect_points(1, 2)
		var res = astar.get_closest_position_in_segment(Vector3(3, 3, 0)) # Returns (0, 3, 0)
		
		```
		
		The result is in the segment that goes from `y = 0` to `y = 5`. It's the closest position in the segment to the given point.
	**/
	@:native("GetClosestPositionInSegment")
	public function getClosestPositionInSegment(toPosition:godot.Vector3):godot.Vector3;

	/**		
		Returns an array with the points that are in the path found by AStar between the given points. The array is ordered from the starting point to the ending point of the path.
		
		Note: This method is not thread-safe. If called from a `godot.Thread`, it will return an empty `godot.Vector3` and will print an error message.
	**/
	public extern inline function getPointPath(fromId:Int, toId:Int):std.Array<godot.Vector3> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetPointPath({1}, {2})", this, fromId, toId));
	}

	/**		
		Returns an array with the IDs of the points that form the path found by AStar between the given points. The array is ordered from the starting point to the ending point of the path.
		
		```
		
		var astar = AStar.new()
		astar.add_point(1, Vector3(0, 0, 0))
		astar.add_point(2, Vector3(0, 1, 0), 1) # Default weight is 1
		astar.add_point(3, Vector3(1, 1, 0))
		astar.add_point(4, Vector3(2, 0, 0))
		
		astar.connect_points(1, 2, false)
		astar.connect_points(2, 3, false)
		astar.connect_points(4, 3, false)
		astar.connect_points(1, 4, false)
		
		var res = astar.get_id_path(1, 3) # Returns [1, 2, 3]
		
		```
		
		If you change the 2nd point's weight to 3, then the result will be `[1, 4, 3]` instead, because now even though the distance is longer, it's "easier" to get through point 4 than through point 2.
	**/
	public extern inline function getIdPath(fromId:Int, toId:Int):std.Array<Int> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetIdPath({1}, {2})", this, fromId, toId));
	}
}
