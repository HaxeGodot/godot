// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Class representing a square `godot.PrimitiveMesh`. This flat mesh does not have a thickness. By default, this mesh is aligned on the X and Y axes; this default rotation is more suited for use with billboarded materials. Unlike `godot.PlaneMesh`, this mesh doesn't provide subdivision options.
**/
@:libType
@:csNative
@:native("Godot.QuadMesh")
@:autoBuild(godot.Godot.buildUserClass())
extern class QuadMesh extends godot.PrimitiveMesh {
	/**		
		Offset of the generated Quad. Useful for particles.
	**/
	@:native("CenterOffset")
	public var centerOffset:godot.Vector3;

	/**		
		Size on the X and Y axes.
	**/
	@:native("Size")
	public var size:godot.Vector2;

	@:native("new")
	public function new():Void;

	@:native("SetSize")
	public function setSize(size:godot.Vector2):Void;

	@:native("GetSize")
	public function getSize():godot.Vector2;

	@:native("SetCenterOffset")
	public function setCenterOffset(centerOffset:godot.Vector3):Void;

	@:native("GetCenterOffset")
	public function getCenterOffset():godot.Vector3;
}
