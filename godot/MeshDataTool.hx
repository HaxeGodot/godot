// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
MeshDataTool provides access to individual vertices in a `godot.Mesh`. It allows users to read and edit vertex data of meshes. It also creates an array of faces and edges.

To use MeshDataTool, load a mesh with `godot.MeshDataTool.createFromSurface`. When you are finished editing the data commit the data to a mesh with `godot.MeshDataTool.commitToSurface`.

Below is an example of how MeshDataTool may be used.

```

var mesh = ArrayMesh.new()
mesh.add_surface_from_arrays(Mesh.PRIMITIVE_TRIANGLES, CubeMesh.new().get_mesh_arrays())
var mdt = MeshDataTool.new()
mdt.create_from_surface(mesh, 0)
for i in range(mdt.get_vertex_count()):
var vertex = mdt.get_vertex(i)
# In this example we extend the mesh by one unit, which results in seperated faces as it is flat shaded.
vertex += mdt.get_vertex_normal(i)
# Save your change.
mdt.set_vertex(i, vertex)
mesh.surface_remove(0)
mdt.commit_to_surface(mesh)
var mi = MeshInstance.new()
mi.mesh = mesh
add_child(mi)

```

See also `godot.ArrayMesh`, `godot.ImmediateGeometry` and `godot.SurfaceTool` for procedural geometry generation.

Note: Godot uses clockwise [https://learnopengl.com/Advanced-OpenGL/Face-culling](winding order) for front faces of triangle primitive modes.
**/
@:libType
@:csNative
@:native("Godot.MeshDataTool")
@:autoBuild(godot.Godot.buildUserClass())
extern class MeshDataTool extends godot.Reference {
	@:native("new")
	public function new():Void;

	/**		
		Clears all data currently in MeshDataTool.
	**/
	@:native("Clear")
	public function clear():Void;

	/**		
		Uses specified surface of given `godot.Mesh` to populate data for MeshDataTool.
		
		Requires `godot.Mesh` with primitive type .
	**/
	@:native("CreateFromSurface")
	public function createFromSurface(mesh:godot.ArrayMesh, surface:Int):godot.Error;

	/**		
		Adds a new surface to specified `godot.Mesh` with edited data.
	**/
	@:native("CommitToSurface")
	public function commitToSurface(mesh:godot.ArrayMesh):godot.Error;

	/**		
		Returns the `godot.Mesh`'s format. Format is an integer made up of `godot.Mesh` format flags combined together. For example, a mesh containing both vertices and normals would return a format of `3` because  is `1` and  is `2`.
		
		See `godot.ArrayMesh_ArrayFormat` for a list of format flags.
	**/
	@:native("GetFormat")
	public function getFormat():Int;

	/**		
		Returns the total number of vertices in `godot.Mesh`.
	**/
	@:native("GetVertexCount")
	public function getVertexCount():Int;

	/**		
		Returns the number of edges in this `godot.Mesh`.
	**/
	@:native("GetEdgeCount")
	public function getEdgeCount():Int;

	/**		
		Returns the number of faces in this `godot.Mesh`.
	**/
	@:native("GetFaceCount")
	public function getFaceCount():Int;

	/**		
		Sets the position of the given vertex.
	**/
	@:native("SetVertex")
	public function setVertex(idx:Int, vertex:godot.Vector3):Void;

	/**		
		Returns the vertex at given index.
	**/
	@:native("GetVertex")
	public function getVertex(idx:Int):godot.Vector3;

	/**		
		Sets the normal of the given vertex.
	**/
	@:native("SetVertexNormal")
	public function setVertexNormal(idx:Int, normal:godot.Vector3):Void;

	/**		
		Returns the normal of the given vertex.
	**/
	@:native("GetVertexNormal")
	public function getVertexNormal(idx:Int):godot.Vector3;

	/**		
		Sets the tangent of the given vertex.
	**/
	@:native("SetVertexTangent")
	public function setVertexTangent(idx:Int, tangent:godot.Plane):Void;

	/**		
		Returns the tangent of the given vertex.
	**/
	@:native("GetVertexTangent")
	public function getVertexTangent(idx:Int):godot.Plane;

	/**		
		Sets the UV of the given vertex.
	**/
	@:native("SetVertexUv")
	public function setVertexUv(idx:Int, uv:godot.Vector2):Void;

	/**		
		Returns the UV of the given vertex.
	**/
	@:native("GetVertexUv")
	public function getVertexUv(idx:Int):godot.Vector2;

	/**		
		Sets the UV2 of the given vertex.
	**/
	@:native("SetVertexUv2")
	public function setVertexUv2(idx:Int, uv2:godot.Vector2):Void;

	/**		
		Returns the UV2 of the given vertex.
	**/
	@:native("GetVertexUv2")
	public function getVertexUv2(idx:Int):godot.Vector2;

	/**		
		Sets the color of the given vertex.
	**/
	@:native("SetVertexColor")
	public function setVertexColor(idx:Int, color:godot.Color):Void;

	/**		
		Returns the color of the given vertex.
	**/
	@:native("GetVertexColor")
	public function getVertexColor(idx:Int):godot.Color;

	/**		
		Sets the bones of the given vertex.
	**/
	@:native("SetVertexBones")
	public function setVertexBones(idx:Int, bones:haxe.Rest<Int>):Void;

	/**		
		Returns the bones of the given vertex.
	**/
	public extern inline function getVertexBones(idx:Int):std.Array<Int> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetVertexBones({1})", this, idx));
	}

	/**		
		Sets the bone weights of the given vertex.
	**/
	@:native("SetVertexWeights")
	public function setVertexWeights(idx:Int, weights:haxe.Rest<Single>):Void;

	/**		
		Returns bone weights of the given vertex.
	**/
	public extern inline function getVertexWeights(idx:Int):std.Array<Single> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetVertexWeights({1})", this, idx));
	}

	/**		
		Sets the metadata associated with the given vertex.
	**/
	@:native("SetVertexMeta")
	public function setVertexMeta(idx:Int, meta:Dynamic):Void;

	/**		
		Returns the metadata associated with the given vertex.
	**/
	@:native("GetVertexMeta")
	public function getVertexMeta(idx:Int):Dynamic;

	/**		
		Returns an array of edges that share the given vertex.
	**/
	public extern inline function getVertexEdges(idx:Int):std.Array<Int> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetVertexEdges({1})", this, idx));
	}

	/**		
		Returns an array of faces that share the given vertex.
	**/
	public extern inline function getVertexFaces(idx:Int):std.Array<Int> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetVertexFaces({1})", this, idx));
	}

	/**		
		Returns index of specified vertex connected to given edge.
		
		Vertex argument can only be 0 or 1 because edges are comprised of two vertices.
	**/
	@:native("GetEdgeVertex")
	public function getEdgeVertex(idx:Int, vertex:Int):Int;

	/**		
		Returns array of faces that touch given edge.
	**/
	public extern inline function getEdgeFaces(idx:Int):std.Array<Int> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetEdgeFaces({1})", this, idx));
	}

	/**		
		Sets the metadata of the given edge.
	**/
	@:native("SetEdgeMeta")
	public function setEdgeMeta(idx:Int, meta:Dynamic):Void;

	/**		
		Returns meta information assigned to given edge.
	**/
	@:native("GetEdgeMeta")
	public function getEdgeMeta(idx:Int):Dynamic;

	/**		
		Returns the specified vertex of the given face.
		
		Vertex argument must be 2 or less because faces contain three vertices.
	**/
	@:native("GetFaceVertex")
	public function getFaceVertex(idx:Int, vertex:Int):Int;

	/**		
		Returns specified edge associated with given face.
		
		Edge argument must 2 or less because a face only has three edges.
	**/
	@:native("GetFaceEdge")
	public function getFaceEdge(idx:Int, edge:Int):Int;

	/**		
		Sets the metadata of the given face.
	**/
	@:native("SetFaceMeta")
	public function setFaceMeta(idx:Int, meta:Dynamic):Void;

	/**		
		Returns the metadata associated with the given face.
	**/
	@:native("GetFaceMeta")
	public function getFaceMeta(idx:Int):Dynamic;

	/**		
		Calculates and returns the face normal of the given face.
	**/
	@:native("GetFaceNormal")
	public function getFaceNormal(idx:Int):godot.Vector3;

	/**		
		Sets the material to be used by newly-constructed `godot.Mesh`.
	**/
	@:native("SetMaterial")
	public function setMaterial(material:godot.Material):Void;

	/**		
		Returns the material assigned to the `godot.Mesh`.
	**/
	@:native("GetMaterial")
	public function getMaterial():godot.Material;
}
