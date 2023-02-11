// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
The `godot.ArrayMesh` is used to construct a `godot.Mesh` by specifying the attributes as arrays.

The most basic example is the creation of a single triangle:

```

var vertices = PoolVector3Array()
vertices.push_back(Vector3(0, 1, 0))
vertices.push_back(Vector3(1, 0, 0))
vertices.push_back(Vector3(0, 0, 1))
# Initialize the ArrayMesh.
var arr_mesh = ArrayMesh.new()
var arrays = []
arrays.resize(ArrayMesh.ARRAY_MAX)
arrays[ArrayMesh.ARRAY_VERTEX] = vertices
# Create the Mesh.
arr_mesh.add_surface_from_arrays(Mesh.PRIMITIVE_TRIANGLES, arrays)
var m = MeshInstance.new()
m.mesh = arr_mesh

```

The `godot.MeshInstance` is ready to be added to the `godot.SceneTree` to be shown.

See also `godot.ImmediateGeometry`, `godot.MeshDataTool` and `godot.SurfaceTool` for procedural geometry generation.

Note: Godot uses clockwise [https://learnopengl.com/Advanced-OpenGL/Face-culling](winding order) for front faces of triangle primitive modes.
**/
@:libType
@:csNative
@:native("Godot.ArrayMesh")
@:autoBuild(godot.Godot.buildUserClass())
extern class ArrayMesh extends godot.Mesh {
	/**		
		Overrides the `godot.AABB` with one defined by user for use with frustum culling. Especially useful to avoid unexpected culling when using a shader to offset vertices.
	**/
	@:native("CustomAabb")
	public var customAabb:godot.AABB;

	/**		
		Sets the blend shape mode to one of `godot.Mesh_BlendShapeMode`.
	**/
	@:native("BlendShapeMode")
	public var blendShapeMode:godot.Mesh_BlendShapeMode;

	/**		
		Amount of weights/bone indices per vertex (always 4).
	**/
	@:native("ArrayWeightsSize") @:readOnly
	public static var ARRAY_WEIGHTS_SIZE(default, never):Int;

	/**		
		Default value used for index_array_len when no indices are present.
	**/
	@:native("NoIndexArray") @:readOnly
	public static var NO_INDEX_ARRAY(default, never):Int;

	@:native("new")
	public function new():Void;

	/**		
		Adds name for a blend shape that will be added with `godot.ArrayMesh.addSurfaceFromArrays`. Must be called before surface is added.
	**/
	@:native("AddBlendShape")
	public function addBlendShape(name:std.String):Void;

	/**		
		Returns the number of blend shapes that the `godot.ArrayMesh` holds.
	**/
	@:native("GetBlendShapeCount")
	public function getBlendShapeCount():Int;

	/**		
		Returns the name of the blend shape at this index.
	**/
	@:native("GetBlendShapeName")
	public function getBlendShapeName(index:Int):std.String;

	@:native("SetBlendShapeName")
	public function setBlendShapeName(index:Int, name:std.String):Void;

	/**		
		Removes all blend shapes from this `godot.ArrayMesh`.
	**/
	@:native("ClearBlendShapes")
	public function clearBlendShapes():Void;

	@:native("SetBlendShapeMode")
	public function setBlendShapeMode(mode:godot.Mesh_BlendShapeMode):Void;

	@:native("GetBlendShapeMode")
	public function getBlendShapeMode():godot.Mesh_BlendShapeMode;

	#if doc_gen
	/**		
		Creates a new surface.
		
		Surfaces are created to be rendered using a `primitive`, which may be any of the types defined in `godot.Mesh_PrimitiveType`. (As a note, when using indices, it is recommended to only use points, lines, or triangles.) `godot.Mesh.getSurfaceCount` will become the `surf_idx` for this new surface.
		
		The `arrays` argument is an array of arrays. See `godot.ArrayMesh_ArrayType` for the values used in this array. For example, `arrays[0]` is the array of vertices. That first vertex sub-array is always required; the others are optional. Adding an index array puts this function into "index mode" where the vertex and other arrays become the sources of data and the index array defines the vertex order. All sub-arrays must have the same length as the vertex array or be empty, except for `godot.ArrayMesh_ArrayType.index` if it is used.
		
		@param blendShapes If the parameter is null, then the default value is new Godot.Collections.Array { }
	**/
	@:native("AddSurfaceFromArrays")
	public function addSurfaceFromArrays(primitive:godot.Mesh_PrimitiveType, arrays:godot.collections.Array, ?blendShapes:godot.collections.Array, ?compressFlags:UInt):Void;
	#else
	/**		
		Creates a new surface.
		
		Surfaces are created to be rendered using a `primitive`, which may be any of the types defined in `godot.Mesh_PrimitiveType`. (As a note, when using indices, it is recommended to only use points, lines, or triangles.) `godot.Mesh.getSurfaceCount` will become the `surf_idx` for this new surface.
		
		The `arrays` argument is an array of arrays. See `godot.ArrayMesh_ArrayType` for the values used in this array. For example, `arrays[0]` is the array of vertices. That first vertex sub-array is always required; the others are optional. Adding an index array puts this function into "index mode" where the vertex and other arrays become the sources of data and the index array defines the vertex order. All sub-arrays must have the same length as the vertex array or be empty, except for `godot.ArrayMesh_ArrayType.index` if it is used.
		
		@param blendShapes If the parameter is null, then the default value is new Godot.Collections.Array { }
	**/
	@:native("AddSurfaceFromArrays")
	public overload function addSurfaceFromArrays(primitive:godot.Mesh_PrimitiveType, arrays:godot.collections.Array):Void;

	/**		
		Creates a new surface.
		
		Surfaces are created to be rendered using a `primitive`, which may be any of the types defined in `godot.Mesh_PrimitiveType`. (As a note, when using indices, it is recommended to only use points, lines, or triangles.) `godot.Mesh.getSurfaceCount` will become the `surf_idx` for this new surface.
		
		The `arrays` argument is an array of arrays. See `godot.ArrayMesh_ArrayType` for the values used in this array. For example, `arrays[0]` is the array of vertices. That first vertex sub-array is always required; the others are optional. Adding an index array puts this function into "index mode" where the vertex and other arrays become the sources of data and the index array defines the vertex order. All sub-arrays must have the same length as the vertex array or be empty, except for `godot.ArrayMesh_ArrayType.index` if it is used.
		
		@param blendShapes If the parameter is null, then the default value is new Godot.Collections.Array { }
	**/
	@:native("AddSurfaceFromArrays")
	public overload function addSurfaceFromArrays(primitive:godot.Mesh_PrimitiveType, arrays:godot.collections.Array, blendShapes:godot.collections.Array):Void;

	/**		
		Creates a new surface.
		
		Surfaces are created to be rendered using a `primitive`, which may be any of the types defined in `godot.Mesh_PrimitiveType`. (As a note, when using indices, it is recommended to only use points, lines, or triangles.) `godot.Mesh.getSurfaceCount` will become the `surf_idx` for this new surface.
		
		The `arrays` argument is an array of arrays. See `godot.ArrayMesh_ArrayType` for the values used in this array. For example, `arrays[0]` is the array of vertices. That first vertex sub-array is always required; the others are optional. Adding an index array puts this function into "index mode" where the vertex and other arrays become the sources of data and the index array defines the vertex order. All sub-arrays must have the same length as the vertex array or be empty, except for `godot.ArrayMesh_ArrayType.index` if it is used.
		
		@param blendShapes If the parameter is null, then the default value is new Godot.Collections.Array { }
	**/
	@:native("AddSurfaceFromArrays")
	public overload function addSurfaceFromArrays(primitive:godot.Mesh_PrimitiveType, arrays:godot.collections.Array, blendShapes:godot.collections.Array, compressFlags:UInt):Void;
	#end

	/**		
		Removes all surfaces from this `godot.ArrayMesh`.
	**/
	@:native("ClearSurfaces")
	public function clearSurfaces():Void;

	/**		
		Removes a surface at position `surf_idx`, shifting greater surfaces one `surf_idx` slot down.
	**/
	@:native("SurfaceRemove")
	public function surfaceRemove(surfIdx:Int):Void;

	/**		
		Updates a specified region of mesh arrays on the GPU.
		
		Warning: Only use if you know what you are doing. You can easily cause crashes by calling this function with improper arguments.
	**/
	@:native("SurfaceUpdateRegion")
	public function surfaceUpdateRegion(surfIdx:Int, offset:Int, data:HaxeArray<cs.types.UInt8>):Void;

	/**		
		Returns the length in vertices of the vertex array in the requested surface (see `godot.ArrayMesh.addSurfaceFromArrays`).
	**/
	@:native("SurfaceGetArrayLen")
	public function surfaceGetArrayLen(surfIdx:Int):Int;

	/**		
		Returns the length in indices of the index array in the requested surface (see `godot.ArrayMesh.addSurfaceFromArrays`).
	**/
	@:native("SurfaceGetArrayIndexLen")
	public function surfaceGetArrayIndexLen(surfIdx:Int):Int;

	/**		
		Returns the format mask of the requested surface (see `godot.ArrayMesh.addSurfaceFromArrays`).
	**/
	@:native("SurfaceGetFormat")
	public function surfaceGetFormat(surfIdx:Int):UInt;

	/**		
		Returns the primitive type of the requested surface (see `godot.ArrayMesh.addSurfaceFromArrays`).
	**/
	@:native("SurfaceGetPrimitiveType")
	public function surfaceGetPrimitiveType(surfIdx:Int):godot.Mesh_PrimitiveType;

	/**		
		Returns the index of the first surface with this name held within this `godot.ArrayMesh`. If none are found, -1 is returned.
	**/
	@:native("SurfaceFindByName")
	public function surfaceFindByName(name:std.String):Int;

	/**		
		Sets a name for a given surface.
	**/
	@:native("SurfaceSetName")
	public function surfaceSetName(surfIdx:Int, name:std.String):Void;

	/**		
		Gets the name assigned to this surface.
	**/
	@:native("SurfaceGetName")
	public function surfaceGetName(surfIdx:Int):std.String;

	/**		
		Will regenerate normal maps for the `godot.ArrayMesh`.
	**/
	@:native("RegenNormalmaps")
	public function regenNormalmaps():Void;

	/**		
		Will perform a UV unwrap on the `godot.ArrayMesh` to prepare the mesh for lightmapping.
	**/
	@:native("LightmapUnwrap")
	public function lightmapUnwrap(transform:godot.Transform, texelSize:Single):godot.Error;

	@:native("SetCustomAabb")
	public function setCustomAabb(aabb:godot.AABB):Void;

	@:native("GetCustomAabb")
	public function getCustomAabb():godot.AABB;
}
