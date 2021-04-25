// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This is the CSG base class that provides CSG operation support to the various CSG nodes in Godot.
**/
@:libType
@:csNative
@:native("Godot.CSGShape")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class CSGShape extends godot.GeometryInstance {
	/**		
		The physics layers this CSG shape scans for collisions. See [https://docs.godotengine.org/en/3.3/tutorials/physics/physics_introduction.html#collision-layers-and-masks](Collision layers and masks) in the documentation for more information.
	**/
	@:native("CollisionMask")
	public var collisionMask:UInt;

	/**		
		The physics layers this area is in.
		
		Collidable objects can exist in any of 32 different layers. These layers work like a tagging system, and are not visual. A collidable can use these layers to select with which objects it can collide, using the collision_mask property.
		
		A contact is detected if object A is in any of the layers that object B scans, or object B is in any layer scanned by object A. See [https://docs.godotengine.org/en/3.3/tutorials/physics/physics_introduction.html#collision-layers-and-masks](Collision layers and masks) in the documentation for more information.
	**/
	@:native("CollisionLayer")
	public var collisionLayer:UInt;

	/**		
		Adds a collision shape to the physics engine for our CSG shape. This will always act like a static body. Note that the collision shape is still active even if the CSG shape itself is hidden.
	**/
	@:native("UseCollision")
	public var useCollision:Bool;

	/**		
		Calculate tangents for the CSG shape which allows the use of normal maps. This is only applied on the root shape, this setting is ignored on any child.
	**/
	@:native("CalculateTangents")
	public var calculateTangents:Bool;

	/**		
		Snap makes the mesh snap to a given distance so that the faces of two meshes can be perfectly aligned. A lower value results in greater precision but may be harder to adjust.
	**/
	@:native("Snap")
	public var snap:Single;

	/**		
		The operation that is performed on this shape. This is ignored for the first CSG child node as the operation is between this node and the previous child of this nodes parent.
	**/
	@:native("Operation")
	public var operation:godot.CSGShape_OperationEnum;

	/**		
		Returns `true` if this is a root shape and is thus the object that is rendered.
	**/
	@:native("IsRootShape")
	public function isRootShape():Bool;

	@:native("SetOperation")
	public function setOperation(operation:godot.CSGShape_OperationEnum):Void;

	@:native("GetOperation")
	public function getOperation():godot.CSGShape_OperationEnum;

	@:native("SetSnap")
	public function setSnap(snap:Single):Void;

	@:native("GetSnap")
	public function getSnap():Single;

	@:native("SetUseCollision")
	public function setUseCollision(operation:Bool):Void;

	@:native("IsUsingCollision")
	public function isUsingCollision():Bool;

	@:native("SetCollisionLayer")
	public function setCollisionLayer(layer:UInt):Void;

	@:native("GetCollisionLayer")
	public function getCollisionLayer():UInt;

	@:native("SetCollisionMask")
	public function setCollisionMask(mask:UInt):Void;

	@:native("GetCollisionMask")
	public function getCollisionMask():UInt;

	/**		
		Sets individual bits on the collision mask. Use this if you only need to change one layer's value.
	**/
	@:native("SetCollisionMaskBit")
	public function setCollisionMaskBit(bit:Int, value:Bool):Void;

	/**		
		Returns an individual bit on the collision mask.
	**/
	@:native("GetCollisionMaskBit")
	public function getCollisionMaskBit(bit:Int):Bool;

	/**		
		Sets individual bits on the layer mask. Use this if you only need to change one layer's value.
	**/
	@:native("SetCollisionLayerBit")
	public function setCollisionLayerBit(bit:Int, value:Bool):Void;

	/**		
		Returns an individual bit on the collision mask.
	**/
	@:native("GetCollisionLayerBit")
	public function getCollisionLayerBit(bit:Int):Bool;

	@:native("SetCalculateTangents")
	public function setCalculateTangents(enabled:Bool):Void;

	@:native("IsCalculatingTangents")
	public function isCalculatingTangents():Bool;

	/**		
		Returns an `godot.Collections_Array` with two elements, the first is the `godot.Transform` of this node and the second is the root `godot.Mesh` of this node. Only works when this node is the root shape.
	**/
	@:native("GetMeshes")
	public function getMeshes():godot.collections.Array;
}
