// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.Tween.EaseType")
@:csNative
extern enum Tween_EaseType {
	/**		
		The interpolation starts slowly and speeds up towards the end.
	**/
	In;

	/**		
		The interpolation starts quickly and slows down towards the end.
	**/
	Out;

	/**		
		A combination of  and . The interpolation is slowest at both ends.
	**/
	InOut;

	/**		
		A combination of  and . The interpolation is fastest at both ends.
	**/
	OutIn;
}
