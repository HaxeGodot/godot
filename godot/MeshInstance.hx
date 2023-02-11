// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
MeshInstance is a node that takes a `godot.Mesh` resource and adds it to the current scenario by creating an instance of it. This is the class most often used to get 3D geometry rendered and can be used to instance a single `godot.Mesh` in many places. This allows reusing geometry, which can save on resources. When a `godot.Mesh` has to be instanced more than thousands of times at close proximity, consider using a `godot.MultiMesh` in a `godot.MultiMeshInstance` instead.
**/
@:libType
@:csNative
@:native("Godot.MeshInstance")
@:autoBuild(godot.Godot.buildUserClass())
extern class MeshInstance extends godot.GeometryInstance {
	/**		
		If `true`, normals are transformed when software skinning is used. Set to `false` when normals are not needed for better performance.
		
		See  for details about how software skinning is enabled.
	**/
	@:native("SoftwareSkinningTransformNormals")
	public var softwareSkinningTransformNormals:Bool;

	/**		
		`godot.NodePath` to the `godot.Skeleton` associated with the instance.
	**/
	@:native("Skeleton")
	public var skeleton:godot.NodePath;

	/**		
		Sets the skin to be used by this instance.
	**/
	@:native("Skin")
	public var skin:godot.Skin;

	/**		
		The `godot.Mesh` resource for the instance.
	**/
	@:native("Mesh")
	public var mesh:godot.Mesh;

	@:native("new")
	public function new():Void;

	@:native("SetMesh")
	public function setMesh(mesh:godot.Mesh):Void;

	@:native("GetMesh")
	public function getMesh():godot.Mesh;

	@:native("SetSkeletonPath")
	public function setSkeletonPath(skeletonPath:godot.NodePath):Void;

	@:native("GetSkeletonPath")
	public function getSkeletonPath():godot.NodePath;

	@:native("SetSkin")
	public function setSkin(skin:godot.Skin):Void;

	@:native("GetSkin")
	public function getSkin():godot.Skin;

	/**		
		Returns the number of surface override materials.
	**/
	@:native("GetSurfaceMaterialCount")
	public function getSurfaceMaterialCount():Int;

	/**		
		Sets the override `godot.Material` for the specified surface of the `godot.Mesh` resource. This material is associated with this `godot.MeshInstance` rather than with the `godot.Mesh` resource.
	**/
	@:native("SetSurfaceMaterial")
	public function setSurfaceMaterial(surface:Int, material:godot.Material):Void;

	/**		
		Returns the override `godot.Material` for a surface of the `godot.Mesh` resource.
		
		Note: This function only returns override materials associated with this `godot.MeshInstance`. Consider using `godot.MeshInstance.getActiveMaterial` or `godot.Mesh.surfaceGetMaterial` to get materials associated with the `godot.Mesh` resource.
	**/
	@:native("GetSurfaceMaterial")
	public function getSurfaceMaterial(surface:Int):godot.Material;

	/**		
		Returns the `godot.Material` that will be used by the `godot.Mesh` when drawing. This can return the `godot.GeometryInstance.materialOverride`, the surface override `godot.Material` defined in this `godot.MeshInstance`, or the surface `godot.Material` defined in the `godot.Mesh`. For example, if `godot.GeometryInstance.materialOverride` is used, all surfaces will return the override material.
	**/
	@:native("GetActiveMaterial")
	public function getActiveMaterial(surface:Int):godot.Material;

	@:native("SetSoftwareSkinningTransformNormals")
	public function setSoftwareSkinningTransformNormals(enabled:Bool):Void;

	@:native("IsSoftwareSkinningTransformNormalsEnabled")
	public function isSoftwareSkinningTransformNormalsEnabled():Bool;

	/**		
		This helper creates a `godot.StaticBody` child node with a `godot.ConcavePolygonShape` collision shape calculated from the mesh geometry. It's mainly used for testing.
	**/
	@:native("CreateTrimeshCollision")
	public function createTrimeshCollision():Void;

	/**		
		This helper creates a `godot.StaticBody` child node with multiple `godot.ConvexPolygonShape` collision shapes calculated from the mesh geometry via convex decomposition. It's mainly used for testing.
	**/
	@:native("CreateMultipleConvexCollisions")
	public function createMultipleConvexCollisions():Void;

	#if doc_gen
	/**		
		This helper creates a `godot.StaticBody` child node with a `godot.ConvexPolygonShape` collision shape calculated from the mesh geometry. It's mainly used for testing.
		
		If `clean` is `true` (default), duplicate and interior vertices are removed automatically. You can set it to `false` to make the process faster if not needed.
		
		If `simplify` is `true`, the geometry can be further simplified to reduce the amount of vertices. Disabled by default.
	**/
	@:native("CreateConvexCollision")
	public function createConvexCollision(?clean:Bool, ?simplify:Bool):Void;
	#else
	/**		
		This helper creates a `godot.StaticBody` child node with a `godot.ConvexPolygonShape` collision shape calculated from the mesh geometry. It's mainly used for testing.
		
		If `clean` is `true` (default), duplicate and interior vertices are removed automatically. You can set it to `false` to make the process faster if not needed.
		
		If `simplify` is `true`, the geometry can be further simplified to reduce the amount of vertices. Disabled by default.
	**/
	@:native("CreateConvexCollision")
	public overload function createConvexCollision():Void;

	/**		
		This helper creates a `godot.StaticBody` child node with a `godot.ConvexPolygonShape` collision shape calculated from the mesh geometry. It's mainly used for testing.
		
		If `clean` is `true` (default), duplicate and interior vertices are removed automatically. You can set it to `false` to make the process faster if not needed.
		
		If `simplify` is `true`, the geometry can be further simplified to reduce the amount of vertices. Disabled by default.
	**/
	@:native("CreateConvexCollision")
	public overload function createConvexCollision(clean:Bool):Void;

	/**		
		This helper creates a `godot.StaticBody` child node with a `godot.ConvexPolygonShape` collision shape calculated from the mesh geometry. It's mainly used for testing.
		
		If `clean` is `true` (default), duplicate and interior vertices are removed automatically. You can set it to `false` to make the process faster if not needed.
		
		If `simplify` is `true`, the geometry can be further simplified to reduce the amount of vertices. Disabled by default.
	**/
	@:native("CreateConvexCollision")
	public overload function createConvexCollision(clean:Bool, simplify:Bool):Void;
	#end

	/**		
		This helper creates a `godot.MeshInstance` child node with gizmos at every vertex calculated from the mesh geometry. It's mainly used for testing.
	**/
	@:native("CreateDebugTangents")
	public function createDebugTangents():Void;
}
