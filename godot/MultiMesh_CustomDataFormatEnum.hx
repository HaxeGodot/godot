// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.MultiMesh.CustomDataFormatEnum")
@:csNative
extern enum MultiMesh_CustomDataFormatEnum {
	/**		
		Use when you are not using per-instance custom data.
	**/
	None;

	/**		
		Compress custom_data into 8 bits when passing to shader. This uses less memory and can be faster, but loses precision and range. Floats packed into 8 bits can only represent values between 0 and 1, numbers outside that range will be clamped.
	**/
	Data8bit;

	/**		
		The `godot.Color` passed into `godot.MultiMesh.setInstanceCustomData` will use 4 floats. Use this for highest precision.
	**/
	Float;
}
