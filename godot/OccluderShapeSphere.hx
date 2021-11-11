// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
`godot.OccluderShape`s are resources used by `godot.Occluder` nodes, allowing geometric occlusion culling.

This shape can include multiple spheres. These can be created and deleted either in the Editor inspector or by calling `set_spheres`. The sphere positions can be set by dragging the handle in the Editor viewport. The radius can be set with the smaller handle.
**/
@:libType
@:csNative
@:native("Godot.OccluderShapeSphere")
@:autoBuild(godot.Godot.buildUserClass())
extern class OccluderShapeSphere extends godot.OccluderShape {
	/**		
		The sphere data can be accessed as an array of `godot.Plane`s. The position of each sphere is stored in the `normal`, and the radius is stored in the `d` value of the plane.
	**/
	@:native("Spheres")
	public var spheres:godot.collections.Array;

	@:native("new")
	public function new():Void;

	@:native("SetSpheres")
	public function setSpheres(spheres:godot.collections.Array):Void;

	@:native("GetSpheres")
	public function getSpheres():godot.collections.Array;

	/**		
		Sets an individual sphere's position.
	**/
	@:native("SetSpherePosition")
	public function setSpherePosition(index:Int, position:godot.Vector3):Void;

	/**		
		Sets an individual sphere's radius.
	**/
	@:native("SetSphereRadius")
	public function setSphereRadius(index:Int, radius:Single):Void;
}
