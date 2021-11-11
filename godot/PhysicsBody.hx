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
