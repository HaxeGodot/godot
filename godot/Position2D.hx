// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Generic 2D position hint for editing. It's just like a plain `godot.Node2D`, but it displays as a cross in the 2D editor at all times. You can set cross' visual size by using the gizmo in the 2D editor while the node is selected.
**/
@:libType
@:csNative
@:native("Godot.Position2D")
@:autoBuild(godot.Godot.buildUserClass())
extern class Position2D extends godot.Node2D {
	@:native("GizmoExtents")
	public var gizmoExtents:Single;

	@:native("new")
	public function new():Void;
}
