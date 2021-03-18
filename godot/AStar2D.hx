// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This is a wrapper for the `godot.AStar` class which uses 2D vectors instead of 3D vectors.
**/
@:libType
@:csNative
@:native("Godot.AStar2D")
@:autoBuild(godot.Godot.buildUserClass())
extern class AStar2D extends godot.Reference {
	@:native("new")
	public function new():Void;

	/**		
		Called when computing the cost between two connected points.
		
		Note that this function is hidden in the default `AStar2D` class.
	**/
	@:native("_ComputeCost")
	public function _ComputeCost(fromId:Int, toId:Int):Single;

	/**		
		Called when estimating the cost between a point and the path's ending point.
		
		Note that this function is hidden in the default `AStar2D` class.
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
		Adds a new point at the given position with the given identifier. The algorithm prefers points with lower `weight_scale` to form a path. The `id` must be 0 or larger, and the `weight_scale` must be 1 or larger.
		
		```
		
		var astar = AStar2D.new()
		astar.add_point(1, Vector2(1, 0), 4) # Adds the point (1, 0) with weight_scale 4 and id 1
		
		```
		
		If there already exists a point for the given `id`, its position and weight scale are updated to the given values.
	**/
	@:native("AddPoint")
	public function addPoint(id:Int, position:godot.Vector2, ?weightScale:Single):Void;
	#else
	/**		
		Adds a new point at the given position with the given identifier. The algorithm prefers points with lower `weight_scale` to form a path. The `id` must be 0 or larger, and the `weight_scale` must be 1 or larger.
		
		```
		
		var astar = AStar2D.new()
		astar.add_point(1, Vector2(1, 0), 4) # Adds the point (1, 0) with weight_scale 4 and id 1
		
		```
		
		If there already exists a point for the given `id`, its position and weight scale are updated to the given values.
	**/
	@:native("AddPoint")
	public overload function addPoint(id:Int, position:godot.Vector2):Void;

	/**		
		Adds a new point at the given position with the given identifier. The algorithm prefers points with lower `weight_scale` to form a path. The `id` must be 0 or larger, and the `weight_scale` must be 1 or larger.
		
		```
		
		var astar = AStar2D.new()
		astar.add_point(1, Vector2(1, 0), 4) # Adds the point (1, 0) with weight_scale 4 and id 1
		
		```
		
		If there already exists a point for the given `id`, its position and weight scale are updated to the given values.
	**/
	@:native("AddPoint")
	public overload function addPoint(id:Int, position:godot.Vector2, weightScale:Single):Void;
	#end

	/**		
		Returns the position of the point associated with the given `id`.
	**/
	@:native("GetPointPosition")
	public function getPointPosition(id:Int):godot.Vector2;

	/**		
		Sets the `position` for the point with the given `id`.
	**/
	@:native("SetPointPosition")
	public function setPointPosition(id:Int, position:godot.Vector2):Void;

	/**		
		Returns the weight scale of the point associated with the given `id`.
	**/
	@:native("GetPointWeightScale")
	public function getPointWeightScale(id:Int):Single;

	/**		
		Sets the `weight_scale` for the point with the given `id`.
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
		
		var astar = AStar2D.new()
		astar.add_point(1, Vector2(0, 0))
		astar.add_point(2, Vector2(0, 1))
		astar.add_point(3, Vector2(1, 1))
		astar.add_point(4, Vector2(2, 0))
		
		astar.connect_points(1, 2, true)
		astar.connect_points(1, 3, true)
		
		var neighbors = astar.get_point_connections(1) # Returns [2, 3]
		
		```
	**/
	@:native("GetPointConnections")
	public function getPointConnections(id:Int):cs.NativeArray<Int>;

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
		
		var astar = AStar2D.new()
		astar.add_point(1, Vector2(1, 1))
		astar.add_point(2, Vector2(0, 5))
		astar.connect_points(1, 2, false)
		
		```
	**/
	@:native("ConnectPoints")
	public function connectPoints(id:Int, toId:Int, ?bidirectional:Bool):Void;
	#else
	/**		
		Creates a segment between the given points. If `bidirectional` is `false`, only movement from `id` to `to_id` is allowed, not the reverse direction.
		
		```
		
		var astar = AStar2D.new()
		astar.add_point(1, Vector2(1, 1))
		astar.add_point(2, Vector2(0, 5))
		astar.connect_points(1, 2, false)
		
		```
	**/
	@:native("ConnectPoints")
	public overload function connectPoints(id:Int, toId:Int):Void;

	/**		
		Creates a segment between the given points. If `bidirectional` is `false`, only movement from `id` to `to_id` is allowed, not the reverse direction.
		
		```
		
		var astar = AStar2D.new()
		astar.add_point(1, Vector2(1, 1))
		astar.add_point(2, Vector2(0, 5))
		astar.connect_points(1, 2, false)
		
		```
	**/
	@:native("ConnectPoints")
	public overload function connectPoints(id:Int, toId:Int, bidirectional:Bool):Void;
	#end

	/**		
		Deletes the segment between the given points.
	**/
	@:native("DisconnectPoints")
	public function disconnectPoints(id:Int, toId:Int):Void;

	/**		
		Returns whether there is a connection/segment between the given points.
	**/
	@:native("ArePointsConnected")
	public function arePointsConnected(id:Int, toId:Int):Bool;

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
	public function getClosestPoint(toPosition:godot.Vector2, ?includeDisabled:Bool):Int;
	#else
	/**		
		Returns the ID of the closest point to `to_position`, optionally taking disabled points into account. Returns `-1` if there are no points in the points pool.
		
		Note: If several points are the closest to `to_position`, the one with the smallest ID will be returned, ensuring a deterministic result.
	**/
	@:native("GetClosestPoint")
	public overload function getClosestPoint(toPosition:godot.Vector2):Int;

	/**		
		Returns the ID of the closest point to `to_position`, optionally taking disabled points into account. Returns `-1` if there are no points in the points pool.
		
		Note: If several points are the closest to `to_position`, the one with the smallest ID will be returned, ensuring a deterministic result.
	**/
	@:native("GetClosestPoint")
	public overload function getClosestPoint(toPosition:godot.Vector2, includeDisabled:Bool):Int;
	#end

	/**		
		Returns the closest position to `to_position` that resides inside a segment between two connected points.
		
		```
		
		var astar = AStar2D.new()
		astar.add_point(1, Vector2(0, 0))
		astar.add_point(2, Vector2(0, 5))
		astar.connect_points(1, 2)
		var res = astar.get_closest_position_in_segment(Vector2(3, 3)) # Returns (0, 3)
		
		```
		
		The result is in the segment that goes from `y = 0` to `y = 5`. It's the closest position in the segment to the given point.
	**/
	@:native("GetClosestPositionInSegment")
	public function getClosestPositionInSegment(toPosition:godot.Vector2):godot.Vector2;

	/**		
		Returns an array with the points that are in the path found by AStar2D between the given points. The array is ordered from the starting point to the ending point of the path.
	**/
	@:native("GetPointPath")
	public function getPointPath(fromId:Int, toId:Int):cs.NativeArray<godot.Vector2>;

	/**		
		Returns an array with the IDs of the points that form the path found by AStar2D between the given points. The array is ordered from the starting point to the ending point of the path.
		
		```
		
		var astar = AStar2D.new()
		astar.add_point(1, Vector2(0, 0))
		astar.add_point(2, Vector2(0, 1), 1) # Default weight is 1
		astar.add_point(3, Vector2(1, 1))
		astar.add_point(4, Vector2(2, 0))
		
		astar.connect_points(1, 2, false)
		astar.connect_points(2, 3, false)
		astar.connect_points(4, 3, false)
		astar.connect_points(1, 4, false)
		
		var res = astar.get_id_path(1, 3) # Returns [1, 2, 3]
		
		```
		
		If you change the 2nd point's weight to 3, then the result will be `[1, 4, 3]` instead, because now even though the distance is longer, it's "easier" to get through point 4 than through point 2.
	**/
	@:native("GetIdPath")
	public function getIdPath(fromId:Int, toId:Int):cs.NativeArray<Int>;
}
