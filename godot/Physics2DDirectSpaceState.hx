// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Direct access object to a space in the `godot.Physics2DServer`. It's used mainly to do queries against objects and areas residing in a given space.
**/
@:libType
@:csNative
@:native("Godot.Physics2DDirectSpaceState")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class Physics2DDirectSpaceState extends godot.Object {
	#if doc_gen
	/**		
		Checks whether a point is inside any solid shape. The shapes the point is inside of are returned in an array containing dictionaries with the following fields:
		
		`collider`: The colliding object.
		
		`collider_id`: The colliding object's ID.
		
		`metadata`: The intersecting shape's metadata. This metadata is different from `godot.Object.getMeta`, and is set with `godot.Physics2DServer.shapeSetData`.
		
		`rid`: The intersecting object's `godot.RID`.
		
		`shape`: The shape index of the colliding shape.
		
		Additionally, the method can take an `exclude` array of objects or `godot.RID`s that are to be excluded from collisions, a `collision_mask` bitmask representing the physics layers to check in, or booleans to determine if the ray should collide with `godot.PhysicsBody`s or `godot.Area`s, respectively.
		
		Note: `godot.ConcavePolygonShape2D`s and `godot.CollisionPolygon2D`s in `Segments` build mode are not solid shapes. Therefore, they will not be detected.
		
		@param exclude If the parameter is null, then the default value is new Godot.Collections.Array {}
	**/
	@:native("IntersectPoint")
	public function intersectPoint(point:godot.Vector2, ?maxResults:Int, ?exclude:godot.collections.Array, ?collisionLayer:UInt, ?collideWithBodies:Bool, ?collideWithAreas:Bool):godot.collections.Array;
	#else
	/**		
		Checks whether a point is inside any solid shape. The shapes the point is inside of are returned in an array containing dictionaries with the following fields:
		
		`collider`: The colliding object.
		
		`collider_id`: The colliding object's ID.
		
		`metadata`: The intersecting shape's metadata. This metadata is different from `godot.Object.getMeta`, and is set with `godot.Physics2DServer.shapeSetData`.
		
		`rid`: The intersecting object's `godot.RID`.
		
		`shape`: The shape index of the colliding shape.
		
		Additionally, the method can take an `exclude` array of objects or `godot.RID`s that are to be excluded from collisions, a `collision_mask` bitmask representing the physics layers to check in, or booleans to determine if the ray should collide with `godot.PhysicsBody`s or `godot.Area`s, respectively.
		
		Note: `godot.ConcavePolygonShape2D`s and `godot.CollisionPolygon2D`s in `Segments` build mode are not solid shapes. Therefore, they will not be detected.
		
		@param exclude If the parameter is null, then the default value is new Godot.Collections.Array {}
	**/
	@:native("IntersectPoint")
	public overload function intersectPoint(point:godot.Vector2):godot.collections.Array;

	/**		
		Checks whether a point is inside any solid shape. The shapes the point is inside of are returned in an array containing dictionaries with the following fields:
		
		`collider`: The colliding object.
		
		`collider_id`: The colliding object's ID.
		
		`metadata`: The intersecting shape's metadata. This metadata is different from `godot.Object.getMeta`, and is set with `godot.Physics2DServer.shapeSetData`.
		
		`rid`: The intersecting object's `godot.RID`.
		
		`shape`: The shape index of the colliding shape.
		
		Additionally, the method can take an `exclude` array of objects or `godot.RID`s that are to be excluded from collisions, a `collision_mask` bitmask representing the physics layers to check in, or booleans to determine if the ray should collide with `godot.PhysicsBody`s or `godot.Area`s, respectively.
		
		Note: `godot.ConcavePolygonShape2D`s and `godot.CollisionPolygon2D`s in `Segments` build mode are not solid shapes. Therefore, they will not be detected.
		
		@param exclude If the parameter is null, then the default value is new Godot.Collections.Array {}
	**/
	@:native("IntersectPoint")
	public overload function intersectPoint(point:godot.Vector2, maxResults:Int):godot.collections.Array;

	/**		
		Checks whether a point is inside any solid shape. The shapes the point is inside of are returned in an array containing dictionaries with the following fields:
		
		`collider`: The colliding object.
		
		`collider_id`: The colliding object's ID.
		
		`metadata`: The intersecting shape's metadata. This metadata is different from `godot.Object.getMeta`, and is set with `godot.Physics2DServer.shapeSetData`.
		
		`rid`: The intersecting object's `godot.RID`.
		
		`shape`: The shape index of the colliding shape.
		
		Additionally, the method can take an `exclude` array of objects or `godot.RID`s that are to be excluded from collisions, a `collision_mask` bitmask representing the physics layers to check in, or booleans to determine if the ray should collide with `godot.PhysicsBody`s or `godot.Area`s, respectively.
		
		Note: `godot.ConcavePolygonShape2D`s and `godot.CollisionPolygon2D`s in `Segments` build mode are not solid shapes. Therefore, they will not be detected.
		
		@param exclude If the parameter is null, then the default value is new Godot.Collections.Array {}
	**/
	@:native("IntersectPoint")
	public overload function intersectPoint(point:godot.Vector2, maxResults:Int, exclude:godot.collections.Array):godot.collections.Array;

	/**		
		Checks whether a point is inside any solid shape. The shapes the point is inside of are returned in an array containing dictionaries with the following fields:
		
		`collider`: The colliding object.
		
		`collider_id`: The colliding object's ID.
		
		`metadata`: The intersecting shape's metadata. This metadata is different from `godot.Object.getMeta`, and is set with `godot.Physics2DServer.shapeSetData`.
		
		`rid`: The intersecting object's `godot.RID`.
		
		`shape`: The shape index of the colliding shape.
		
		Additionally, the method can take an `exclude` array of objects or `godot.RID`s that are to be excluded from collisions, a `collision_mask` bitmask representing the physics layers to check in, or booleans to determine if the ray should collide with `godot.PhysicsBody`s or `godot.Area`s, respectively.
		
		Note: `godot.ConcavePolygonShape2D`s and `godot.CollisionPolygon2D`s in `Segments` build mode are not solid shapes. Therefore, they will not be detected.
		
		@param exclude If the parameter is null, then the default value is new Godot.Collections.Array {}
	**/
	@:native("IntersectPoint")
	public overload function intersectPoint(point:godot.Vector2, maxResults:Int, exclude:godot.collections.Array, collisionLayer:UInt):godot.collections.Array;

	/**		
		Checks whether a point is inside any solid shape. The shapes the point is inside of are returned in an array containing dictionaries with the following fields:
		
		`collider`: The colliding object.
		
		`collider_id`: The colliding object's ID.
		
		`metadata`: The intersecting shape's metadata. This metadata is different from `godot.Object.getMeta`, and is set with `godot.Physics2DServer.shapeSetData`.
		
		`rid`: The intersecting object's `godot.RID`.
		
		`shape`: The shape index of the colliding shape.
		
		Additionally, the method can take an `exclude` array of objects or `godot.RID`s that are to be excluded from collisions, a `collision_mask` bitmask representing the physics layers to check in, or booleans to determine if the ray should collide with `godot.PhysicsBody`s or `godot.Area`s, respectively.
		
		Note: `godot.ConcavePolygonShape2D`s and `godot.CollisionPolygon2D`s in `Segments` build mode are not solid shapes. Therefore, they will not be detected.
		
		@param exclude If the parameter is null, then the default value is new Godot.Collections.Array {}
	**/
	@:native("IntersectPoint")
	public overload function intersectPoint(point:godot.Vector2, maxResults:Int, exclude:godot.collections.Array, collisionLayer:UInt, collideWithBodies:Bool):godot.collections.Array;

	/**		
		Checks whether a point is inside any solid shape. The shapes the point is inside of are returned in an array containing dictionaries with the following fields:
		
		`collider`: The colliding object.
		
		`collider_id`: The colliding object's ID.
		
		`metadata`: The intersecting shape's metadata. This metadata is different from `godot.Object.getMeta`, and is set with `godot.Physics2DServer.shapeSetData`.
		
		`rid`: The intersecting object's `godot.RID`.
		
		`shape`: The shape index of the colliding shape.
		
		Additionally, the method can take an `exclude` array of objects or `godot.RID`s that are to be excluded from collisions, a `collision_mask` bitmask representing the physics layers to check in, or booleans to determine if the ray should collide with `godot.PhysicsBody`s or `godot.Area`s, respectively.
		
		Note: `godot.ConcavePolygonShape2D`s and `godot.CollisionPolygon2D`s in `Segments` build mode are not solid shapes. Therefore, they will not be detected.
		
		@param exclude If the parameter is null, then the default value is new Godot.Collections.Array {}
	**/
	@:native("IntersectPoint")
	public overload function intersectPoint(point:godot.Vector2, maxResults:Int, exclude:godot.collections.Array, collisionLayer:UInt, collideWithBodies:Bool, collideWithAreas:Bool):godot.collections.Array;
	#end

	#if doc_gen
	/**		
		@param exclude If the parameter is null, then the default value is new Godot.Collections.Array {}
	**/
	@:native("IntersectPointOnCanvas")
	public function intersectPointOnCanvas(point:godot.Vector2, canvasInstanceId:cs.types.UInt64, ?maxResults:Int, ?exclude:godot.collections.Array, ?collisionLayer:UInt, ?collideWithBodies:Bool, ?collideWithAreas:Bool):godot.collections.Array;
	#else
	/**		
		@param exclude If the parameter is null, then the default value is new Godot.Collections.Array {}
	**/
	@:native("IntersectPointOnCanvas")
	public overload function intersectPointOnCanvas(point:godot.Vector2, canvasInstanceId:cs.types.UInt64):godot.collections.Array;

	/**		
		@param exclude If the parameter is null, then the default value is new Godot.Collections.Array {}
	**/
	@:native("IntersectPointOnCanvas")
	public overload function intersectPointOnCanvas(point:godot.Vector2, canvasInstanceId:cs.types.UInt64, maxResults:Int):godot.collections.Array;

	/**		
		@param exclude If the parameter is null, then the default value is new Godot.Collections.Array {}
	**/
	@:native("IntersectPointOnCanvas")
	public overload function intersectPointOnCanvas(point:godot.Vector2, canvasInstanceId:cs.types.UInt64, maxResults:Int, exclude:godot.collections.Array):godot.collections.Array;

	/**		
		@param exclude If the parameter is null, then the default value is new Godot.Collections.Array {}
	**/
	@:native("IntersectPointOnCanvas")
	public overload function intersectPointOnCanvas(point:godot.Vector2, canvasInstanceId:cs.types.UInt64, maxResults:Int, exclude:godot.collections.Array, collisionLayer:UInt):godot.collections.Array;

	/**		
		@param exclude If the parameter is null, then the default value is new Godot.Collections.Array {}
	**/
	@:native("IntersectPointOnCanvas")
	public overload function intersectPointOnCanvas(point:godot.Vector2, canvasInstanceId:cs.types.UInt64, maxResults:Int, exclude:godot.collections.Array, collisionLayer:UInt, collideWithBodies:Bool):godot.collections.Array;

	/**		
		@param exclude If the parameter is null, then the default value is new Godot.Collections.Array {}
	**/
	@:native("IntersectPointOnCanvas")
	public overload function intersectPointOnCanvas(point:godot.Vector2, canvasInstanceId:cs.types.UInt64, maxResults:Int, exclude:godot.collections.Array, collisionLayer:UInt, collideWithBodies:Bool, collideWithAreas:Bool):godot.collections.Array;
	#end

	#if doc_gen
	/**		
		Intersects a ray in a given space. The returned object is a dictionary with the following fields:
		
		`collider`: The colliding object.
		
		`collider_id`: The colliding object's ID.
		
		`metadata`: The intersecting shape's metadata. This metadata is different from `godot.Object.getMeta`, and is set with `godot.Physics2DServer.shapeSetData`.
		
		`normal`: The object's surface normal at the intersection point.
		
		`position`: The intersection point.
		
		`rid`: The intersecting object's `godot.RID`.
		
		`shape`: The shape index of the colliding shape.
		
		If the ray did not intersect anything, then an empty dictionary is returned instead.
		
		Additionally, the method can take an `exclude` array of objects or `godot.RID`s that are to be excluded from collisions, a `collision_mask` bitmask representing the physics layers to check in, or booleans to determine if the ray should collide with `godot.PhysicsBody`s or `godot.Area`s, respectively.
		
		@param exclude If the parameter is null, then the default value is new Godot.Collections.Array {}
	**/
	@:native("IntersectRay")
	public function intersectRay(from:godot.Vector2, to:godot.Vector2, ?exclude:godot.collections.Array, ?collisionLayer:UInt, ?collideWithBodies:Bool, ?collideWithAreas:Bool):godot.collections.Dictionary;
	#else
	/**		
		Intersects a ray in a given space. The returned object is a dictionary with the following fields:
		
		`collider`: The colliding object.
		
		`collider_id`: The colliding object's ID.
		
		`metadata`: The intersecting shape's metadata. This metadata is different from `godot.Object.getMeta`, and is set with `godot.Physics2DServer.shapeSetData`.
		
		`normal`: The object's surface normal at the intersection point.
		
		`position`: The intersection point.
		
		`rid`: The intersecting object's `godot.RID`.
		
		`shape`: The shape index of the colliding shape.
		
		If the ray did not intersect anything, then an empty dictionary is returned instead.
		
		Additionally, the method can take an `exclude` array of objects or `godot.RID`s that are to be excluded from collisions, a `collision_mask` bitmask representing the physics layers to check in, or booleans to determine if the ray should collide with `godot.PhysicsBody`s or `godot.Area`s, respectively.
		
		@param exclude If the parameter is null, then the default value is new Godot.Collections.Array {}
	**/
	@:native("IntersectRay")
	public overload function intersectRay(from:godot.Vector2, to:godot.Vector2):godot.collections.Dictionary;

	/**		
		Intersects a ray in a given space. The returned object is a dictionary with the following fields:
		
		`collider`: The colliding object.
		
		`collider_id`: The colliding object's ID.
		
		`metadata`: The intersecting shape's metadata. This metadata is different from `godot.Object.getMeta`, and is set with `godot.Physics2DServer.shapeSetData`.
		
		`normal`: The object's surface normal at the intersection point.
		
		`position`: The intersection point.
		
		`rid`: The intersecting object's `godot.RID`.
		
		`shape`: The shape index of the colliding shape.
		
		If the ray did not intersect anything, then an empty dictionary is returned instead.
		
		Additionally, the method can take an `exclude` array of objects or `godot.RID`s that are to be excluded from collisions, a `collision_mask` bitmask representing the physics layers to check in, or booleans to determine if the ray should collide with `godot.PhysicsBody`s or `godot.Area`s, respectively.
		
		@param exclude If the parameter is null, then the default value is new Godot.Collections.Array {}
	**/
	@:native("IntersectRay")
	public overload function intersectRay(from:godot.Vector2, to:godot.Vector2, exclude:godot.collections.Array):godot.collections.Dictionary;

	/**		
		Intersects a ray in a given space. The returned object is a dictionary with the following fields:
		
		`collider`: The colliding object.
		
		`collider_id`: The colliding object's ID.
		
		`metadata`: The intersecting shape's metadata. This metadata is different from `godot.Object.getMeta`, and is set with `godot.Physics2DServer.shapeSetData`.
		
		`normal`: The object's surface normal at the intersection point.
		
		`position`: The intersection point.
		
		`rid`: The intersecting object's `godot.RID`.
		
		`shape`: The shape index of the colliding shape.
		
		If the ray did not intersect anything, then an empty dictionary is returned instead.
		
		Additionally, the method can take an `exclude` array of objects or `godot.RID`s that are to be excluded from collisions, a `collision_mask` bitmask representing the physics layers to check in, or booleans to determine if the ray should collide with `godot.PhysicsBody`s or `godot.Area`s, respectively.
		
		@param exclude If the parameter is null, then the default value is new Godot.Collections.Array {}
	**/
	@:native("IntersectRay")
	public overload function intersectRay(from:godot.Vector2, to:godot.Vector2, exclude:godot.collections.Array, collisionLayer:UInt):godot.collections.Dictionary;

	/**		
		Intersects a ray in a given space. The returned object is a dictionary with the following fields:
		
		`collider`: The colliding object.
		
		`collider_id`: The colliding object's ID.
		
		`metadata`: The intersecting shape's metadata. This metadata is different from `godot.Object.getMeta`, and is set with `godot.Physics2DServer.shapeSetData`.
		
		`normal`: The object's surface normal at the intersection point.
		
		`position`: The intersection point.
		
		`rid`: The intersecting object's `godot.RID`.
		
		`shape`: The shape index of the colliding shape.
		
		If the ray did not intersect anything, then an empty dictionary is returned instead.
		
		Additionally, the method can take an `exclude` array of objects or `godot.RID`s that are to be excluded from collisions, a `collision_mask` bitmask representing the physics layers to check in, or booleans to determine if the ray should collide with `godot.PhysicsBody`s or `godot.Area`s, respectively.
		
		@param exclude If the parameter is null, then the default value is new Godot.Collections.Array {}
	**/
	@:native("IntersectRay")
	public overload function intersectRay(from:godot.Vector2, to:godot.Vector2, exclude:godot.collections.Array, collisionLayer:UInt, collideWithBodies:Bool):godot.collections.Dictionary;

	/**		
		Intersects a ray in a given space. The returned object is a dictionary with the following fields:
		
		`collider`: The colliding object.
		
		`collider_id`: The colliding object's ID.
		
		`metadata`: The intersecting shape's metadata. This metadata is different from `godot.Object.getMeta`, and is set with `godot.Physics2DServer.shapeSetData`.
		
		`normal`: The object's surface normal at the intersection point.
		
		`position`: The intersection point.
		
		`rid`: The intersecting object's `godot.RID`.
		
		`shape`: The shape index of the colliding shape.
		
		If the ray did not intersect anything, then an empty dictionary is returned instead.
		
		Additionally, the method can take an `exclude` array of objects or `godot.RID`s that are to be excluded from collisions, a `collision_mask` bitmask representing the physics layers to check in, or booleans to determine if the ray should collide with `godot.PhysicsBody`s or `godot.Area`s, respectively.
		
		@param exclude If the parameter is null, then the default value is new Godot.Collections.Array {}
	**/
	@:native("IntersectRay")
	public overload function intersectRay(from:godot.Vector2, to:godot.Vector2, exclude:godot.collections.Array, collisionLayer:UInt, collideWithBodies:Bool, collideWithAreas:Bool):godot.collections.Dictionary;
	#end

	#if doc_gen
	/**		
		Checks the intersections of a shape, given through a `godot.Physics2DShapeQueryParameters` object, against the space.
		
		Note: This method does not take into account the `motion` property of the object. The intersected shapes are returned in an array containing dictionaries with the following fields:
		
		`collider`: The colliding object.
		
		`collider_id`: The colliding object's ID.
		
		`metadata`: The intersecting shape's metadata. This metadata is different from `godot.Object.getMeta`, and is set with `godot.Physics2DServer.shapeSetData`.
		
		`rid`: The intersecting object's `godot.RID`.
		
		`shape`: The shape index of the colliding shape.
		
		The number of intersections can be limited with the `max_results` parameter, to reduce the processing time.
	**/
	@:native("IntersectShape")
	public function intersectShape(shape:godot.Physics2DShapeQueryParameters, ?maxResults:Int):godot.collections.Array;
	#else
	/**		
		Checks the intersections of a shape, given through a `godot.Physics2DShapeQueryParameters` object, against the space.
		
		Note: This method does not take into account the `motion` property of the object. The intersected shapes are returned in an array containing dictionaries with the following fields:
		
		`collider`: The colliding object.
		
		`collider_id`: The colliding object's ID.
		
		`metadata`: The intersecting shape's metadata. This metadata is different from `godot.Object.getMeta`, and is set with `godot.Physics2DServer.shapeSetData`.
		
		`rid`: The intersecting object's `godot.RID`.
		
		`shape`: The shape index of the colliding shape.
		
		The number of intersections can be limited with the `max_results` parameter, to reduce the processing time.
	**/
	@:native("IntersectShape")
	public overload function intersectShape(shape:godot.Physics2DShapeQueryParameters):godot.collections.Array;

	/**		
		Checks the intersections of a shape, given through a `godot.Physics2DShapeQueryParameters` object, against the space.
		
		Note: This method does not take into account the `motion` property of the object. The intersected shapes are returned in an array containing dictionaries with the following fields:
		
		`collider`: The colliding object.
		
		`collider_id`: The colliding object's ID.
		
		`metadata`: The intersecting shape's metadata. This metadata is different from `godot.Object.getMeta`, and is set with `godot.Physics2DServer.shapeSetData`.
		
		`rid`: The intersecting object's `godot.RID`.
		
		`shape`: The shape index of the colliding shape.
		
		The number of intersections can be limited with the `max_results` parameter, to reduce the processing time.
	**/
	@:native("IntersectShape")
	public overload function intersectShape(shape:godot.Physics2DShapeQueryParameters, maxResults:Int):godot.collections.Array;
	#end

	/**		
		Checks how far a `godot.Shape2D` can move without colliding. All the parameters for the query, including the shape and the motion, are supplied through a `godot.Physics2DShapeQueryParameters` object.
		
		Returns an array with the safe and unsafe proportions (between 0 and 1) of the motion. The safe proportion is the maximum fraction of the motion that can be made without a collision. The unsafe proportion is the minimum fraction of the distance that must be moved for a collision. If no collision is detected a result of `[1.0, 1.0]` will be returned.
		
		Note: Any `godot.Shape2D`s that the shape is already colliding with e.g. inside of, will be ignored. Use `godot.Physics2DDirectSpaceState.collideShape` to determine the `godot.Shape2D`s that the shape is already colliding with.
	**/
	@:native("CastMotion")
	public function castMotion(shape:godot.Physics2DShapeQueryParameters):godot.collections.Array;

	#if doc_gen
	/**		
		Checks the intersections of a shape, given through a `godot.Physics2DShapeQueryParameters` object, against the space. The resulting array contains a list of points where the shape intersects another. Like with `godot.Physics2DDirectSpaceState.intersectShape`, the number of returned results can be limited to save processing time.
	**/
	@:native("CollideShape")
	public function collideShape(shape:godot.Physics2DShapeQueryParameters, ?maxResults:Int):godot.collections.Array;
	#else
	/**		
		Checks the intersections of a shape, given through a `godot.Physics2DShapeQueryParameters` object, against the space. The resulting array contains a list of points where the shape intersects another. Like with `godot.Physics2DDirectSpaceState.intersectShape`, the number of returned results can be limited to save processing time.
	**/
	@:native("CollideShape")
	public overload function collideShape(shape:godot.Physics2DShapeQueryParameters):godot.collections.Array;

	/**		
		Checks the intersections of a shape, given through a `godot.Physics2DShapeQueryParameters` object, against the space. The resulting array contains a list of points where the shape intersects another. Like with `godot.Physics2DDirectSpaceState.intersectShape`, the number of returned results can be limited to save processing time.
	**/
	@:native("CollideShape")
	public overload function collideShape(shape:godot.Physics2DShapeQueryParameters, maxResults:Int):godot.collections.Array;
	#end

	/**		
		Checks the intersections of a shape, given through a `godot.Physics2DShapeQueryParameters` object, against the space. If it collides with more than one shape, the nearest one is selected. If the shape did not intersect anything, then an empty dictionary is returned instead.
		
		Note: This method does not take into account the `motion` property of the object. The returned object is a dictionary containing the following fields:
		
		`collider_id`: The colliding object's ID.
		
		`linear_velocity`: The colliding object's velocity `godot.Vector2`. If the object is an `godot.Area2D`, the result is `(0, 0)`.
		
		`metadata`: The intersecting shape's metadata. This metadata is different from `godot.Object.getMeta`, and is set with `godot.Physics2DServer.shapeSetData`.
		
		`normal`: The object's surface normal at the intersection point.
		
		`point`: The intersection point.
		
		`rid`: The intersecting object's `godot.RID`.
		
		`shape`: The shape index of the colliding shape.
	**/
	@:native("GetRestInfo")
	public function getRestInfo(shape:godot.Physics2DShapeQueryParameters):godot.collections.Dictionary;
}
