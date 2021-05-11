// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Mesh is a type of `godot.Resource` that contains vertex array-based geometry, divided in surfaces. Each surface contains a completely separate array and a material used to draw it. Design wise, a mesh with multiple surfaces is preferred to a single surface, because objects created in 3D editing software commonly contain multiple materials.
**/
@:libType
@:csNative
@:native("Godot.Mesh")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class Mesh extends godot.Resource {
	/**		
		Sets a hint to be used for lightmap resolution in `godot.BakedLightmap`. Overrides `godot.BakedLightmap.defaultTexelsPerUnit`.
	**/
	@:native("LightmapSizeHint")
	public var lightmapSizeHint:godot.Vector2;

	@:native("SetLightmapSizeHint")
	public function setLightmapSizeHint(size:godot.Vector2):Void;

	@:native("GetLightmapSizeHint")
	public function getLightmapSizeHint():godot.Vector2;

	/**		
		Returns the smallest `godot.AABB` enclosing this mesh in local space. Not affected by `custom_aabb`. See also `godot.VisualInstance.getTransformedAabb`.
		
		Note: This is only implemented for `godot.ArrayMesh` and `godot.PrimitiveMesh`.
	**/
	@:native("GetAabb")
	public function getAabb():godot.AABB;

	/**		
		Returns the amount of surfaces that the `godot.Mesh` holds.
	**/
	@:native("GetSurfaceCount")
	public function getSurfaceCount():Int;

	/**		
		Returns the arrays for the vertices, normals, uvs, etc. that make up the requested surface (see `godot.ArrayMesh.addSurfaceFromArrays`).
	**/
	@:native("SurfaceGetArrays")
	public function surfaceGetArrays(surfIdx:Int):godot.collections.Array;

	/**		
		Returns the blend shape arrays for the requested surface.
	**/
	@:native("SurfaceGetBlendShapeArrays")
	public function surfaceGetBlendShapeArrays(surfIdx:Int):godot.collections.Array;

	/**		
		Sets a `godot.Material` for a given surface. Surface will be rendered using this material.
	**/
	@:native("SurfaceSetMaterial")
	public function surfaceSetMaterial(surfIdx:Int, material:godot.Material):Void;

	/**		
		Returns a `godot.Material` in a given surface. Surface is rendered using this material.
	**/
	@:native("SurfaceGetMaterial")
	public function surfaceGetMaterial(surfIdx:Int):godot.Material;

	/**		
		Calculate a `godot.ConcavePolygonShape` from the mesh.
	**/
	@:native("CreateTrimeshShape")
	public function createTrimeshShape():godot.Shape;

	/**		
		Calculate a `godot.ConvexPolygonShape` from the mesh.
	**/
	@:native("CreateConvexShape")
	public function createConvexShape():godot.Shape;

	/**		
		Calculate an outline mesh at a defined offset (margin) from the original mesh.
		
		Note: This method typically returns the vertices in reverse order (e.g. clockwise to counterclockwise).
	**/
	@:native("CreateOutline")
	public function createOutline(margin:Single):godot.Mesh;

	/**		
		Returns all the vertices that make up the faces of the mesh. Each three vertices represent one triangle.
	**/
	public extern inline function getFaces():std.Array<godot.Vector3> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetFaces()", this));
	}

	/**		
		Generate a `godot.TriangleMesh` from the mesh.
	**/
	@:native("GenerateTriangleMesh")
	public function generateTriangleMesh():godot.TriangleMesh;
}
