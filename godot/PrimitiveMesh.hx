// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Base class for all primitive meshes. Handles applying a `godot.Material` to a primitive mesh. Examples include `godot.CapsuleMesh`, `godot.CubeMesh`, `godot.CylinderMesh`, `godot.PlaneMesh`, `godot.PrismMesh`, `godot.QuadMesh`, and `godot.SphereMesh`.
**/
@:libType
@:csNative
@:native("Godot.PrimitiveMesh")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class PrimitiveMesh extends godot.Mesh {
	/**		
		If set, the order of the vertices in each triangle are reversed resulting in the backside of the mesh being drawn.
		
		This gives the same result as using  in `godot.SpatialMaterial.paramsCullMode`.
	**/
	@:native("FlipFaces")
	public var flipFaces:Bool;

	/**		
		Overrides the `godot.AABB` with one defined by user for use with frustum culling. Especially useful to avoid unexpected culling when  using a shader to offset vertices.
	**/
	@:native("CustomAabb")
	public var customAabb:godot.AABB;

	/**		
		The current `godot.Material` of the primitive mesh.
	**/
	@:native("Material")
	public var material:godot.Material;

	@:native("SetMaterial")
	public function setMaterial(material:godot.Material):Void;

	@:native("GetMaterial")
	public function getMaterial():godot.Material;

	/**		
		Returns mesh arrays used to constitute surface of `godot.Mesh`. The result can be passed to `godot.ArrayMesh.addSurfaceFromArrays` to create a new surface. For example:
		
		```
		
		var c := CylinderMesh.new()
		var arr_mesh := ArrayMesh.new()
		arr_mesh.add_surface_from_arrays(Mesh.PRIMITIVE_TRIANGLES, c.get_mesh_arrays())
		
		```
	**/
	@:native("GetMeshArrays")
	public function getMeshArrays():godot.collections.Array;

	@:native("SetCustomAabb")
	public function setCustomAabb(aabb:godot.AABB):Void;

	@:native("GetCustomAabb")
	public function getCustomAabb():godot.AABB;

	@:native("SetFlipFaces")
	public function setFlipFaces(flipFaces:Bool):Void;

	@:native("GetFlipFaces")
	public function getFlipFaces():Bool;
}
