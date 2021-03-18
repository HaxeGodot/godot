// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.Geometry.PolyEndType")
@:csNative
extern enum Geometry_PolyEndType {
	/**		
		Endpoints are joined using the `godot.Geometry_PolyJoinType` value and the path filled as a polygon.
	**/
	Polygon;

	/**		
		Endpoints are joined using the `godot.Geometry_PolyJoinType` value and the path filled as a polyline.
	**/
	Joined;

	/**		
		Endpoints are squared off with no extension.
	**/
	Butt;

	/**		
		Endpoints are squared off and extended by `delta` units.
	**/
	Square;

	/**		
		Endpoints are rounded off and extended by `delta` units.
	**/
	Round;
}
