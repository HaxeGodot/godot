// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.NavigationMesh.SourceGeometryMode")
@:csNative
extern enum NavigationMesh_SourceGeometryMode {
	/**		
		Scans the child nodes of `godot.NavigationMeshInstance` recursively for geometry.
	**/
	NavmeshChildren;

	/**		
		Scans nodes in a group and their child nodes recursively for geometry. The group is specified by `godot.NavigationMesh.geometry__sourceGroupName`.
	**/
	GroupsWithChildren;

	/**		
		Uses nodes in a group for geometry. The group is specified by `godot.NavigationMesh.geometry__sourceGroupName`.
	**/
	GroupsExplicit;

	/**		
		Represents the size of the `godot.NavigationMesh_SourceGeometryMode` enum.
	**/
	Max;
}
