// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Class representing a planar `godot.PrimitiveMesh`. This flat mesh does not have a thickness. By default, this mesh is aligned on the X and Z axes; this default rotation isn't suited for use with billboarded materials. For billboarded materials, use `godot.QuadMesh` instead.

Note: When using a large textured `godot.PlaneMesh` (e.g. as a floor), you may stumble upon UV jittering issues depending on the camera angle. To solve this, increase `godot.PlaneMesh.subdivideDepth` and `godot.PlaneMesh.subdivideWidth` until you no longer notice UV jittering.
**/
@:libType
@:csNative
@:native("Godot.PlaneMesh")
@:autoBuild(godot.Godot.buildUserClass())
extern class PlaneMesh extends godot.PrimitiveMesh {
	/**		
		Offset from the origin of the generated plane. Useful for particles.
	**/
	@:native("CenterOffset")
	public var centerOffset:godot.Vector3;

	/**		
		Number of subdivision along the Z axis.
	**/
	@:native("SubdivideDepth")
	public var subdivideDepth:Int;

	/**		
		Number of subdivision along the X axis.
	**/
	@:native("SubdivideWidth")
	public var subdivideWidth:Int;

	/**		
		Size of the generated plane.
	**/
	@:native("Size")
	public var size:godot.Vector2;

	@:native("new")
	public function new():Void;

	@:native("SetSize")
	public function setSize(size:godot.Vector2):Void;

	@:native("GetSize")
	public function getSize():godot.Vector2;

	@:native("SetSubdivideWidth")
	public function setSubdivideWidth(subdivide:Int):Void;

	@:native("GetSubdivideWidth")
	public function getSubdivideWidth():Int;

	@:native("SetSubdivideDepth")
	public function setSubdivideDepth(subdivide:Int):Void;

	@:native("GetSubdivideDepth")
	public function getSubdivideDepth():Int;

	@:native("SetCenterOffset")
	public function setCenterOffset(offset:godot.Vector3):Void;

	@:native("GetCenterOffset")
	public function getCenterOffset():godot.Vector3;
}
