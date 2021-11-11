// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.NavigationMesh.SamplePartitionType")
@:csNative
extern enum NavigationMesh_SamplePartitionType {
	/**		
		Watershed partitioning. Generally the best choice if you precompute the navigation mesh, use this if you have large open areas.
	**/
	Watershed;

	/**		
		Monotone partitioning. Use this if you want fast navigation mesh generation.
	**/
	Monotone;

	/**		
		Layer partitioning. Good choice to use for tiled navigation mesh with medium and small sized tiles.
	**/
	Layers;

	/**		
		Represents the size of the `godot.NavigationMesh_SamplePartitionType` enum.
	**/
	Max;
}
