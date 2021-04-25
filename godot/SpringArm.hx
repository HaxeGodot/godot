// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
The SpringArm node is a node that casts a ray (or collision shape) along its z axis and moves all its direct children to the collision point, minus a margin.

The most common use case for this is to make a 3rd person camera that reacts to collisions in the environment.

The SpringArm will either cast a ray, or if a shape is given, it will cast the shape in the direction of its z axis.

If you use the SpringArm as a camera controller for your player, you might need to exclude the player's collider from the SpringArm's collision check.
**/
@:libType
@:csNative
@:native("Godot.SpringArm")
@:autoBuild(godot.Godot.buildUserClass())
extern class SpringArm extends godot.Spatial {
	/**		
		When the collision check is made, a candidate length for the SpringArm is given.
		
		The margin is then subtracted to this length and the translation is applied to the child objects of the SpringArm.
		
		This margin is useful for when the SpringArm has a `godot.Camera` as a child node: without the margin, the `godot.Camera` would be placed on the exact point of collision, while with the margin the `godot.Camera` would be placed close to the point of collision.
	**/
	@:native("Margin")
	public var margin:Single;

	/**		
		The maximum extent of the SpringArm. This is used as a length for both the ray and the shape cast used internally to calculate the desired position of the SpringArm's child nodes.
		
		To know more about how to perform a shape cast or a ray cast, please consult the `godot.PhysicsDirectSpaceState` documentation.
	**/
	@:native("SpringLength")
	public var springLength:Single;

	/**		
		The `godot.Shape` to use for the SpringArm.
		
		When the shape is set, the SpringArm will cast the `godot.Shape` on its z axis instead of performing a ray cast.
	**/
	@:native("Shape")
	public var shape:godot.Shape;

	/**		
		The layers against which the collision check shall be done. See [https://docs.godotengine.org/en/3.3/tutorials/physics/physics_introduction.html#collision-layers-and-masks](Collision layers and masks) in the documentation for more information.
	**/
	@:native("CollisionMask")
	public var collisionMask:UInt;

	@:native("new")
	public function new():Void;

	/**		
		Returns the spring arm's current length.
	**/
	@:native("GetHitLength")
	public function getHitLength():Single;

	@:native("SetLength")
	public function setLength(length:Single):Void;

	@:native("GetLength")
	public function getLength():Single;

	@:native("SetShape")
	public function setShape(shape:godot.Shape):Void;

	@:native("GetShape")
	public function getShape():godot.Shape;

	/**		
		Adds the `godot.PhysicsBody` object with the given `godot.RID` to the list of `godot.PhysicsBody` objects excluded from the collision check.
	**/
	@:native("AddExcludedObject")
	public function addExcludedObject(RID:godot.RID):Void;

	/**		
		Removes the given `godot.RID` from the list of `godot.PhysicsBody` objects excluded from the collision check.
	**/
	@:native("RemoveExcludedObject")
	public function removeExcludedObject(RID:godot.RID):Bool;

	/**		
		Clears the list of `godot.PhysicsBody` objects excluded from the collision check.
	**/
	@:native("ClearExcludedObjects")
	public function clearExcludedObjects():Void;

	@:native("SetCollisionMask")
	public function setCollisionMask(mask:UInt):Void;

	@:native("GetCollisionMask")
	public function getCollisionMask():UInt;

	@:native("SetMargin")
	public function setMargin(margin:Single):Void;

	@:native("GetMargin")
	public function getMargin():Single;
}
