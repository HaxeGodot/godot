// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
`godot.MultiMeshInstance` is a specialized node to instance `godot.GeometryInstance`s based on a `godot.MultiMesh` resource.

This is useful to optimize the rendering of a high amount of instances of a given mesh (for example trees in a forest or grass strands).
**/
@:libType
@:csNative
@:native("Godot.MultiMeshInstance")
@:autoBuild(godot.Godot.buildUserClass())
extern class MultiMeshInstance extends godot.GeometryInstance {
	/**		
		The `godot.MultiMesh` resource that will be used and shared among all instances of the `godot.MultiMeshInstance`.
	**/
	@:native("Multimesh")
	public var multimesh:godot.MultiMesh;

	@:native("new")
	public function new():Void;

	@:native("SetMultimesh")
	public function setMultimesh(multimesh:godot.MultiMesh):Void;

	@:native("GetMultimesh")
	public function getMultimesh():godot.MultiMesh;
}
