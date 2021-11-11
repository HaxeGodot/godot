// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
NavigationMeshInstance is a node that takes a `godot.NavigationMesh` resource and adds it to the current scenario by creating an instance of it.
**/
@:libType
@:csNative
@:native("Godot.NavigationMeshInstance")
@:autoBuild(godot.Godot.buildUserClass())
extern class NavigationMeshInstance extends godot.Spatial {
	/**		
		If `true`, the navigation mesh will be used by `godot.Navigation`.
	**/
	@:native("Enabled")
	public var enabled:Bool;

	/**		
		The `godot.NavigationMesh` resource for the instance.
	**/
	@:native("Navmesh")
	public var navmesh:godot.NavigationMesh;

	@:native("new")
	public function new():Void;

	@:native("SetNavigationMesh")
	public function setNavigationMesh(navmesh:godot.NavigationMesh):Void;

	@:native("GetNavigationMesh")
	public function getNavigationMesh():godot.NavigationMesh;

	@:native("SetEnabled")
	public function setEnabled(enabled:Bool):Void;

	@:native("IsEnabled")
	public function isEnabled():Bool;
}
