// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.NavigationMesh.ParsedGeometryType")
@:csNative
extern enum NavigationMesh_ParsedGeometryType {
	/**		
		Parses mesh instances as geometry. This includes `godot.MeshInstance`, `godot.CSGShape`, and `godot.GridMap` nodes.
	**/
	MeshInstances;

	/**		
		Parses `godot.StaticBody` colliders as geometry. The collider should be in any of the layers specified by `godot.NavigationMesh.geometry__collisionMask`.
	**/
	StaticColliders;

	/**		
		Both `godot.NavigationMesh_ParsedGeometryType.meshInstances` and `godot.NavigationMesh_ParsedGeometryType.staticColliders`.
	**/
	Both;

	/**		
		Represents the size of the `godot.NavigationMesh_ParsedGeometryType` enum.
	**/
	Max;
}
