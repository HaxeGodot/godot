// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Base class for all 3D shape resources. Nodes that inherit from this can be used as shapes for a `godot.PhysicsBody` or `godot.Area` objects.
**/
@:libType
@:csNative
@:native("Godot.Shape")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class Shape extends godot.Resource {
	/**		
		The collision margin for the shape.
	**/
	@:native("Margin")
	public var margin:Single;

	@:native("SetMargin")
	public function setMargin(margin:Single):Void;

	@:native("GetMargin")
	public function getMargin():Single;
}
