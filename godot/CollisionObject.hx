// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
CollisionObject is the base class for physics objects. It can hold any number of collision `godot.Shape`s. Each shape must be assigned to a shape owner. The CollisionObject can have any number of shape owners. Shape owners are not nodes and do not appear in the editor, but are accessible through code using the `shape_owner_*` methods.
**/
@:libType
@:csNative
@:native("Godot.CollisionObject")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class CollisionObject extends godot.Spatial {
	/**
		`input_event` signal.
		
		Emitted when `InputEvent` receives an event. See its description for details.
	**/
	public var onInputEvent(get, never):Signal<(camera:Node, event:InputEvent, clickPosition:Vector3, clickNormal:Vector3, shapeIdx:Int)->Void>;
	@:dox(hide) inline function get_onInputEvent():Signal<(camera:Node, event:InputEvent, clickPosition:Vector3, clickNormal:Vector3, shapeIdx:Int)->Void> {
		return new Signal(this, "input_event", Signal.SignalHandlerNodeInputEventVector3Vector3IntVoid.connectSignal, Signal.SignalHandlerNodeInputEventVector3Vector3IntVoid.disconnectSignal, Signal.SignalHandlerNodeInputEventVector3Vector3IntVoid.isSignalConnected);
	}

	/**
		`mouse_entered` signal.
		
		Emitted when the mouse pointer enters any of this object's shapes.
	**/
	public var onMouseEntered(get, never):Signal<Void->Void>;
	@:dox(hide) inline function get_onMouseEntered():Signal<Void->Void> {
		return new Signal(this, "mouse_entered", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`mouse_exited` signal.
		
		Emitted when the mouse pointer exits all this object's shapes.
	**/
	public var onMouseExited(get, never):Signal<Void->Void>;
	@:dox(hide) inline function get_onMouseExited():Signal<Void->Void> {
		return new Signal(this, "mouse_exited", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**		
		If `true`, the `godot.CollisionObject` will continue to receive input events as the mouse is dragged across its shapes.
	**/
	@:native("InputCaptureOnDrag")
	public var inputCaptureOnDrag:Bool;

	/**		
		If `true`, the `godot.CollisionObject`'s shapes will respond to `godot.RayCast`s.
	**/
	@:native("InputRayPickable")
	public var inputRayPickable:Bool;

	/**		
		Accepts unhandled `godot.InputEvent`s. `click_position` is the clicked location in world space and `click_normal` is the normal vector extending from the clicked surface of the `godot.Shape` at `shape_idx`. Connect to the `input_event` signal to easily pick up these events.
	**/
	@:native("_InputEvent")
	public function _InputEvent(camera:godot.Object, event:godot.InputEvent, clickPosition:godot.Vector3, clickNormal:godot.Vector3, shapeIdx:Int):Void;

	@:native("SetRayPickable")
	public function setRayPickable(rayPickable:Bool):Void;

	@:native("IsRayPickable")
	public function isRayPickable():Bool;

	@:native("SetCaptureInputOnDrag")
	public function setCaptureInputOnDrag(enable:Bool):Void;

	@:native("GetCaptureInputOnDrag")
	public function getCaptureInputOnDrag():Bool;

	/**		
		Returns the object's `godot.RID`.
	**/
	@:native("GetRid")
	public function getRid():godot.RID;

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
		Sets the `godot.Transform` of the given shape owner.
	**/
	@:native("ShapeOwnerSetTransform")
	public function shapeOwnerSetTransform(ownerId:UInt, transform:godot.Transform):Void;

	/**		
		Returns the shape owner's `godot.Transform`.
	**/
	@:native("ShapeOwnerGetTransform")
	public function shapeOwnerGetTransform(ownerId:UInt):godot.Transform;

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
		Adds a `godot.Shape` to the shape owner.
	**/
	@:native("ShapeOwnerAddShape")
	public function shapeOwnerAddShape(ownerId:UInt, shape:godot.Shape):Void;

	/**		
		Returns the number of shapes the given shape owner contains.
	**/
	@:native("ShapeOwnerGetShapeCount")
	public function shapeOwnerGetShapeCount(ownerId:UInt):Int;

	/**		
		Returns the `godot.Shape` with the given id from the given shape owner.
	**/
	@:native("ShapeOwnerGetShape")
	public function shapeOwnerGetShape(ownerId:UInt, shapeId:Int):godot.Shape;

	/**		
		Returns the child index of the `godot.Shape` with the given id from the given shape owner.
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
