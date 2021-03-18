// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.NavigationMeshInstance")
@:autoBuild(godot.Godot.buildUserClass())
extern class NavigationMeshInstance extends godot.Spatial {
	@:native("Enabled")
	public var enabled:Bool;

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
