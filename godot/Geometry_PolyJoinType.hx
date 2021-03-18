// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.Geometry.PolyJoinType")
@:csNative
extern enum Geometry_PolyJoinType {
	/**		
		Squaring is applied uniformally at all convex edge joins at `1 * delta`.
	**/
	Square;

	/**		
		While flattened paths can never perfectly trace an arc, they are approximated by a series of arc chords.
	**/
	Round;

	/**		
		There's a necessary limit to mitered joins since offsetting edges that join at very acute angles will produce excessively long and narrow "spikes". For any given edge join, when miter offsetting would exceed that maximum distance, "square" joining is applied.
	**/
	Miter;
}
