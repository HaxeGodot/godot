// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.CSGPolygon.PathIntervalTypeEnum")
@:csNative
extern enum CSGPolygon_PathIntervalTypeEnum {
	/**		
		When `godot.CSGPolygon.mode` is set to `godot.CSGPolygon_ModeEnum.path`, `godot.CSGPolygon.pathInterval` will determine the distance, in meters, each interval of the path will extrude.
	**/
	Distance;

	/**		
		When `godot.CSGPolygon.mode` is set to `godot.CSGPolygon_ModeEnum.path`, `godot.CSGPolygon.pathInterval` will subdivide the polygons along the path.
	**/
	Subdivide;
}
