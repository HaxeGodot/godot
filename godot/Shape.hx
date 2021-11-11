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
		The collision margin for the shape. Used in Bullet Physics only.
		
		Collision margins allow collision detection to be more efficient by adding an extra shell around shapes. Collision algorithms are more expensive when objects overlap by more than their margin, so a higher value for margins is better for performance, at the cost of accuracy around edges as it makes them less sharp.
	**/
	@:native("Margin")
	public var margin:Single;

	@:native("SetMargin")
	public function setMargin(margin:Single):Void;

	@:native("GetMargin")
	public function getMargin():Single;

	/**		
		Returns the `godot.ArrayMesh` used to draw the debug collision for this `godot.Shape`.
	**/
	@:native("GetDebugMesh")
	public function getDebugMesh():godot.ArrayMesh;
}
