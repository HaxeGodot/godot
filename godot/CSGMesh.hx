// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This CSG node allows you to use any mesh resource as a CSG shape, provided it is closed, does not self-intersect, does not contain internal faces and has no edges that connect to more than two faces. See also `godot.CSGPolygon` for drawing 2D extruded polygons to be used as CSG nodes.

Note: CSG nodes are intended to be used for level prototyping. Creating CSG nodes has a significant CPU cost compared to creating a `godot.MeshInstance` with a `godot.PrimitiveMesh`. Moving a CSG node within another CSG node also has a significant CPU cost, so it should be avoided during gameplay.
**/
@:libType
@:csNative
@:native("Godot.CSGMesh")
@:autoBuild(godot.Godot.buildUserClass())
extern class CSGMesh extends godot.CSGPrimitive {
	/**		
		The `godot.Material` used in drawing the CSG shape.
	**/
	@:native("Material")
	public var material:godot.Material;

	/**		
		The `godot.Mesh` resource to use as a CSG shape.
		
		Note: When using an `godot.ArrayMesh`, avoid meshes with vertex normals unless a flat shader is required. By default, CSGMesh will ignore the mesh's vertex normals and use a smooth shader calculated using the faces' normals. If a flat shader is required, ensure that all faces' vertex normals are parallel.
	**/
	@:native("Mesh")
	public var mesh:godot.Mesh;

	@:native("new")
	public function new():Void;

	@:native("SetMesh")
	public function setMesh(mesh:godot.Mesh):Void;

	@:native("GetMesh")
	public function getMesh():godot.Mesh;

	@:native("SetMaterial")
	public function setMaterial(material:godot.Material):Void;

	@:native("GetMaterial")
	public function getMaterial():godot.Material;
}
