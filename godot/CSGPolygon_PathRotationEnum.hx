// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.CSGPolygon.PathRotationEnum")
@:csNative
extern enum CSGPolygon_PathRotationEnum {
	/**		
		The `godot.CSGPolygon.polygon` shape is not rotated.
		
		Note: Requires the path's Z coordinates to continually decrease to ensure viable shapes.
	**/
	Polygon;

	/**		
		The `godot.CSGPolygon.polygon` shape is rotated along the path, but it is not rotated around the path axis.
		
		Note: Requires the path's Z coordinates to continually decrease to ensure viable shapes.
	**/
	Path;

	/**		
		The `godot.CSGPolygon.polygon` shape follows the path and its rotations around the path axis.
	**/
	PathFollow;
}
