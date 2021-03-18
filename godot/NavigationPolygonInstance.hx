// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.NavigationPolygonInstance")
@:autoBuild(godot.Godot.buildUserClass())
extern class NavigationPolygonInstance extends godot.Node2D {
	@:native("Enabled")
	public var enabled:Bool;

	@:native("Navpoly")
	public var navpoly:godot.NavigationPolygon;

	@:native("new")
	public function new():Void;

	@:native("SetNavigationPolygon")
	public function setNavigationPolygon(navpoly:godot.NavigationPolygon):Void;

	@:native("GetNavigationPolygon")
	public function getNavigationPolygon():godot.NavigationPolygon;

	@:native("SetEnabled")
	public function setEnabled(enabled:Bool):Void;

	@:native("IsEnabled")
	public function isEnabled():Bool;
}
