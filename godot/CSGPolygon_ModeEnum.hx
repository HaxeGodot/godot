// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.CSGPolygon.ModeEnum")
@:csNative
extern enum CSGPolygon_ModeEnum {
	/**		
		Shape is extruded to `godot.CSGPolygon.depth`.
	**/
	Depth;

	/**		
		Shape is extruded by rotating it around an axis.
	**/
	Spin;

	/**		
		Shape is extruded along a path set by a `godot.Shape` set in `godot.CSGPolygon.pathNode`.
	**/
	Path;
}
