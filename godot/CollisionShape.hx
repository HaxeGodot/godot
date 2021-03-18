// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Editor facility for creating and editing collision shapes in 3D space. You can use this node to represent all sorts of collision shapes, for example, add this to an `godot.Area` to give it a detection shape, or add it to a `godot.PhysicsBody` to create a solid object. IMPORTANT: this is an Editor-only helper to create shapes, use `godot.CollisionObject.shapeOwnerGetShape` to get the actual shape.
**/
@:libType
@:csNative
@:native("Godot.CollisionShape")
@:autoBuild(godot.Godot.buildUserClass())
extern class CollisionShape extends godot.Spatial {
	/**		
		A disabled collision shape has no effect in the world.
	**/
	@:native("Disabled")
	public var disabled:Bool;

	/**		
		The actual shape owned by this collision shape.
	**/
	@:native("Shape")
	public var shape:godot.Shape;

	@:native("new")
	public function new():Void;

	/**		
		If this method exists within a script it will be called whenever the shape resource has been modified.
	**/
	@:native("ResourceChanged")
	public function resourceChanged(resource:godot.Resource):Void;

	@:native("SetShape")
	public function setShape(shape:godot.Shape):Void;

	@:native("GetShape")
	public function getShape():godot.Shape;

	@:native("SetDisabled")
	public function setDisabled(enable:Bool):Void;

	@:native("IsDisabled")
	public function isDisabled():Bool;

	/**		
		Sets the collision shape's shape to the addition of all its convexed `godot.MeshInstance` siblings geometry.
	**/
	@:native("MakeConvexFromBrothers")
	public function makeConvexFromBrothers():Void;
}
