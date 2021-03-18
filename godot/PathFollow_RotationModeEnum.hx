// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.PathFollow.RotationModeEnum")
@:csNative
extern enum PathFollow_RotationModeEnum {
	/**		
		Forbids the PathFollow to rotate.
	**/
	None;

	/**		
		Allows the PathFollow to rotate in the Y axis only.
	**/
	Y;

	/**		
		Allows the PathFollow to rotate in both the X, and Y axes.
	**/
	Xy;

	/**		
		Allows the PathFollow to rotate in any axis.
	**/
	Xyz;

	/**		
		Uses the up vector information in a `godot.Curve3D` to enforce orientation. This rotation mode requires the `godot.Path`'s `godot.Curve3D.upVectorEnabled` property to be set to `true`.
	**/
	Oriented;
}
