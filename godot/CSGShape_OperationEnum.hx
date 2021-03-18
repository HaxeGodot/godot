// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.CSGShape.OperationEnum")
@:csNative
extern enum CSGShape_OperationEnum {
	/**		
		Geometry of both primitives is merged, intersecting geometry is removed.
	**/
	Union;

	/**		
		Only intersecting geometry remains, the rest is removed.
	**/
	Intersection;

	/**		
		The second shape is subtracted from the first, leaving a dent with its shape.
	**/
	Subtraction;
}
