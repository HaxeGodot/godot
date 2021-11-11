// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A RayCast represents a line from its origin to its destination position, `cast_to`. It is used to query the 2D space in order to find the closest object along the path of the ray.

RayCast2D can ignore some objects by adding them to the exception list via `add_exception`, by setting proper filtering with collision layers, or by filtering object types with type masks.

RayCast2D can be configured to report collisions with `godot.Area2D`s (`godot.RayCast2D.collideWithAreas`) and/or `godot.PhysicsBody2D`s (`godot.RayCast2D.collideWithBodies`).

Only enabled raycasts will be able to query the space and report collisions.

RayCast2D calculates intersection every physics frame (see `godot.Node`), and the result is cached so it can be used later until the next frame. If multiple queries are required between physics frames (or during the same frame) use `godot.RayCast2D.forceRaycastUpdate` after adjusting the raycast.
**/
@:libType
@:csNative
@:native("Godot.RayCast2D")
@:autoBuild(godot.Godot.buildUserClass())
extern class RayCast2D extends godot.Node2D {
	/**		
		If `true`, collision with `godot.PhysicsBody2D`s will be reported.
	**/
	@:native("CollideWithBodies")
	public var collideWithBodies:Bool;

	/**		
		If `true`, collision with `godot.Area2D`s will be reported.
	**/
	@:native("CollideWithAreas")
	public var collideWithAreas:Bool;

	/**		
		The ray's collision mask. Only objects in at least one collision layer enabled in the mask will be detected. See [https://docs.godotengine.org/en/3.4/tutorials/physics/physics_introduction.html#collision-layers-and-masks](Collision layers and masks) in the documentation for more information.
	**/
	@:native("CollisionMask")
	public var collisionMask:UInt;

	/**		
		The ray's destination point, relative to the RayCast's `position`.
	**/
	@:native("CastTo")
	public var castTo:godot.Vector2;

	/**		
		If `true`, the parent node will be excluded from collision detection.
	**/
	@:native("ExcludeParent")
	public var excludeParent:Bool;

	/**		
		If `true`, collisions will be reported.
	**/
	@:native("Enabled")
	public var enabled:Bool;

	@:native("new")
	public function new():Void;

	@:native("SetEnabled")
	public function setEnabled(enabled:Bool):Void;

	@:native("IsEnabled")
	public function isEnabled():Bool;

	@:native("SetCastTo")
	public function setCastTo(localPoint:godot.Vector2):Void;

	@:native("GetCastTo")
	public function getCastTo():godot.Vector2;

	/**		
		Returns whether any object is intersecting with the ray's vector (considering the vector length).
	**/
	@:native("IsColliding")
	public function isColliding():Bool;

	/**		
		Updates the collision information for the ray. Use this method to update the collision information immediately instead of waiting for the next `_physics_process` call, for example if the ray or its parent has changed state.
		
		Note: `enabled` is not required for this to work.
	**/
	@:native("ForceRaycastUpdate")
	public function forceRaycastUpdate():Void;

	/**		
		Returns the first object that the ray intersects, or `null` if no object is intersecting the ray (i.e. `godot.RayCast2D.isColliding` returns `false`).
	**/
	@:native("GetCollider")
	public function getCollider():godot.Object;

	/**		
		Returns the shape ID of the first object that the ray intersects, or `0` if no object is intersecting the ray (i.e. `godot.RayCast2D.isColliding` returns `false`).
	**/
	@:native("GetColliderShape")
	public function getColliderShape():Int;

	/**		
		Returns the collision point at which the ray intersects the closest object.
		
		Note: This point is in the global coordinate system.
	**/
	@:native("GetCollisionPoint")
	public function getCollisionPoint():godot.Vector2;

	/**		
		Returns the normal of the intersecting object's shape at the collision point.
	**/
	@:native("GetCollisionNormal")
	public function getCollisionNormal():godot.Vector2;

	/**		
		Adds a collision exception so the ray does not report collisions with the specified `godot.RID`.
	**/
	@:native("AddExceptionRid")
	public function addExceptionRid(rid:godot.RID):Void;

	/**		
		Adds a collision exception so the ray does not report collisions with the specified node.
	**/
	@:native("AddException")
	public function addException(node:godot.Object):Void;

	/**		
		Removes a collision exception so the ray does report collisions with the specified `godot.RID`.
	**/
	@:native("RemoveExceptionRid")
	public function removeExceptionRid(rid:godot.RID):Void;

	/**		
		Removes a collision exception so the ray does report collisions with the specified node.
	**/
	@:native("RemoveException")
	public function removeException(node:godot.Object):Void;

	/**		
		Removes all collision exceptions for this ray.
	**/
	@:native("ClearExceptions")
	public function clearExceptions():Void;

	@:native("SetCollisionMask")
	public function setCollisionMask(mask:UInt):Void;

	@:native("GetCollisionMask")
	public function getCollisionMask():UInt;

	/**		
		Sets or clears individual bits on the collision mask. This makes selecting the areas scanned easier.
	**/
	@:native("SetCollisionMaskBit")
	public function setCollisionMaskBit(bit:Int, value:Bool):Void;

	/**		
		Returns an individual bit on the collision mask.
	**/
	@:native("GetCollisionMaskBit")
	public function getCollisionMaskBit(bit:Int):Bool;

	@:native("SetExcludeParentBody")
	public function setExcludeParentBody(mask:Bool):Void;

	@:native("GetExcludeParentBody")
	public function getExcludeParentBody():Bool;

	@:native("SetCollideWithAreas")
	public function setCollideWithAreas(enable:Bool):Void;

	@:native("IsCollideWithAreasEnabled")
	public function isCollideWithAreasEnabled():Bool;

	@:native("SetCollideWithBodies")
	public function setCollideWithBodies(enable:Bool):Void;

	@:native("IsCollideWithBodiesEnabled")
	public function isCollideWithBodiesEnabled():Bool;
}
