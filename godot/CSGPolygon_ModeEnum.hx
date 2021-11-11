// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.CSGPolygon.ModeEnum")
@:csNative
extern enum CSGPolygon_ModeEnum {
	/**		
		The `godot.CSGPolygon.polygon` shape is extruded along the negative Z axis.
	**/
	Depth;

	/**		
		The `godot.CSGPolygon.polygon` shape is extruded by rotating it around the Y axis.
	**/
	Spin;

	/**		
		The `godot.CSGPolygon.polygon` shape is extruded along the `godot.Path` specified in `godot.CSGPolygon.pathNode`.
	**/
	Path;
}
