// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Base class for all 2D shapes. All 2D shape types inherit from this.
**/
@:libType
@:csNative
@:native("Godot.Shape2D")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class Shape2D extends godot.Resource {
	/**		
		The shape's custom solver bias.
	**/
	@:native("CustomSolverBias")
	public var customSolverBias:Single;

	@:native("SetCustomSolverBias")
	public function setCustomSolverBias(bias:Single):Void;

	@:native("GetCustomSolverBias")
	public function getCustomSolverBias():Single;

	/**		
		Returns `true` if this shape is colliding with another.
		
		This method needs the transformation matrix for this shape (`local_xform`), the shape to check collisions with (`with_shape`), and the transformation matrix of that shape (`shape_xform`).
	**/
	@:native("Collide")
	public function collide(localXform:godot.Transform2D, withShape:godot.Shape2D, shapeXform:godot.Transform2D):Bool;

	/**		
		Returns whether this shape would collide with another, if a given movement was applied.
		
		This method needs the transformation matrix for this shape (`local_xform`), the movement to test on this shape (`local_motion`), the shape to check collisions with (`with_shape`), the transformation matrix of that shape (`shape_xform`), and the movement to test onto the other object (`shape_motion`).
	**/
	@:native("CollideWithMotion")
	public function collideWithMotion(localXform:godot.Transform2D, localMotion:godot.Vector2, withShape:godot.Shape2D, shapeXform:godot.Transform2D, shapeMotion:godot.Vector2):Bool;

	/**		
		Returns a list of the points where this shape touches another. If there are no collisions the list is empty.
		
		This method needs the transformation matrix for this shape (`local_xform`), the shape to check collisions with (`with_shape`), and the transformation matrix of that shape (`shape_xform`).
	**/
	@:native("CollideAndGetContacts")
	public function collideAndGetContacts(localXform:godot.Transform2D, withShape:godot.Shape2D, shapeXform:godot.Transform2D):godot.collections.Array;

	/**		
		Returns a list of the points where this shape would touch another, if a given movement was applied. If there are no collisions the list is empty.
		
		This method needs the transformation matrix for this shape (`local_xform`), the movement to test on this shape (`local_motion`), the shape to check collisions with (`with_shape`), the transformation matrix of that shape (`shape_xform`), and the movement to test onto the other object (`shape_motion`).
	**/
	@:native("CollideWithMotionAndGetContacts")
	public function collideWithMotionAndGetContacts(localXform:godot.Transform2D, localMotion:godot.Vector2, withShape:godot.Shape2D, shapeXform:godot.Transform2D, shapeMotion:godot.Vector2):godot.collections.Array;

	/**		
		Draws a solid shape onto a `godot.CanvasItem` with the `godot.VisualServer` API filled with the specified `color`. The exact drawing method is specific for each shape and cannot be configured.
	**/
	@:native("Draw")
	public function draw(canvasItem:godot.RID, color:godot.Color):Void;
}
