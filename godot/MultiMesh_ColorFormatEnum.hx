// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.MultiMesh.ColorFormatEnum")
@:csNative
extern enum MultiMesh_ColorFormatEnum {
	/**		
		Use when you are not using per-instance `godot.Color`s.
	**/
	None;

	/**		
		Compress `godot.Color` data into 8 bits when passing to shader. This uses less memory and can be faster, but the `godot.Color` loses precision.
	**/
	Color8bit;

	/**		
		The `godot.Color` passed into `godot.MultiMesh.setInstanceColor` will use 4 floats. Use this for highest precision `godot.Color`.
	**/
	Float;
}
