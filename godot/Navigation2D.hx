// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Navigation2D provides navigation and pathfinding within a 2D area, specified as a collection of `godot.NavigationPolygon` resources. By default, these are automatically collected from child `godot.NavigationPolygonInstance` nodes, but they can also be added on the fly with `godot.Navigation2D.navpolyAdd`.

Note: The current navigation system has many known issues and will not always return optimal paths as expected. These issues will be fixed in Godot 4.0.
**/
@:libType
@:csNative
@:native("Godot.Navigation2D")
@:autoBuild(godot.Godot.buildUserClass())
extern class Navigation2D extends godot.Node2D {
	@:native("new")
	public function new():Void;

	#if doc_gen
	/**		
		Adds a `godot.NavigationPolygon`. Returns an ID for use with `godot.Navigation2D.navpolyRemove` or `godot.Navigation2D.navpolySetTransform`. If given, a `godot.Transform2D` is applied to the polygon. The optional `owner` is used as return value for `godot.Navigation2D.getClosestPointOwner`.
	**/
	@:native("NavpolyAdd")
	public function navpolyAdd(mesh:godot.NavigationPolygon, xform:godot.Transform2D, ?owner:godot.Object):Int;
	#else
	/**		
		Adds a `godot.NavigationPolygon`. Returns an ID for use with `godot.Navigation2D.navpolyRemove` or `godot.Navigation2D.navpolySetTransform`. If given, a `godot.Transform2D` is applied to the polygon. The optional `owner` is used as return value for `godot.Navigation2D.getClosestPointOwner`.
	**/
	@:native("NavpolyAdd")
	public overload function navpolyAdd(mesh:godot.NavigationPolygon, xform:godot.Transform2D):Int;

	/**		
		Adds a `godot.NavigationPolygon`. Returns an ID for use with `godot.Navigation2D.navpolyRemove` or `godot.Navigation2D.navpolySetTransform`. If given, a `godot.Transform2D` is applied to the polygon. The optional `owner` is used as return value for `godot.Navigation2D.getClosestPointOwner`.
	**/
	@:native("NavpolyAdd")
	public overload function navpolyAdd(mesh:godot.NavigationPolygon, xform:godot.Transform2D, owner:godot.Object):Int;
	#end

	/**		
		Sets the transform applied to the `godot.NavigationPolygon` with the given ID.
	**/
	@:native("NavpolySetTransform")
	public function navpolySetTransform(id:Int, xform:godot.Transform2D):Void;

	/**		
		Removes the `godot.NavigationPolygon` with the given ID.
	**/
	@:native("NavpolyRemove")
	public function navpolyRemove(id:Int):Void;

	#if doc_gen
	/**		
		Returns the path between two given points. Points are in local coordinate space. If `optimize` is `true` (the default), the path is smoothed by merging path segments where possible.
		
		Note: This method has known issues and will often return non-optimal paths. These issues will be fixed in Godot 4.0.
	**/
	public extern inline function getSimplePath(start:godot.Vector2, end:godot.Vector2, ?optimize:Bool):std.Array<godot.Vector2> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetSimplePath({1}, {2}, {3})", this, start, end, optimize));
	}
	#else
	/**		
		Returns the path between two given points. Points are in local coordinate space. If `optimize` is `true` (the default), the path is smoothed by merging path segments where possible.
		
		Note: This method has known issues and will often return non-optimal paths. These issues will be fixed in Godot 4.0.
	**/
	public overload extern inline function getSimplePath(start:godot.Vector2, end:godot.Vector2):std.Array<godot.Vector2> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetSimplePath({1}, {2})", this, start, end));
	}

	/**		
		Returns the path between two given points. Points are in local coordinate space. If `optimize` is `true` (the default), the path is smoothed by merging path segments where possible.
		
		Note: This method has known issues and will often return non-optimal paths. These issues will be fixed in Godot 4.0.
	**/
	public overload extern inline function getSimplePath(start:godot.Vector2, end:godot.Vector2, optimize:Bool):std.Array<godot.Vector2> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetSimplePath({1}, {2}, {3})", this, start, end, optimize));
	}
	#end

	/**		
		Returns the navigation point closest to the point given. Points are in local coordinate space.
	**/
	@:native("GetClosestPoint")
	public function getClosestPoint(toPoint:godot.Vector2):godot.Vector2;

	/**		
		Returns the owner of the `godot.NavigationPolygon` which contains the navigation point closest to the point given. This is usually a `godot.NavigationPolygonInstance`. For polygons added via `godot.Navigation2D.navpolyAdd`, returns the owner that was given (or `null` if the `owner` parameter was omitted).
	**/
	@:native("GetClosestPointOwner")
	public function getClosestPointOwner(toPoint:godot.Vector2):godot.Object;
}
