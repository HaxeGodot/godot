// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.Geometry.PolyBooleanOperation")
@:csNative
extern enum Geometry_PolyBooleanOperation {
	/**		
		Create regions where either subject or clip polygons (or both) are filled.
	**/
	Union;

	/**		
		Create regions where subject polygons are filled except where clip polygons are filled.
	**/
	Difference;

	/**		
		Create regions where both subject and clip polygons are filled.
	**/
	Intersection;

	/**		
		Create regions where either subject or clip polygons are filled but not where both are filled.
	**/
	Xor;
}
