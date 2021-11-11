// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Provides navigation and pathfinding within a collection of `godot.NavigationMesh`es. By default, these will be automatically collected from child `godot.NavigationMeshInstance` nodes, but they can also be added on the fly with `godot.Navigation.navmeshAdd`. In addition to basic pathfinding, this class also assists with aligning navigation agents with the meshes they are navigating on.

Note: The current navigation system has many known issues and will not always return optimal paths as expected. These issues will be fixed in Godot 4.0.
**/
@:libType
@:csNative
@:native("Godot.Navigation")
@:autoBuild(godot.Godot.buildUserClass())
extern class Navigation extends godot.Spatial {
	/**		
		Defines which direction is up. By default, this is `(0, 1, 0)`, which is the world's "up" direction.
	**/
	@:native("UpVector")
	public var upVector:godot.Vector3;

	@:native("new")
	public function new():Void;

	#if doc_gen
	/**		
		Adds a `godot.NavigationMesh`. Returns an ID for use with `godot.Navigation.navmeshRemove` or `godot.Navigation.navmeshSetTransform`. If given, a `godot.Transform2D` is applied to the polygon. The optional `owner` is used as return value for `godot.Navigation.getClosestPointOwner`.
	**/
	@:native("NavmeshAdd")
	public function navmeshAdd(mesh:godot.NavigationMesh, xform:godot.Transform, ?owner:godot.Object):Int;
	#else
	/**		
		Adds a `godot.NavigationMesh`. Returns an ID for use with `godot.Navigation.navmeshRemove` or `godot.Navigation.navmeshSetTransform`. If given, a `godot.Transform2D` is applied to the polygon. The optional `owner` is used as return value for `godot.Navigation.getClosestPointOwner`.
	**/
	@:native("NavmeshAdd")
	public overload function navmeshAdd(mesh:godot.NavigationMesh, xform:godot.Transform):Int;

	/**		
		Adds a `godot.NavigationMesh`. Returns an ID for use with `godot.Navigation.navmeshRemove` or `godot.Navigation.navmeshSetTransform`. If given, a `godot.Transform2D` is applied to the polygon. The optional `owner` is used as return value for `godot.Navigation.getClosestPointOwner`.
	**/
	@:native("NavmeshAdd")
	public overload function navmeshAdd(mesh:godot.NavigationMesh, xform:godot.Transform, owner:godot.Object):Int;
	#end

	/**		
		Sets the transform applied to the `godot.NavigationMesh` with the given ID.
	**/
	@:native("NavmeshSetTransform")
	public function navmeshSetTransform(id:Int, xform:godot.Transform):Void;

	/**		
		Removes the `godot.NavigationMesh` with the given ID.
	**/
	@:native("NavmeshRemove")
	public function navmeshRemove(id:Int):Void;

	#if doc_gen
	/**		
		Returns the path between two given points. Points are in local coordinate space. If `optimize` is `true` (the default), the agent properties associated with each `godot.NavigationMesh` (radius, height, etc.) are considered in the path calculation, otherwise they are ignored.
		
		Note: This method has known issues and will often return non-optimal paths. These issues will be fixed in Godot 4.0.
	**/
	public extern inline function getSimplePath(start:godot.Vector3, end:godot.Vector3, ?optimize:Bool):std.Array<godot.Vector3> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetSimplePath({1}, {2}, {3})", this, start, end, optimize));
	}
	#else
	/**		
		Returns the path between two given points. Points are in local coordinate space. If `optimize` is `true` (the default), the agent properties associated with each `godot.NavigationMesh` (radius, height, etc.) are considered in the path calculation, otherwise they are ignored.
		
		Note: This method has known issues and will often return non-optimal paths. These issues will be fixed in Godot 4.0.
	**/
	public overload extern inline function getSimplePath(start:godot.Vector3, end:godot.Vector3):std.Array<godot.Vector3> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetSimplePath({1}, {2})", this, start, end));
	}

	/**		
		Returns the path between two given points. Points are in local coordinate space. If `optimize` is `true` (the default), the agent properties associated with each `godot.NavigationMesh` (radius, height, etc.) are considered in the path calculation, otherwise they are ignored.
		
		Note: This method has known issues and will often return non-optimal paths. These issues will be fixed in Godot 4.0.
	**/
	public overload extern inline function getSimplePath(start:godot.Vector3, end:godot.Vector3, optimize:Bool):std.Array<godot.Vector3> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetSimplePath({1}, {2}, {3})", this, start, end, optimize));
	}
	#end

	#if doc_gen
	/**		
		Returns the navigation point closest to the given line segment. When enabling `use_collision`, only considers intersection points between segment and navigation meshes. If multiple intersection points are found, the one closest to the segment start point is returned.
	**/
	@:native("GetClosestPointToSegment")
	public function getClosestPointToSegment(start:godot.Vector3, end:godot.Vector3, ?useCollision:Bool):godot.Vector3;
	#else
	/**		
		Returns the navigation point closest to the given line segment. When enabling `use_collision`, only considers intersection points between segment and navigation meshes. If multiple intersection points are found, the one closest to the segment start point is returned.
	**/
	@:native("GetClosestPointToSegment")
	public overload function getClosestPointToSegment(start:godot.Vector3, end:godot.Vector3):godot.Vector3;

	/**		
		Returns the navigation point closest to the given line segment. When enabling `use_collision`, only considers intersection points between segment and navigation meshes. If multiple intersection points are found, the one closest to the segment start point is returned.
	**/
	@:native("GetClosestPointToSegment")
	public overload function getClosestPointToSegment(start:godot.Vector3, end:godot.Vector3, useCollision:Bool):godot.Vector3;
	#end

	/**		
		Returns the navigation point closest to the point given. Points are in local coordinate space.
	**/
	@:native("GetClosestPoint")
	public function getClosestPoint(toPoint:godot.Vector3):godot.Vector3;

	/**		
		Returns the surface normal at the navigation point closest to the point given. Useful for rotating a navigation agent according to the navigation mesh it moves on.
	**/
	@:native("GetClosestPointNormal")
	public function getClosestPointNormal(toPoint:godot.Vector3):godot.Vector3;

	/**		
		Returns the owner of the `godot.NavigationMesh` which contains the navigation point closest to the point given. This is usually a `godot.NavigationMeshInstance`. For meshes added via `godot.Navigation.navmeshAdd`, returns the owner that was given (or `null` if the `owner` parameter was omitted).
	**/
	@:native("GetClosestPointOwner")
	public function getClosestPointOwner(toPoint:godot.Vector3):godot.Object;

	@:native("SetUpVector")
	public function setUpVector(up:godot.Vector3):Void;

	@:native("GetUpVector")
	public function getUpVector():godot.Vector3;
}
