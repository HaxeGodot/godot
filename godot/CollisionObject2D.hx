// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
CollisionObject2D is the base class for 2D physics objects. It can hold any number of 2D collision `godot.Shape2D`s. Each shape must be assigned to a shape owner. The CollisionObject2D can have any number of shape owners. Shape owners are not nodes and do not appear in the editor, but are accessible through code using the `shape_owner_*` methods.
**/
@:libType
@:csNative
@:native("Godot.CollisionObject2D")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class CollisionObject2D extends godot.Node2D {
	/**		
		If `true`, this object is pickable. A pickable object can detect the mouse pointer entering/leaving, and if the mouse is inside it, report input events. Requires at least one `collision_layer` bit to be set.
	**/
	@:native("InputPickable")
	public var inputPickable:Bool;

	/**		
		Accepts unhandled `godot.InputEvent`s. Requires `godot.CollisionObject2D.inputPickable` to be `true`. `shape_idx` is the child index of the clicked `godot.Shape2D`. Connect to the `input_event` signal to easily pick up these events.
	**/
	@:native("_InputEvent")
	public function _InputEvent(viewport:godot.Object, event:godot.InputEvent, shapeIdx:Int):Void;

	/**		
		Returns the object's `godot.RID`.
	**/
	@:native("GetRid")
	public function getRid():godot.RID;

	@:native("SetPickable")
	public function setPickable(enabled:Bool):Void;

	@:native("IsPickable")
	public function isPickable():Bool;

	/**		
		Creates a new shape owner for the given object. Returns `owner_id` of the new owner for future reference.
	**/
	@:native("CreateShapeOwner")
	public function createShapeOwner(owner:godot.Object):UInt;

	/**		
		Removes the given shape owner.
	**/
	@:native("RemoveShapeOwner")
	public function removeShapeOwner(ownerId:UInt):Void;

	/**		
		Returns an `godot.Collections_Array` of `owner_id` identifiers. You can use these ids in other methods that take `owner_id` as an argument.
	**/
	@:native("GetShapeOwners")
	public function getShapeOwners():godot.collections.Array;

	/**		
		Sets the `godot.Transform2D` of the given shape owner.
	**/
	@:native("ShapeOwnerSetTransform")
	public function shapeOwnerSetTransform(ownerId:UInt, transform:godot.Transform2D):Void;

	/**		
		Returns the shape owner's `godot.Transform2D`.
	**/
	@:native("ShapeOwnerGetTransform")
	public function shapeOwnerGetTransform(ownerId:UInt):godot.Transform2D;

	/**		
		Returns the parent object of the given shape owner.
	**/
	@:native("ShapeOwnerGetOwner")
	public function shapeOwnerGetOwner(ownerId:UInt):godot.Object;

	/**		
		If `true`, disables the given shape owner.
	**/
	@:native("ShapeOwnerSetDisabled")
	public function shapeOwnerSetDisabled(ownerId:UInt, disabled:Bool):Void;

	/**		
		If `true`, the shape owner and its shapes are disabled.
	**/
	@:native("IsShapeOwnerDisabled")
	public function isShapeOwnerDisabled(ownerId:UInt):Bool;

	/**		
		If `enable` is `true`, collisions for the shape owner originating from this `godot.CollisionObject2D` will not be reported to collided with `godot.CollisionObject2D`s.
	**/
	@:native("ShapeOwnerSetOneWayCollision")
	public function shapeOwnerSetOneWayCollision(ownerId:UInt, enable:Bool):Void;

	/**		
		Returns `true` if collisions for the shape owner originating from this `godot.CollisionObject2D` will not be reported to collided with `godot.CollisionObject2D`s.
	**/
	@:native("IsShapeOwnerOneWayCollisionEnabled")
	public function isShapeOwnerOneWayCollisionEnabled(ownerId:UInt):Bool;

	/**		
		Sets the `one_way_collision_margin` of the shape owner identified by given `owner_id` to `margin` pixels.
	**/
	@:native("ShapeOwnerSetOneWayCollisionMargin")
	public function shapeOwnerSetOneWayCollisionMargin(ownerId:UInt, margin:Single):Void;

	/**		
		Returns the `one_way_collision_margin` of the shape owner identified by given `owner_id`.
	**/
	@:native("GetShapeOwnerOneWayCollisionMargin")
	public function getShapeOwnerOneWayCollisionMargin(ownerId:UInt):Single;

	/**		
		Adds a `godot.Shape2D` to the shape owner.
	**/
	@:native("ShapeOwnerAddShape")
	public function shapeOwnerAddShape(ownerId:UInt, shape:godot.Shape2D):Void;

	/**		
		Returns the number of shapes the given shape owner contains.
	**/
	@:native("ShapeOwnerGetShapeCount")
	public function shapeOwnerGetShapeCount(ownerId:UInt):Int;

	/**		
		Returns the `godot.Shape2D` with the given id from the given shape owner.
	**/
	@:native("ShapeOwnerGetShape")
	public function shapeOwnerGetShape(ownerId:UInt, shapeId:Int):godot.Shape2D;

	/**		
		Returns the child index of the `godot.Shape2D` with the given id from the given shape owner.
	**/
	@:native("ShapeOwnerGetShapeIndex")
	public function shapeOwnerGetShapeIndex(ownerId:UInt, shapeId:Int):Int;

	/**		
		Removes a shape from the given shape owner.
	**/
	@:native("ShapeOwnerRemoveShape")
	public function shapeOwnerRemoveShape(ownerId:UInt, shapeId:Int):Void;

	/**		
		Removes all shapes from the shape owner.
	**/
	@:native("ShapeOwnerClearShapes")
	public function shapeOwnerClearShapes(ownerId:UInt):Void;

	/**		
		Returns the `owner_id` of the given shape.
	**/
	@:native("ShapeFindOwner")
	public function shapeFindOwner(shapeIndex:Int):UInt;
}
