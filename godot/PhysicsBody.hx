// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
PhysicsBody is an abstract base class for implementing a physics body. All *Body types inherit from it.
**/
@:libType
@:csNative
@:native("Godot.PhysicsBody")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class PhysicsBody extends godot.CollisionObject {
	/**		
		The physics layers this area scans for collisions. See [https://docs.godotengine.org/en/3.3/tutorials/physics/physics_introduction.html#collision-layers-and-masks](Collision layers and masks) in the documentation for more information.
	**/
	@:native("CollisionMask")
	public var collisionMask:UInt;

	/**		
		The physics layers this area is in.
		
		Collidable objects can exist in any of 32 different layers. These layers work like a tagging system, and are not visual. A collidable can use these layers to select with which objects it can collide, using the `godot.PhysicsBody.collisionMask` property.
		
		A contact is detected if object A is in any of the layers that object B scans, or object B is in any layer scanned by object A. See [https://docs.godotengine.org/en/3.3/tutorials/physics/physics_introduction.html#collision-layers-and-masks](Collision layers and masks) in the documentation for more information.
	**/
	@:native("CollisionLayer")
	public var collisionLayer:UInt;

	@:native("SetCollisionLayer")
	public function setCollisionLayer(layer:UInt):Void;

	@:native("GetCollisionLayer")
	public function getCollisionLayer():UInt;

	@:native("SetCollisionMask")
	public function setCollisionMask(mask:UInt):Void;

	@:native("GetCollisionMask")
	public function getCollisionMask():UInt;

	/**		
		Sets individual bits on the `godot.PhysicsBody.collisionMask` bitmask. Use this if you only need to change one layer's value.
	**/
	@:native("SetCollisionMaskBit")
	public function setCollisionMaskBit(bit:Int, value:Bool):Void;

	/**		
		Returns an individual bit on the `godot.PhysicsBody.collisionMask`.
	**/
	@:native("GetCollisionMaskBit")
	public function getCollisionMaskBit(bit:Int):Bool;

	/**		
		Sets individual bits on the `godot.PhysicsBody.collisionLayer` bitmask. Use this if you only need to change one layer's value.
	**/
	@:native("SetCollisionLayerBit")
	public function setCollisionLayerBit(bit:Int, value:Bool):Void;

	/**		
		Returns an individual bit on the `godot.PhysicsBody.collisionLayer`.
	**/
	@:native("GetCollisionLayerBit")
	public function getCollisionLayerBit(bit:Int):Bool;

	/**		
		Returns an array of nodes that were added as collision exceptions for this body.
	**/
	@:native("GetCollisionExceptions")
	public function getCollisionExceptions():godot.collections.Array;

	/**		
		Adds a body to the list of bodies that this body can't collide with.
	**/
	@:native("AddCollisionExceptionWith")
	public function addCollisionExceptionWith(body:godot.Node):Void;

	/**		
		Removes a body from the list of bodies that this body can't collide with.
	**/
	@:native("RemoveCollisionExceptionWith")
	public function removeCollisionExceptionWith(body:godot.Node):Void;
}
