// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
The `godot.SurfaceTool` is used to construct a `godot.Mesh` by specifying vertex attributes individually. It can be used to construct a `godot.Mesh` from a script. All properties except indices need to be added before calling `godot.SurfaceTool.addVertex`. For example, to add vertex colors and UVs:

```

var st = SurfaceTool.new()
st.begin(Mesh.PRIMITIVE_TRIANGLES)
st.add_color(Color(1, 0, 0))
st.add_uv(Vector2(0, 0))
st.add_vertex(Vector3(0, 0, 0))

```

The above `godot.SurfaceTool` now contains one vertex of a triangle which has a UV coordinate and a specified `godot.Color`. If another vertex were added without calling `godot.SurfaceTool.addUv` or `godot.SurfaceTool.addColor`, then the last values would be used.

Vertex attributes must be passed before calling `godot.SurfaceTool.addVertex`. Failure to do so will result in an error when committing the vertex information to a mesh.

Additionally, the attributes used before the first vertex is added determine the format of the mesh. For example, if you only add UVs to the first vertex, you cannot add color to any of the subsequent vertices.

See also `godot.ArrayMesh`, `godot.ImmediateGeometry` and `godot.MeshDataTool` for procedural geometry generation.

Note: Godot uses clockwise [https://learnopengl.com/Advanced-OpenGL/Face-culling](winding order) for front faces of triangle primitive modes.
**/
@:libType
@:csNative
@:native("Godot.SurfaceTool")
@:autoBuild(godot.Godot.buildUserClass())
extern class SurfaceTool extends godot.Reference {
	@:native("new")
	public function new():Void;

	/**		
		Called before adding any vertices. Takes the primitive type as an argument (e.g. `godot.Mesh_PrimitiveType.triangles`).
	**/
	@:native("Begin")
	public function begin(primitive:godot.Mesh_PrimitiveType):Void;

	/**		
		Specifies the position of current vertex. Should be called after specifying other vertex properties (e.g. Color, UV).
	**/
	@:native("AddVertex")
	public function addVertex(vertex:godot.Vector3):Void;

	/**		
		Specifies a `godot.Color` to use for the next vertex. If every vertex needs to have this information set and you fail to submit it for the first vertex, this information may not be used at all.
		
		Note: The material must have `godot.SpatialMaterial.vertexColorUseAsAlbedo` enabled for the vertex color to be visible.
	**/
	@:native("AddColor")
	public function addColor(color:godot.Color):Void;

	/**		
		Specifies a normal to use for the next vertex. If every vertex needs to have this information set and you fail to submit it for the first vertex, this information may not be used at all.
	**/
	@:native("AddNormal")
	public function addNormal(normal:godot.Vector3):Void;

	/**		
		Specifies a tangent to use for the next vertex. If every vertex needs to have this information set and you fail to submit it for the first vertex, this information may not be used at all.
	**/
	@:native("AddTangent")
	public function addTangent(tangent:godot.Plane):Void;

	/**		
		Specifies a set of UV coordinates to use for the next vertex. If every vertex needs to have this information set and you fail to submit it for the first vertex, this information may not be used at all.
	**/
	@:native("AddUv")
	public function addUv(uv:godot.Vector2):Void;

	/**		
		Specifies an optional second set of UV coordinates to use for the next vertex. If every vertex needs to have this information set and you fail to submit it for the first vertex, this information may not be used at all.
	**/
	@:native("AddUv2")
	public function addUv2(uv2:godot.Vector2):Void;

	/**		
		Specifies an array of bones to use for the next vertex. `bones` must contain 4 integers.
	**/
	@:native("AddBones")
	public function addBones(bones:HaxeArray<Int>):Void;

	/**		
		Specifies weight values to use for the next vertex. `weights` must contain 4 values. If every vertex needs to have this information set and you fail to submit it for the first vertex, this information may not be used at all.
	**/
	@:native("AddWeights")
	public function addWeights(weights:HaxeArray<Single>):Void;

	/**		
		Specifies whether the current vertex (if using only vertex arrays) or current index (if also using index arrays) should use smooth normals for normal calculation.
	**/
	@:native("AddSmoothGroup")
	public function addSmoothGroup(smooth:Bool):Void;

	#if doc_gen
	/**		
		Inserts a triangle fan made of array data into `godot.Mesh` being constructed.
		
		Requires the primitive type be set to `godot.Mesh_PrimitiveType.triangles`.
		
		@param uvs If the parameter is null, then the default value is Array.Empty&lt;Vector2&gt;()
		@param colors If the parameter is null, then the default value is Array.Empty&lt;Color&gt;()
		@param uv2s If the parameter is null, then the default value is Array.Empty&lt;Vector2&gt;()
		@param normals If the parameter is null, then the default value is Array.Empty&lt;Vector3&gt;()
		@param tangents If the parameter is null, then the default value is new Godot.Collections.Array { }
	**/
	@:native("AddTriangleFan")
	public function addTriangleFan(vertices:std.Array<godot.Vector3>, ?uvs:std.Array<godot.Vector2>, ?colors:std.Array<godot.Color>, ?uv2s:std.Array<godot.Vector2>, ?normals:std.Array<godot.Vector3>, ?tangents:godot.collections.Array):Void;
	#else
	/**		
		Inserts a triangle fan made of array data into `godot.Mesh` being constructed.
		
		Requires the primitive type be set to `godot.Mesh_PrimitiveType.triangles`.
		
		@param uvs If the parameter is null, then the default value is Array.Empty&lt;Vector2&gt;()
		@param colors If the parameter is null, then the default value is Array.Empty&lt;Color&gt;()
		@param uv2s If the parameter is null, then the default value is Array.Empty&lt;Vector2&gt;()
		@param normals If the parameter is null, then the default value is Array.Empty&lt;Vector3&gt;()
		@param tangents If the parameter is null, then the default value is new Godot.Collections.Array { }
	**/
	@:native("AddTriangleFan")
	public overload function addTriangleFan(vertices:HaxeArray<godot.Vector3>):Void;

	/**		
		Inserts a triangle fan made of array data into `godot.Mesh` being constructed.
		
		Requires the primitive type be set to `godot.Mesh_PrimitiveType.triangles`.
		
		@param uvs If the parameter is null, then the default value is Array.Empty&lt;Vector2&gt;()
		@param colors If the parameter is null, then the default value is Array.Empty&lt;Color&gt;()
		@param uv2s If the parameter is null, then the default value is Array.Empty&lt;Vector2&gt;()
		@param normals If the parameter is null, then the default value is Array.Empty&lt;Vector3&gt;()
		@param tangents If the parameter is null, then the default value is new Godot.Collections.Array { }
	**/
	@:native("AddTriangleFan")
	public overload function addTriangleFan(vertices:HaxeArray<godot.Vector3>, uvs:HaxeArray<godot.Vector2>):Void;

	/**		
		Inserts a triangle fan made of array data into `godot.Mesh` being constructed.
		
		Requires the primitive type be set to `godot.Mesh_PrimitiveType.triangles`.
		
		@param uvs If the parameter is null, then the default value is Array.Empty&lt;Vector2&gt;()
		@param colors If the parameter is null, then the default value is Array.Empty&lt;Color&gt;()
		@param uv2s If the parameter is null, then the default value is Array.Empty&lt;Vector2&gt;()
		@param normals If the parameter is null, then the default value is Array.Empty&lt;Vector3&gt;()
		@param tangents If the parameter is null, then the default value is new Godot.Collections.Array { }
	**/
	@:native("AddTriangleFan")
	public overload function addTriangleFan(vertices:HaxeArray<godot.Vector3>, uvs:HaxeArray<godot.Vector2>, colors:HaxeArray<godot.Color>):Void;

	/**		
		Inserts a triangle fan made of array data into `godot.Mesh` being constructed.
		
		Requires the primitive type be set to `godot.Mesh_PrimitiveType.triangles`.
		
		@param uvs If the parameter is null, then the default value is Array.Empty&lt;Vector2&gt;()
		@param colors If the parameter is null, then the default value is Array.Empty&lt;Color&gt;()
		@param uv2s If the parameter is null, then the default value is Array.Empty&lt;Vector2&gt;()
		@param normals If the parameter is null, then the default value is Array.Empty&lt;Vector3&gt;()
		@param tangents If the parameter is null, then the default value is new Godot.Collections.Array { }
	**/
	@:native("AddTriangleFan")
	public overload function addTriangleFan(vertices:HaxeArray<godot.Vector3>, uvs:HaxeArray<godot.Vector2>, colors:HaxeArray<godot.Color>, uv2s:HaxeArray<godot.Vector2>):Void;

	/**		
		Inserts a triangle fan made of array data into `godot.Mesh` being constructed.
		
		Requires the primitive type be set to `godot.Mesh_PrimitiveType.triangles`.
		
		@param uvs If the parameter is null, then the default value is Array.Empty&lt;Vector2&gt;()
		@param colors If the parameter is null, then the default value is Array.Empty&lt;Color&gt;()
		@param uv2s If the parameter is null, then the default value is Array.Empty&lt;Vector2&gt;()
		@param normals If the parameter is null, then the default value is Array.Empty&lt;Vector3&gt;()
		@param tangents If the parameter is null, then the default value is new Godot.Collections.Array { }
	**/
	@:native("AddTriangleFan")
	public overload function addTriangleFan(vertices:HaxeArray<godot.Vector3>, uvs:HaxeArray<godot.Vector2>, colors:HaxeArray<godot.Color>, uv2s:HaxeArray<godot.Vector2>, normals:HaxeArray<godot.Vector3>):Void;

	/**		
		Inserts a triangle fan made of array data into `godot.Mesh` being constructed.
		
		Requires the primitive type be set to `godot.Mesh_PrimitiveType.triangles`.
		
		@param uvs If the parameter is null, then the default value is Array.Empty&lt;Vector2&gt;()
		@param colors If the parameter is null, then the default value is Array.Empty&lt;Color&gt;()
		@param uv2s If the parameter is null, then the default value is Array.Empty&lt;Vector2&gt;()
		@param normals If the parameter is null, then the default value is Array.Empty&lt;Vector3&gt;()
		@param tangents If the parameter is null, then the default value is new Godot.Collections.Array { }
	**/
	@:native("AddTriangleFan")
	public overload function addTriangleFan(vertices:HaxeArray<godot.Vector3>, uvs:HaxeArray<godot.Vector2>, colors:HaxeArray<godot.Color>, uv2s:HaxeArray<godot.Vector2>, normals:HaxeArray<godot.Vector3>, tangents:godot.collections.Array):Void;
	#end

	/**		
		Adds an index to index array if you are using indexed vertices. Does not need to be called before adding vertices.
	**/
	@:native("AddIndex")
	public function addIndex(index:Int):Void;

	/**		
		Shrinks the vertex array by creating an index array. This can improve performance by avoiding vertex reuse.
	**/
	@:native("Index")
	public function index():Void;

	/**		
		Removes the index array by expanding the vertex array.
	**/
	@:native("Deindex")
	public function deindex():Void;

	#if doc_gen
	/**		
		Generates normals from vertices so you do not have to do it manually. If `flip` is `true`, the resulting normals will be inverted. `godot.SurfaceTool.generateNormals` should be called after generating geometry and before committing the mesh using `godot.SurfaceTool.commit` or `godot.SurfaceTool.commitToArrays`. For correct display of normal-mapped surfaces, you will also have to generate tangents using `godot.SurfaceTool.generateTangents`.
		
		Note: `godot.SurfaceTool.generateNormals` only works if the primitive type to be set to `godot.Mesh_PrimitiveType.triangles`.
	**/
	@:native("GenerateNormals")
	public function generateNormals(?flip:Bool):Void;
	#else
	/**		
		Generates normals from vertices so you do not have to do it manually. If `flip` is `true`, the resulting normals will be inverted. `godot.SurfaceTool.generateNormals` should be called after generating geometry and before committing the mesh using `godot.SurfaceTool.commit` or `godot.SurfaceTool.commitToArrays`. For correct display of normal-mapped surfaces, you will also have to generate tangents using `godot.SurfaceTool.generateTangents`.
		
		Note: `godot.SurfaceTool.generateNormals` only works if the primitive type to be set to `godot.Mesh_PrimitiveType.triangles`.
	**/
	@:native("GenerateNormals")
	public overload function generateNormals():Void;

	/**		
		Generates normals from vertices so you do not have to do it manually. If `flip` is `true`, the resulting normals will be inverted. `godot.SurfaceTool.generateNormals` should be called after generating geometry and before committing the mesh using `godot.SurfaceTool.commit` or `godot.SurfaceTool.commitToArrays`. For correct display of normal-mapped surfaces, you will also have to generate tangents using `godot.SurfaceTool.generateTangents`.
		
		Note: `godot.SurfaceTool.generateNormals` only works if the primitive type to be set to `godot.Mesh_PrimitiveType.triangles`.
	**/
	@:native("GenerateNormals")
	public overload function generateNormals(flip:Bool):Void;
	#end

	/**		
		Generates a tangent vector for each vertex. Requires that each vertex have UVs and normals set already (see `godot.SurfaceTool.generateNormals`).
	**/
	@:native("GenerateTangents")
	public function generateTangents():Void;

	/**		
		Sets `godot.Material` to be used by the `godot.Mesh` you are constructing.
	**/
	@:native("SetMaterial")
	public function setMaterial(material:godot.Material):Void;

	/**		
		Clear all information passed into the surface tool so far.
	**/
	@:native("Clear")
	public function clear():Void;

	/**		
		Creates a vertex array from an existing `godot.Mesh`.
	**/
	@:native("CreateFrom")
	public function createFrom(existing:godot.Mesh, surface:Int):Void;

	/**		
		Creates a vertex array from the specified blend shape of an existing `godot.Mesh`. This can be used to extract a specific pose from a blend shape.
	**/
	@:native("CreateFromBlendShape")
	public function createFromBlendShape(existing:godot.Mesh, surface:Int, blendShape:std.String):Void;

	/**		
		Append vertices from a given `godot.Mesh` surface onto the current vertex array with specified `godot.Transform`.
	**/
	@:native("AppendFrom")
	public function appendFrom(existing:godot.Mesh, surface:Int, transform:godot.Transform):Void;

	#if doc_gen
	/**		
		Returns a constructed `godot.ArrayMesh` from current information passed in. If an existing `godot.ArrayMesh` is passed in as an argument, will add an extra surface to the existing `godot.ArrayMesh`.
		
		Default flag is `godot.Mesh_ArrayFormat.compressDefault` if compression is enabled. If compression is disabled the default flag is `godot.Mesh_ArrayFormat.flagUseOctahedralCompression`. See `ARRAY_COMPRESS_*` constants in `godot.Mesh_ArrayFormat` for other flags.
	**/
	@:native("Commit")
	public function commit(?existing:godot.ArrayMesh, ?flags:UInt):godot.ArrayMesh;
	#else
	/**		
		Returns a constructed `godot.ArrayMesh` from current information passed in. If an existing `godot.ArrayMesh` is passed in as an argument, will add an extra surface to the existing `godot.ArrayMesh`.
		
		Default flag is `godot.Mesh_ArrayFormat.compressDefault` if compression is enabled. If compression is disabled the default flag is `godot.Mesh_ArrayFormat.flagUseOctahedralCompression`. See `ARRAY_COMPRESS_*` constants in `godot.Mesh_ArrayFormat` for other flags.
	**/
	@:native("Commit")
	public overload function commit():godot.ArrayMesh;

	/**		
		Returns a constructed `godot.ArrayMesh` from current information passed in. If an existing `godot.ArrayMesh` is passed in as an argument, will add an extra surface to the existing `godot.ArrayMesh`.
		
		Default flag is `godot.Mesh_ArrayFormat.compressDefault` if compression is enabled. If compression is disabled the default flag is `godot.Mesh_ArrayFormat.flagUseOctahedralCompression`. See `ARRAY_COMPRESS_*` constants in `godot.Mesh_ArrayFormat` for other flags.
	**/
	@:native("Commit")
	public overload function commit(existing:godot.ArrayMesh):godot.ArrayMesh;

	/**		
		Returns a constructed `godot.ArrayMesh` from current information passed in. If an existing `godot.ArrayMesh` is passed in as an argument, will add an extra surface to the existing `godot.ArrayMesh`.
		
		Default flag is `godot.Mesh_ArrayFormat.compressDefault` if compression is enabled. If compression is disabled the default flag is `godot.Mesh_ArrayFormat.flagUseOctahedralCompression`. See `ARRAY_COMPRESS_*` constants in `godot.Mesh_ArrayFormat` for other flags.
	**/
	@:native("Commit")
	public overload function commit(existing:godot.ArrayMesh, flags:UInt):godot.ArrayMesh;
	#end

	/**		
		Commits the data to the same format used by `godot.ArrayMesh.addSurfaceFromArrays`. This way you can further process the mesh data using the `godot.ArrayMesh` API.
	**/
	@:native("CommitToArrays")
	public function commitToArrays():godot.collections.Array;
}
