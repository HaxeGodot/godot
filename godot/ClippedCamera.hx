// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This node extends `godot.Camera` to add collisions with `godot.Area` and/or `godot.PhysicsBody` nodes. The camera cannot move through colliding objects.
**/
@:libType
@:csNative
@:native("Godot.ClippedCamera")
@:autoBuild(godot.Godot.buildUserClass())
extern class ClippedCamera extends godot.Camera {
	/**		
		If `true`, the camera stops on contact with `godot.PhysicsBody`s.
	**/
	@:native("ClipToBodies")
	public var clipToBodies:Bool;

	/**		
		If `true`, the camera stops on contact with `godot.Area`s.
	**/
	@:native("ClipToAreas")
	public var clipToAreas:Bool;

	/**		
		The camera's collision mask. Only objects in at least one collision layer matching the mask will be detected. See [https://docs.godotengine.org/en/latest/tutorials/physics/physics_introduction.html#collision-layers-and-masks](Collision layers and masks) in the documentation for more information.
	**/
	@:native("CollisionMask")
	public var collisionMask:UInt;

	/**		
		The camera's process callback. See `godot.ClippedCamera_ProcessModeEnum`.
	**/
	@:native("ProcessMode")
	public var processMode:godot.ClippedCamera_ProcessModeEnum;

	/**		
		The camera's collision margin. The camera can't get closer than this distance to a colliding object.
	**/
	@:native("Margin")
	public var margin:Single;

	@:native("new")
	public function new():Void;

	@:native("SetMargin")
	public function setMargin(margin:Single):Void;

	@:native("GetMargin")
	public function getMargin():Single;

	@:native("SetProcessMode")
	public function setProcessMode(processMode:godot.ClippedCamera_ProcessModeEnum):Void;

	@:native("GetProcessMode")
	public function getProcessMode():godot.ClippedCamera_ProcessModeEnum;

	@:native("SetCollisionMask")
	public function setCollisionMask(mask:UInt):Void;

	@:native("GetCollisionMask")
	public function getCollisionMask():UInt;

	/**		
		Sets the specified bit index to the `value`.
		
		Note: Bit indices range from 0-19.
	**/
	@:native("SetCollisionMaskBit")
	public function setCollisionMaskBit(bit:Int, value:Bool):Void;

	/**		
		Returns `true` if the specified bit index is on.
		
		Note: Bit indices range from 0-19.
	**/
	@:native("GetCollisionMaskBit")
	public function getCollisionMaskBit(bit:Int):Bool;

	/**		
		Adds a collision exception so the camera does not collide with the specified `godot.RID`.
	**/
	@:native("AddExceptionRid")
	public function addExceptionRid(rid:godot.RID):Void;

	/**		
		Adds a collision exception so the camera does not collide with the specified node.
	**/
	@:native("AddException")
	public function addException(node:godot.Object):Void;

	/**		
		Removes a collision exception with the specified `godot.RID`.
	**/
	@:native("RemoveExceptionRid")
	public function removeExceptionRid(rid:godot.RID):Void;

	/**		
		Removes a collision exception with the specified node.
	**/
	@:native("RemoveException")
	public function removeException(node:godot.Object):Void;

	@:native("SetClipToAreas")
	public function setClipToAreas(enable:Bool):Void;

	@:native("IsClipToAreasEnabled")
	public function isClipToAreasEnabled():Bool;

	/**		
		Returns the distance the camera has been offset due to a collision.
	**/
	@:native("GetClipOffset")
	public function getClipOffset():Single;

	@:native("SetClipToBodies")
	public function setClipToBodies(enable:Bool):Void;

	@:native("IsClipToBodiesEnabled")
	public function isClipToBodiesEnabled():Bool;

	/**		
		Removes all collision exceptions.
	**/
	@:native("ClearExceptions")
	public function clearExceptions():Void;
}
