// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Direct access object to a space in the `godot.PhysicsServer`. It's used mainly to do queries against objects and areas residing in a given space.
**/
@:libType
@:csNative
@:native("Godot.PhysicsDirectSpaceState")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class PhysicsDirectSpaceState extends godot.Object {
	#if doc_gen
	/**		
		Intersects a ray in a given space. The returned object is a dictionary with the following fields:
		
		`collider`: The colliding object.
		
		`collider_id`: The colliding object's ID.
		
		`normal`: The object's surface normal at the intersection point.
		
		`position`: The intersection point.
		
		`rid`: The intersecting object's `godot.RID`.
		
		`shape`: The shape index of the colliding shape.
		
		If the ray did not intersect anything, then an empty dictionary is returned instead.
		
		Additionally, the method can take an `exclude` array of objects or `godot.RID`s that are to be excluded from collisions, a `collision_mask` bitmask representing the physics layers to check in, or booleans to determine if the ray should collide with `godot.PhysicsBody`s or `godot.Area`s, respectively.
		
		@param exclude If the parameter is null, then the default value is new Godot.Collections.Array {}
	**/
	@:native("IntersectRay")
	public function intersectRay(from:godot.Vector3, to:godot.Vector3, ?exclude:godot.collections.Array, ?collisionMask:UInt, ?collideWithBodies:Bool, ?collideWithAreas:Bool):godot.collections.Dictionary;
	#else
	/**		
		Intersects a ray in a given space. The returned object is a dictionary with the following fields:
		
		`collider`: The colliding object.
		
		`collider_id`: The colliding object's ID.
		
		`normal`: The object's surface normal at the intersection point.
		
		`position`: The intersection point.
		
		`rid`: The intersecting object's `godot.RID`.
		
		`shape`: The shape index of the colliding shape.
		
		If the ray did not intersect anything, then an empty dictionary is returned instead.
		
		Additionally, the method can take an `exclude` array of objects or `godot.RID`s that are to be excluded from collisions, a `collision_mask` bitmask representing the physics layers to check in, or booleans to determine if the ray should collide with `godot.PhysicsBody`s or `godot.Area`s, respectively.
		
		@param exclude If the parameter is null, then the default value is new Godot.Collections.Array {}
	**/
	@:native("IntersectRay")
	public overload function intersectRay(from:godot.Vector3, to:godot.Vector3):godot.collections.Dictionary;

	/**		
		Intersects a ray in a given space. The returned object is a dictionary with the following fields:
		
		`collider`: The colliding object.
		
		`collider_id`: The colliding object's ID.
		
		`normal`: The object's surface normal at the intersection point.
		
		`position`: The intersection point.
		
		`rid`: The intersecting object's `godot.RID`.
		
		`shape`: The shape index of the colliding shape.
		
		If the ray did not intersect anything, then an empty dictionary is returned instead.
		
		Additionally, the method can take an `exclude` array of objects or `godot.RID`s that are to be excluded from collisions, a `collision_mask` bitmask representing the physics layers to check in, or booleans to determine if the ray should collide with `godot.PhysicsBody`s or `godot.Area`s, respectively.
		
		@param exclude If the parameter is null, then the default value is new Godot.Collections.Array {}
	**/
	@:native("IntersectRay")
	public overload function intersectRay(from:godot.Vector3, to:godot.Vector3, exclude:godot.collections.Array):godot.collections.Dictionary;

	/**		
		Intersects a ray in a given space. The returned object is a dictionary with the following fields:
		
		`collider`: The colliding object.
		
		`collider_id`: The colliding object's ID.
		
		`normal`: The object's surface normal at the intersection point.
		
		`position`: The intersection point.
		
		`rid`: The intersecting object's `godot.RID`.
		
		`shape`: The shape index of the colliding shape.
		
		If the ray did not intersect anything, then an empty dictionary is returned instead.
		
		Additionally, the method can take an `exclude` array of objects or `godot.RID`s that are to be excluded from collisions, a `collision_mask` bitmask representing the physics layers to check in, or booleans to determine if the ray should collide with `godot.PhysicsBody`s or `godot.Area`s, respectively.
		
		@param exclude If the parameter is null, then the default value is new Godot.Collections.Array {}
	**/
	@:native("IntersectRay")
	public overload function intersectRay(from:godot.Vector3, to:godot.Vector3, exclude:godot.collections.Array, collisionMask:UInt):godot.collections.Dictionary;

	/**		
		Intersects a ray in a given space. The returned object is a dictionary with the following fields:
		
		`collider`: The colliding object.
		
		`collider_id`: The colliding object's ID.
		
		`normal`: The object's surface normal at the intersection point.
		
		`position`: The intersection point.
		
		`rid`: The intersecting object's `godot.RID`.
		
		`shape`: The shape index of the colliding shape.
		
		If the ray did not intersect anything, then an empty dictionary is returned instead.
		
		Additionally, the method can take an `exclude` array of objects or `godot.RID`s that are to be excluded from collisions, a `collision_mask` bitmask representing the physics layers to check in, or booleans to determine if the ray should collide with `godot.PhysicsBody`s or `godot.Area`s, respectively.
		
		@param exclude If the parameter is null, then the default value is new Godot.Collections.Array {}
	**/
	@:native("IntersectRay")
	public overload function intersectRay(from:godot.Vector3, to:godot.Vector3, exclude:godot.collections.Array, collisionMask:UInt, collideWithBodies:Bool):godot.collections.Dictionary;

	/**		
		Intersects a ray in a given space. The returned object is a dictionary with the following fields:
		
		`collider`: The colliding object.
		
		`collider_id`: The colliding object's ID.
		
		`normal`: The object's surface normal at the intersection point.
		
		`position`: The intersection point.
		
		`rid`: The intersecting object's `godot.RID`.
		
		`shape`: The shape index of the colliding shape.
		
		If the ray did not intersect anything, then an empty dictionary is returned instead.
		
		Additionally, the method can take an `exclude` array of objects or `godot.RID`s that are to be excluded from collisions, a `collision_mask` bitmask representing the physics layers to check in, or booleans to determine if the ray should collide with `godot.PhysicsBody`s or `godot.Area`s, respectively.
		
		@param exclude If the parameter is null, then the default value is new Godot.Collections.Array {}
	**/
	@:native("IntersectRay")
	public overload function intersectRay(from:godot.Vector3, to:godot.Vector3, exclude:godot.collections.Array, collisionMask:UInt, collideWithBodies:Bool, collideWithAreas:Bool):godot.collections.Dictionary;
	#end

	#if doc_gen
	/**		
		Checks the intersections of a shape, given through a `godot.PhysicsShapeQueryParameters` object, against the space. The intersected shapes are returned in an array containing dictionaries with the following fields:
		
		`collider`: The colliding object.
		
		`collider_id`: The colliding object's ID.
		
		`rid`: The intersecting object's `godot.RID`.
		
		`shape`: The shape index of the colliding shape.
		
		The number of intersections can be limited with the `max_results` parameter, to reduce the processing time.
	**/
	@:native("IntersectShape")
	public function intersectShape(shape:godot.PhysicsShapeQueryParameters, ?maxResults:Int):godot.collections.Array;
	#else
	/**		
		Checks the intersections of a shape, given through a `godot.PhysicsShapeQueryParameters` object, against the space. The intersected shapes are returned in an array containing dictionaries with the following fields:
		
		`collider`: The colliding object.
		
		`collider_id`: The colliding object's ID.
		
		`rid`: The intersecting object's `godot.RID`.
		
		`shape`: The shape index of the colliding shape.
		
		The number of intersections can be limited with the `max_results` parameter, to reduce the processing time.
	**/
	@:native("IntersectShape")
	public overload function intersectShape(shape:godot.PhysicsShapeQueryParameters):godot.collections.Array;

	/**		
		Checks the intersections of a shape, given through a `godot.PhysicsShapeQueryParameters` object, against the space. The intersected shapes are returned in an array containing dictionaries with the following fields:
		
		`collider`: The colliding object.
		
		`collider_id`: The colliding object's ID.
		
		`rid`: The intersecting object's `godot.RID`.
		
		`shape`: The shape index of the colliding shape.
		
		The number of intersections can be limited with the `max_results` parameter, to reduce the processing time.
	**/
	@:native("IntersectShape")
	public overload function intersectShape(shape:godot.PhysicsShapeQueryParameters, maxResults:Int):godot.collections.Array;
	#end

	/**		
		Checks how far a `godot.Shape` can move without colliding. All the parameters for the query, including the shape, are supplied through a `godot.PhysicsShapeQueryParameters` object.
		
		Returns an array with the safe and unsafe proportions (between 0 and 1) of the motion. The safe proportion is the maximum fraction of the motion that can be made without a collision. The unsafe proportion is the minimum fraction of the distance that must be moved for a collision. If no collision is detected a result of `[1.0, 1.0]` will be returned.
		
		Note: Any `godot.Shape`s that the shape is already colliding with e.g. inside of, will be ignored. Use `godot.PhysicsDirectSpaceState.collideShape` to determine the `godot.Shape`s that the shape is already colliding with.
	**/
	@:native("CastMotion")
	public function castMotion(shape:godot.PhysicsShapeQueryParameters, motion:godot.Vector3):godot.collections.Array;

	#if doc_gen
	/**		
		Checks the intersections of a shape, given through a `godot.PhysicsShapeQueryParameters` object, against the space. The resulting array contains a list of points where the shape intersects another. Like with `godot.PhysicsDirectSpaceState.intersectShape`, the number of returned results can be limited to save processing time.
	**/
	@:native("CollideShape")
	public function collideShape(shape:godot.PhysicsShapeQueryParameters, ?maxResults:Int):godot.collections.Array;
	#else
	/**		
		Checks the intersections of a shape, given through a `godot.PhysicsShapeQueryParameters` object, against the space. The resulting array contains a list of points where the shape intersects another. Like with `godot.PhysicsDirectSpaceState.intersectShape`, the number of returned results can be limited to save processing time.
	**/
	@:native("CollideShape")
	public overload function collideShape(shape:godot.PhysicsShapeQueryParameters):godot.collections.Array;

	/**		
		Checks the intersections of a shape, given through a `godot.PhysicsShapeQueryParameters` object, against the space. The resulting array contains a list of points where the shape intersects another. Like with `godot.PhysicsDirectSpaceState.intersectShape`, the number of returned results can be limited to save processing time.
	**/
	@:native("CollideShape")
	public overload function collideShape(shape:godot.PhysicsShapeQueryParameters, maxResults:Int):godot.collections.Array;
	#end

	/**		
		Checks the intersections of a shape, given through a `godot.PhysicsShapeQueryParameters` object, against the space. If it collides with more than one shape, the nearest one is selected. The returned object is a dictionary containing the following fields:
		
		`collider_id`: The colliding object's ID.
		
		`linear_velocity`: The colliding object's velocity `godot.Vector3`. If the object is an `godot.Area`, the result is `(0, 0, 0)`.
		
		`normal`: The object's surface normal at the intersection point.
		
		`point`: The intersection point.
		
		`rid`: The intersecting object's `godot.RID`.
		
		`shape`: The shape index of the colliding shape.
		
		If the shape did not intersect anything, then an empty dictionary is returned instead.
	**/
	@:native("GetRestInfo")
	public function getRestInfo(shape:godot.PhysicsShapeQueryParameters):godot.collections.Dictionary;
}
