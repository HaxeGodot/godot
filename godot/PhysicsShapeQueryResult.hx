// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
The result of a 3D shape query in `godot.PhysicsServer`. See also `godot.PhysicsShapeQueryParameters`.
**/
@:libType
@:csNative
@:native("Godot.PhysicsShapeQueryResult")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class PhysicsShapeQueryResult extends godot.Reference {
	/**		
		Returns the number of objects that intersected with the shape.
	**/
	@:native("GetResultCount")
	public function getResultCount():Int;

	/**		
		Returns the `godot.RID` of the object that intersected with the shape at index `idx`.
	**/
	@:native("GetResultRid")
	public function getResultRid(idx:Int):godot.RID;

	/**		
		Returns the instance ID of the `godot.Object` that intersected with the shape at index `idx`.
	**/
	@:native("GetResultObjectId")
	public function getResultObjectId(idx:Int):cs.types.UInt64;

	/**		
		Returns the `godot.Object` that intersected with the shape at index `idx`.
	**/
	@:native("GetResultObject")
	public function getResultObject(idx:Int):godot.Object;

	/**		
		Returns the child index of the object's `godot.Shape` that intersected with the shape at index `idx`.
	**/
	@:native("GetResultObjectShape")
	public function getResultObjectShape(idx:Int):Int;
}
