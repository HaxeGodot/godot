// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A deformable physics body. Used to create elastic or deformable objects such as cloth, rubber, or other flexible materials.
**/
@:libType
@:csNative
@:native("Godot.SoftBody")
@:autoBuild(godot.Godot.buildUserClass())
extern class SoftBody extends godot.MeshInstance {
	/**		
		If `true`, the `godot.SoftBody` will respond to `godot.RayCast`s.
	**/
	@:native("RayPickable")
	public var rayPickable:Bool;

	@:native("PoseMatchingCoefficient")
	public var poseMatchingCoefficient:Single;

	@:native("DragCoefficient")
	public var dragCoefficient:Single;

	@:native("DampingCoefficient")
	public var dampingCoefficient:Single;

	@:native("PressureCoefficient")
	public var pressureCoefficient:Single;

	@:native("VolumeStiffness")
	public var volumeStiffness:Single;

	@:native("AreaAngularStiffness")
	public var areaAngularStiffness:Single;

	@:native("LinearStiffness")
	public var linearStiffness:Single;

	/**		
		The SoftBody's mass.
	**/
	@:native("TotalMass")
	public var totalMass:Single;

	/**		
		Increasing this value will improve the resulting simulation, but can affect performance. Use with care.
	**/
	@:native("SimulationPrecision")
	public var simulationPrecision:Int;

	/**		
		`godot.NodePath` to a `godot.CollisionObject` this SoftBody should avoid clipping.
	**/
	@:native("ParentCollisionIgnore")
	public var parentCollisionIgnore:godot.NodePath;

	/**		
		The physics layers this SoftBody scans for collisions. See [https://docs.godotengine.org/en/latest/tutorials/physics/physics_introduction.html#collision-layers-and-masks](Collision layers and masks) in the documentation for more information.
	**/
	@:native("CollisionMask")
	public var collisionMask:UInt;

	/**		
		The physics layers this SoftBody is in.
		
		Collidable objects can exist in any of 32 different layers. These layers work like a tagging system, and are not visual. A collidable can use these layers to select with which objects it can collide, using the collision_mask property.
		
		A contact is detected if object A is in any of the layers that object B scans, or object B is in any layer scanned by object A. See [https://docs.godotengine.org/en/latest/tutorials/physics/physics_introduction.html#collision-layers-and-masks](Collision layers and masks) in the documentation for more information.
	**/
	@:native("CollisionLayer")
	public var collisionLayer:UInt;

	@:native("new")
	public function new():Void;

	@:native("SetCollisionMask")
	public function setCollisionMask(collisionMask:UInt):Void;

	@:native("GetCollisionMask")
	public function getCollisionMask():UInt;

	@:native("SetCollisionLayer")
	public function setCollisionLayer(collisionLayer:UInt):Void;

	@:native("GetCollisionLayer")
	public function getCollisionLayer():UInt;

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

	@:native("SetParentCollisionIgnore")
	public function setParentCollisionIgnore(parentCollisionIgnore:godot.NodePath):Void;

	@:native("GetParentCollisionIgnore")
	public function getParentCollisionIgnore():godot.NodePath;

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

	@:native("SetSimulationPrecision")
	public function setSimulationPrecision(simulationPrecision:Int):Void;

	@:native("GetSimulationPrecision")
	public function getSimulationPrecision():Int;

	@:native("SetTotalMass")
	public function setTotalMass(mass:Single):Void;

	@:native("GetTotalMass")
	public function getTotalMass():Single;

	@:native("SetLinearStiffness")
	public function setLinearStiffness(linearStiffness:Single):Void;

	@:native("GetLinearStiffness")
	public function getLinearStiffness():Single;

	@:native("SetAreaAngularStiffness")
	public function setAreaAngularStiffness(areaAngularStiffness:Single):Void;

	@:native("GetAreaAngularStiffness")
	public function getAreaAngularStiffness():Single;

	@:native("SetVolumeStiffness")
	public function setVolumeStiffness(volumeStiffness:Single):Void;

	@:native("GetVolumeStiffness")
	public function getVolumeStiffness():Single;

	@:native("SetPressureCoefficient")
	public function setPressureCoefficient(pressureCoefficient:Single):Void;

	@:native("GetPressureCoefficient")
	public function getPressureCoefficient():Single;

	@:native("SetPoseMatchingCoefficient")
	public function setPoseMatchingCoefficient(poseMatchingCoefficient:Single):Void;

	@:native("GetPoseMatchingCoefficient")
	public function getPoseMatchingCoefficient():Single;

	@:native("SetDampingCoefficient")
	public function setDampingCoefficient(dampingCoefficient:Single):Void;

	@:native("GetDampingCoefficient")
	public function getDampingCoefficient():Single;

	@:native("SetDragCoefficient")
	public function setDragCoefficient(dragCoefficient:Single):Void;

	@:native("GetDragCoefficient")
	public function getDragCoefficient():Single;

	@:native("SetRayPickable")
	public function setRayPickable(rayPickable:Bool):Void;

	@:native("IsRayPickable")
	public function isRayPickable():Bool;
}
